#ifndef _semaphore_hpp_
#define _semaphore_hpp_

#include "memoryallocator.hpp"
#include "scheduler.hpp"
#include "tcb.hpp"

class _Semaphore;
typedef _Semaphore* sem_t;

class _Semaphore {
public:
    static int sem_open(sem_t* handle, unsigned init);
    static int sem_close(sem_t handle);
    static int sem_signal(sem_t id);
    static int sem_wait(sem_t id);

    _Semaphore() = delete;
private:

    struct BlockedNode {
        TCB* tcb;
        BlockedNode* next;
    };

    int val;
    BlockedNode* head;
    BlockedNode* tail;
    bool closed;
};

#endif