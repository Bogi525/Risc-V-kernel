#include "../h/sleepingThreadsList.hpp"

void thread_dispatch();

void SleepingThreadsList::put(TCB* ptr, time_t time) {
    ptr->setSleeping(true);
    SleepingNode* newNode = new SleepingNode;
    if (head == nullptr) {
        head = newNode;
        newNode->next = nullptr;
        newNode->tcb = ptr;
        newNode->relTime = time;
    }
    else {
        SleepingNode* curr = head;
        SleepingNode* prev = nullptr;
        while (curr != nullptr && curr->relTime < time) {
            prev = curr;
            curr = curr->next;
            time -= prev->relTime;
        }
        if (prev) {
            newNode->next = prev->next;
            prev->next = newNode;
        }
        else {
            newNode->next = head;
            head = newNode;
        }

        newNode->tcb = ptr;
        newNode->relTime = time;

        if (newNode->next) {
            newNode->next->relTime -= newNode->relTime;
        }
    }
    thread_dispatch();
}

void SleepingThreadsList::removeFinished() {
    while (head != nullptr && head->relTime == 0) {
        TCB* ptr = head->tcb;
        SleepingNode* removed = head;
        head = head->next;
        MemoryAllocator::get().mem_free((void*)removed);
        ptr->setSleeping(false);
        if (!ptr->isFinished()) Scheduler::getScheduler().put(ptr);
    }
}