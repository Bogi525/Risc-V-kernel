#include "../h/syscall_cpp.hpp"
#include "../h/tcb.hpp"

void* operator new (size_t sz) {
    return mem_alloc(sz);
}

void operator delete (void* adr) noexcept {
    mem_free(adr);
}

Thread::Thread(void (*body)(void *), void *args) {
    thread_createCPP(&myHandle, body, args);
}

Thread::~Thread() {
    delete myHandle;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::start() {
    Scheduler::getScheduler().put(myHandle);
    return 0;
}

void Thread::join() {
    thread_join(myHandle);
}

Thread::Thread() {
    thread_createCPP(&myHandle, wrapperFunctionCPP, this);
}

void Thread::wrapperFunctionCPP(void *thr) {
    ((Thread*)thr)->run();

}
int Thread::sleep(time_t time) {
    time_sleep(time);
    return 0;
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

PeriodicThread::PeriodicThread (time_t period) {
    this->period = period;
}

void PeriodicThread::terminate() {
    period = 0;
}

char Console::getc() {
    char c = ::getc();
    return c;
}

void Console::putc(char c) {
    ::putc(c);
}