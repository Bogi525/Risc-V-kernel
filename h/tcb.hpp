#ifndef _tcb_hpp_
#define _tcb_hpp_

#include "../lib/hw.h"
#include "memoryallocator.hpp"
#include "scheduler.hpp"
class TCB;
typedef TCB* thread_t;

using Body = void(*)(void*);

class TCB {
public:
    static int _thread_create(TCB** handle, Body bodyParam, void* argParam, void* stack_space);
    static int _thread_createCPP(TCB** handle, Body bodyParam, void* argParam, void* stack_space);
    static void _thread_exit();
    static void _thread_dispatch();
    static void threadWrapper();
    static void _thread_join(TCB* tcb);

    uint64 getTimeSlice() const { return timeSlice; }

    void setSleeping(bool b) {
        sleeping = b;
    }

    bool isSleeping() {
        return sleeping;
    }

    void setFinished() {
        finished = true;
    }

    bool isFinished() {
        return finished;
    }

    void setBlocked(bool b) {
        blocked = b;
    }

    TCB() = delete;
    static TCB* running;
    static uint64 timeSliceCounter;

private:
    struct Context {
            uint64 ra;
            uint64 sp;
    };

    struct JoinedNode {
        TCB* tcb;
        JoinedNode* next;
    };

    JoinedNode* joinHead;
    JoinedNode* joinTail;

    static void contextSwitch(TCB::Context *oldContext, TCB::Context *newContext);

    uint64 timeSlice;
    Context context;
    Body body;
    void* arg;
    void* stack;
    bool finished;
    bool blocked;
    bool waiting;
    bool sleeping;
};
#endif