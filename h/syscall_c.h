#ifndef _syscall_c_hpp_
#define _syscall_c_hpp_

#include "../lib/hw.h"
#include "tcb.hpp"
#include "semaphore.hpp"

void* mem_alloc(size_t sz);

int time_sleep(time_t t);

int mem_free(void* ptr);

int thread_create(thread_t* handle, Body start_routine, void* arg);

int thread_exit();

void thread_dispatch();

void thread_join(thread_t handle);

TCB* thread_createCPP(thread_t* handle, Body start_routine, void* arg);

int sem_open(sem_t* handle, unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t handle);

int sem_signal(sem_t handle);

void changeUser();

char getc();

void putc (char c);

#endif