#include "../h/semaphore.hpp"

void thread_dispatch();

int _Semaphore::sem_open(_Semaphore** handle, unsigned int init) {
    sem_t ptr = (sem_t)MemoryAllocator::get().mem_alloc((sizeof(_Semaphore) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    //_Semaphore* ptr = *handle;
    *handle = ptr;
    if (*handle == nullptr) return -1; // nema prostora za alokaciju
    ptr->val = (int)init;
    ptr->head = nullptr;
    ptr->tail = nullptr;
    ptr->closed = false;
    return 0;
}

int _Semaphore::sem_close(sem_t handle) {
    while (handle->head != nullptr) {
        handle->head->tcb->setBlocked(false);
        if (!handle->head->tcb->isFinished()) Scheduler::getScheduler().put(handle->head->tcb);
        BlockedNode* curr = handle->head;
        handle->head = handle->head->next;
        MemoryAllocator::get().mem_free(curr);
    }
    handle->tail = nullptr;
    handle->closed = true;
    return 0;
}

int _Semaphore::sem_signal(sem_t id) {
    if (id == nullptr) return -1; // nekorektna vrednost id
    if (id->closed) return -2;
    id->val++;

    if (id->val <= 0 ) {
        if (id->head == nullptr) return -2; // prazan semafor

        BlockedNode* ptr = id->head;
        id->head = id->head->next;
        if (id->head == nullptr) id->tail = nullptr;

        ptr->tcb->setBlocked(false);
        Scheduler::getScheduler().put(ptr->tcb);
        MemoryAllocator::get().mem_free((void*)ptr);
    }
    return 0;
}

int _Semaphore::sem_wait(sem_t id) {
    if (id == nullptr) return -1; // nekorektna vrednost id
    if (id->closed) return -2;
    id->val--;

    if (id->val < 0) {
        BlockedNode* ptr = (BlockedNode*)MemoryAllocator::get().mem_alloc
                ((sizeof(BlockedNode) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
        TCB::running->setBlocked(true);
        ptr->tcb = TCB::running;
        ptr->next = nullptr;

        if (id->tail != nullptr) {
            id->tail->next = ptr;
            id->tail = ptr;
        }
        else {
            id->head = ptr;
            id->tail = ptr;
        }
        thread_dispatch();
    }
    return 0;
}