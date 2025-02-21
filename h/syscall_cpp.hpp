#ifndef _syscall_cpp_
#define _syscall_cpp_
#include "../lib/hw.h"
#include "syscall_c.h"

void* operator new (size_t);
void operator delete (void* adr) noexcept;

class Thread {
public:
    Thread (void (*body) (void*), void* arg);
    virtual ~Thread();

    int start();
    void join();
    static void dispatch();
    static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}

private:
    thread_t myHandle;
    static void wrapperFunctionCPP(void*);
    void (*body) (void*); void* arg;
};
class Semaphore {
public:

    Semaphore (unsigned init = 1);
    virtual ~Semaphore();

    int wait();
    int signal();

private:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
public:
    void terminate();

protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation() {}
    void run() override {
        while(period != 0) {
            periodicActivation();
            time_sleep(period);
        }
    }
private:
    time_t period;
};

class Console {
public:
    static char getc();
    static void putc(char c);
};
#endif