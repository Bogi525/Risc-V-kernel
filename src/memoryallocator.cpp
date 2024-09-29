#include "../h/memoryallocator.hpp"

void* MemoryAllocator::mem_alloc(size_t sz) {
    static bool firstUse = true;
    size_t blkCount = sz + ( sizeof(FreeMem) + 63 ) / MEM_BLOCK_SIZE; // ukupna memorija potrebna za alokaciju ukljucuje i zaglavlje

    // ukoliko se prvi put ulazi u ovu funkciju, inicijalizuje se freeMemHead sa pocetnim vrednostima
    if (firstUse) {
        freeMemHead = (FreeMem*) HEAP_START_ADDR;
        freeMemHead->next = nullptr;
        freeMemHead->prev = nullptr;
        freeMemHead->size = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - (size_t)sizeof(FreeMem))/MEM_BLOCK_SIZE;
        firstUse = false;
    }

    // traganje za prvi dovoljan prostor za alokaciju (first-fit)
    FreeMem* curr = freeMemHead, * prev = nullptr, * next = nullptr;
    void* returnValue = nullptr;
    while (curr != nullptr && curr->size < blkCount) {
        curr = curr->next;
    }

    if (curr == nullptr) return nullptr;
    returnValue = curr;

    prev = curr->prev;
    next = curr->next;

    // slucaj da se ceo blok koristi za alociranje podatka
    if (curr->size == blkCount) {
        if (prev == nullptr) freeMemHead = curr->next;
        else prev->next = curr->next;
        if (next != nullptr) next->prev = prev;
    }

    // slucaj da je ceo blok veci od potrebnog za alokaciju
    if (curr->size > blkCount) {
        size_t tmp = curr->size;
        curr->size = blkCount;
        curr = curr + (blkCount * MEM_BLOCK_SIZE);
        curr->prev = prev;
        curr->next = next;
        curr->size = tmp - blkCount;
        if (prev == nullptr) freeMemHead = curr;
        else {
            prev->next = curr;
            curr->prev = prev;
        }
        if (next == nullptr) curr->next = nullptr;
        else {
            curr->next = next;
            next->prev = curr;
        }
    }
    return (void*)((uint64)returnValue + (uint64)sizeof(FreeMem));
}

int MemoryAllocator::mem_free(void *ptr) {
    if (ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1;
    FreeMem* prev = nullptr;
    FreeMem* next = freeMemHead;
    FreeMem* curr = (FreeMem*) ((uint64)ptr - sizeof(FreeMem));

    // ukoliko je ceo HEAP popunjen oslobodi memoriju i koriguj freeMemHead
    if (freeMemHead == nullptr) {
        curr->next = nullptr;
        curr->prev = nullptr;
        freeMemHead = curr;
        return 0;
    }

    // potraga za poslednjim prethodnim segmentom od date adrese (ptr)
    while (next != nullptr && next < ptr) {
        prev = next;
        next = next->next;
    }

    // korigovanje vrednosti pokazivaca u listi
    if (prev) prev->next = curr;
    else freeMemHead = curr;

    if (next) next->prev = curr;
    curr->next = next;

    // spajanje slobodne memorije ukoliko je to moguce
    if (curr != nullptr) {
        if ((uint64)curr + curr->size * MEM_BLOCK_SIZE == (uint64)next){
            curr->size = curr->size + next->size;
            curr->next = next->next;
            if (next->next) next->next->prev = curr;
        }
    }

    if (prev != nullptr) {
        if ((uint64)prev + prev->size * MEM_BLOCK_SIZE == (uint64)curr) {
            prev->size = prev->size + curr->size;
            prev->next = curr->next;
            if (curr->next) curr->next->prev = prev;
        }
    }

    return 0;

}