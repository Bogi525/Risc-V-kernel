#ifndef _sleeping_threads_list_
#define _sleeping_threads_list_

#include "tcb.hpp"
#include "../lib/hw.h"
#include "memoryallocator.hpp"

class SleepingThreadsList {
private:
    struct SleepingNode {
        time_t relTime;
        TCB* tcb;
        SleepingNode* next;
    };

    SleepingNode* head;
public:
    static SleepingThreadsList& getInstance() {
        static SleepingThreadsList instance;
        return instance;
    }

    SleepingNode* getHead() {
        return head;
    }

    void decrement() {
        head->relTime--;
    }

    void put(TCB* ptr, time_t time);

    void removeFinished();
};

#endif