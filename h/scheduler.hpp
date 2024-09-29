#ifndef _scheduler_hpp_
#define _scheduler_hpp_


#include "../h/memoryallocator.hpp"

class TCB;

class Scheduler {
public:

    static Scheduler& getScheduler() {
        static Scheduler instance;
        return instance;
    }

    TCB* get();
    void put(TCB* ptr);
    bool headExists() {
        if (!head) return false;
        else return true;
    }
private:
    struct Node {
        TCB* tcb;
        Node* next;
    };
    Node* head = nullptr;
    Node* tail = nullptr;
};


#endif