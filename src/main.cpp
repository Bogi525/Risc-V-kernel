#include "../h/memoryallocator.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/riscv.hpp"
#include "../h/semaphore.hpp"
#include "../h/print.hpp"

extern "C" void supervisorTrap();

//static char k = 0;

void printK(void* args){

    putc('K');
    thread_exit();
    putc('k');
    putc('\n');
}

void printW(void* args){
    //int i = 0;
    while (true) {
        time_sleep(20);
        __putc('W');
    }

}

void printE(void* args){
    //int i = 0;
    while (true) {
        time_sleep(20);
        __putc('E');
    }

}

void waiter(void* args) {
    changeUser();
    while(true) {
        thread_dispatch();
    }
}



TCB* TCB::running = nullptr;

void userMain();

int main () {
    __asm__ volatile("csrs sstatus, 0x02");
    __asm__ volatile("csrw stvec, %0" : : "r"((uint64)&supervisorTrap | (uint64)1));

    Riscv::inputBuffer = new ConsoleBuffer();
    Riscv::outputBuffer = new ConsoleBuffer();

    thread_t* outputThread = (thread_t*) mem_alloc(sizeof(TCB*));;
    thread_create(outputThread, (Body)Riscv::outputFunction, nullptr);

    thread_t* handle = (thread_t*) mem_alloc(sizeof(TCB*));
    thread_t* idle = (thread_t*) mem_alloc(sizeof(TCB*));

    thread_create(handle, nullptr, nullptr);
    thread_create(idle, (Body)waiter, nullptr);
    TCB::running = *handle;
    changeUser();
    userMain();


    return 0;
};
