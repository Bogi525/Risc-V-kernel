#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

void thread_dispatch();

uint64 TCB::timeSliceCounter = 0;

int TCB::_thread_create(TCB** handle, Body bodyParam, void* argParam, void* stack_space) {
    uint64* st_sp = (uint64*) stack_space;
    TCB* ptr = (TCB*) (MemoryAllocator::get().mem_alloc((sizeof(TCB) + MEM_BLOCK_SIZE - 1)/MEM_BLOCK_SIZE));
    if (!ptr) return -1; // nema prostora za alokaciju TCB strukture

    ptr->body = bodyParam;
    ptr->arg = argParam;
    if (bodyParam) ptr->stack = stack_space;
    else ptr->stack = nullptr;
    ptr->stack = stack_space;
    ptr->finished = false;
    ptr->blocked = false;
    ptr->sleeping = false;

    ptr->timeSlice = DEFAULT_TIME_SLICE;

    ptr->waiting = false;
    ptr->joinHead = nullptr;
    ptr->joinTail = nullptr;

    ptr->context.ra = (uint64) &threadWrapper;
    ptr->context.sp = (ptr->stack ? (uint64)(&st_sp[DEFAULT_STACK_SIZE]): 0);
    *handle = ptr;
    if (bodyParam != nullptr) Scheduler::getScheduler().put(ptr);
    return 0;
}

int TCB::_thread_createCPP(TCB **handle, Body bodyParam, void *argParam, void *stack_space) {
    uint64* st_sp = (uint64*) stack_space;
    TCB* ptr = (TCB*) (MemoryAllocator::get().mem_alloc((sizeof(TCB) + MEM_BLOCK_SIZE - 1)/MEM_BLOCK_SIZE));
    if (!ptr) return -1; // nema prostora za alokaciju TCB strukture

    ptr->body = bodyParam;
    ptr->arg = argParam;
    if (bodyParam) ptr->stack = stack_space;
    else ptr->stack = nullptr;
    ptr->stack = stack_space;
    ptr->finished = false;
    ptr->blocked = false;
    ptr->sleeping = false;

    ptr->timeSlice = DEFAULT_TIME_SLICE;

    ptr->waiting = false;
    ptr->joinHead = nullptr;
    ptr->joinTail = nullptr;

    ptr->context.ra = (uint64) &threadWrapper;
    ptr->context.sp = (ptr->stack ? (uint64)(&st_sp[DEFAULT_STACK_SIZE]): 0);
    *handle = ptr;
    return 0;
}


void TCB::_thread_dispatch() {
    //__putc('d');
    TCB* oldThread = running;
    if (!oldThread->finished && !oldThread->blocked && !oldThread->waiting && !oldThread->sleeping) Scheduler::getScheduler().put(oldThread);
    running = Scheduler::getScheduler().get();
    contextSwitch(&oldThread->context, &running->context);
}

void TCB::_thread_exit() {
    running->finished = true;

    while (TCB::running->joinHead != nullptr) {
        TCB::running->joinHead->tcb->waiting = false;
        JoinedNode* ptr = TCB::running->joinHead;
        TCB::running->joinHead = TCB::running->joinHead->next;
        Scheduler::getScheduler().put(ptr->tcb);
        MemoryAllocator::get().mem_free((void*)ptr);
    }
    TCB::running->joinTail = nullptr;
    MemoryAllocator::get().mem_free(running->stack);
    thread_dispatch();
}

void TCB::_thread_join(TCB* tcb) {
    TCB::running->waiting = true;
    JoinedNode* ptr = (JoinedNode*)MemoryAllocator::get().mem_alloc((sizeof(JoinedNode) + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE );
    ptr->tcb = TCB::running;
    ptr->next = nullptr;
    if (tcb->joinTail == nullptr) {
        tcb->joinHead = ptr;
        tcb->joinTail = ptr;
    }
    else {
        tcb->joinTail->next = ptr;
    }
    TCB::_thread_dispatch();
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    TCB::_thread_exit();
}