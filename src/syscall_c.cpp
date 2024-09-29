#include "../h/syscall_c.h"

void* mem_alloc(size_t sz) {
    uint64 oper = 0x01;
    void* returnValue;
    sz = (sz + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(sz));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    return returnValue;
}

int mem_free(void* ptr) {
    uint64 oper = 0x02;
    int returnValue;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(ptr));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    return returnValue;
}

int thread_create(thread_t* handle, Body start_routine, void* arg) {
    uint64 oper = 0x11;
    int returnValue;
    thread_t* ha = handle;
    void (*sr) (void*) = start_routine;
    void* ar = arg;
    __asm__ volatile ("mv a3, %[var1]" : : [var1] "r"(ar));
    __asm__ volatile ("mv a2, %[var2]" : : [var2] "r"(sr));
    __asm__ volatile ("mv a1, %[var3]" : : [var3] "r"(ha));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    return returnValue;
}

int thread_exit() {
    uint64 oper = 0x12;
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    return 0;
}

void thread_dispatch() {
    uint64 oper = 0x13;
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
}

void thread_join(thread_t handle) {
    uint64 oper = 0x14;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(handle));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
}

TCB* thread_createCPP(thread_t* handle, Body start_routine, void* arg) {
    uint64 oper = 0x15;
    TCB* returnValue;
    returnValue = *handle;
    thread_t* ha = handle;
    void (*sr) (void*) = start_routine;
    void* ar = arg;
    __asm__ volatile ("mv a3, %[var1]" : : [var1] "r"(ar));
    __asm__ volatile ("mv a2, %[var2]" : : [var2] "r"(sr));
    __asm__ volatile ("mv a1, %[var3]" : : [var3] "r"(ha));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    //__asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    return returnValue;
}

int sem_open(sem_t* handle, unsigned init) {
    uint64 oper = 0x21;
    int returnValue;
    __asm__ volatile ("mv a2, %[var]" : : [var] "r"(init));
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(handle));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    return returnValue;
}

int sem_close(sem_t handle) {
    uint64 oper = 0x22;
    int returnValue;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(handle));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    return returnValue;
}

int sem_wait(sem_t handle) {
    uint64 oper = 0x23;
    uint64 ha = (uint64)handle;
    int returnValue;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(ha));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    return returnValue;
}

int sem_signal(sem_t handle) {
    uint64 oper = 0x24;
    int returnValue;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(handle));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    return returnValue;
}

void changeUser() {
    uint64 oper = 0x25;
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
}

char getc() {
    uint64 oper = 0x41;
    char returnValue;
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    return returnValue;
}

void putc (char c) {
    uint64 oper = 0x42;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(c));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
}

int time_sleep(time_t t) {
    uint64 oper = 0x31;
    if (t == 0) t++;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(t));
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    __asm__ volatile ("ecall");
    return 0;
}