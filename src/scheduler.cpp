#include "../h/scheduler.hpp"



TCB* Scheduler::get() {

    //__putc('g');
    if (!head) return nullptr;

    TCB* tcb = head->tcb;
    Node* node = head;
    head = head->next;
    if (head == nullptr) tail = nullptr;

    MemoryAllocator::get().mem_free(node);
    return tcb;
}

void Scheduler::put(TCB* ptr) {
    //__putc('p');
    Node* newNode = (Node*) MemoryAllocator::get().mem_alloc((sizeof(Node) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    newNode->tcb = ptr;
    newNode->next = nullptr;

    if (!tail) head = newNode;
    else tail->next = newNode;
    tail = newNode;
}