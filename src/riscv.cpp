#include "../h/riscv.hpp"

void thread_dispatch();

ConsoleBuffer* Riscv::inputBuffer = nullptr;
ConsoleBuffer* Riscv::outputBuffer = nullptr;

extern "C" void handleSupervisorTrapEcall() {

    uint64 scauseVar;
    uint64 oper;
    uint64 sepcVar;
    uint64 reg3;
    uint64 reg2;
    uint64 reg1;
    __asm__ volatile ("mv %[var], a3" : [var] "=r"(reg3));
    __asm__ volatile ("mv %[var], a2" : [var] "=r"(reg2));
    __asm__ volatile ("mv %[var], a1" : [var] "=r"(reg1));
    __asm__ volatile ("csrr %[var], scause" : [var] "=r"(scauseVar));

    uint64 volatile sstatus = Riscv::r_sstatus();

    // provera da li je ecall pozvan
    if (scauseVar == 0x08 || scauseVar == 0x09) {
        //__putc('h');
        __asm__ volatile ("mv %[var], a0" : [var] "=r"(oper));
        __asm__ volatile ("csrr %[var], sepc" : [var] "=r"(sepcVar));

        // mem_alloc
        if (oper == 0x01) {
            size_t sz;
            sz = (size_t) reg1;
            void* returnValue = MemoryAllocator::get().mem_alloc(sz);
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
            Riscv::w_sstatus(sstatus);
        }

        // mem_free
        else if (oper == 0x02) {
            void* ptr;
            ptr = (void*) reg1;
            __asm__ volatile ("mv %[var], a1" : [var] "=r"(ptr));
            int returnValue = MemoryAllocator::get().mem_free(ptr);
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
            Riscv::w_sstatus(sstatus);
        }

        //thread_create
        else if (oper == 0x11) {
            //uint64 h, sr, a;
            TCB** handl; Body body; void* arg; void* stack;
            arg = (void*)reg3;
            body = (Body)reg2;
            handl = (TCB**)reg1;
            stack = (void*) MemoryAllocator::get().mem_alloc((DEFAULT_STACK_SIZE + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
            int returnValue = TCB::_thread_create(handl, body, arg, stack);
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
            Riscv::w_sstatus(sstatus);
        }

        //thread_exit
        else if (oper == 0x12) {
            TCB::_thread_exit();
            Riscv::w_sstatus(sstatus);
        }

        //thread_dispatch
        else if (oper == 0x13) {
            //__putc('D');
            TCB::_thread_dispatch();
            Riscv::w_sstatus(sstatus);
        }

        //thread_join
        else if (oper == 0x14) {
            TCB* handle = (TCB*)reg1;
            TCB::_thread_join(handle);
            Riscv::w_sstatus(sstatus);
        }

        //thread_createCPP
        else if (oper == 0x15) {
            TCB** handl; Body body; void* arg; void* stack;
            arg = (void*)reg3;
            body = (Body)reg2;
            handl = (TCB**)reg1;
            stack = (void*) MemoryAllocator::get().mem_alloc((DEFAULT_STACK_SIZE + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
            TCB::_thread_createCPP(handl, body, arg, stack);
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(*handl));
            Riscv::w_sstatus(sstatus);
        }

        //sem_open
        else if (oper == 0x21) {
            unsigned int in = (unsigned int)reg2;
            _Semaphore** handl = (_Semaphore**)reg1;
            int returnValue = _Semaphore::sem_open(handl, in);
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
            Riscv::w_sstatus(sstatus);
        }

        //sem_close
        else if (oper == 0x22) {
            _Semaphore* handl = (_Semaphore*)reg1;
            int returnValue = _Semaphore::sem_close(handl);
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
            //Riscv::w_sstatus(sstatus);
        }

        //sem_wait
        else if (oper == 0x23) {
            _Semaphore* handl = (_Semaphore*)reg1;
            int returnValue = _Semaphore::sem_wait(handl);
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
            //Riscv::w_sstatus(sstatus);
        }

        //sem_signal
        else if (oper == 0x24) {
            _Semaphore* handl = (_Semaphore*)reg1;
            int returnValue = _Semaphore::sem_signal(handl);
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
            //Riscv::w_sstatus(sstatus);
        }

        //changeUser
        else if (oper == 0x25) {
            Riscv::w_sstatus(sstatus);
            Riscv::mc_sstatus(1<<8);
            __asm__ volatile ("csrw sepc, %0" : : "r" (sepcVar + 4));
            Riscv::mc_sip(Riscv::SIP_SSIP);
            return;
        }

        //time_sleep
        else if (oper == 0x31) {
            time_t time;
            __asm__ volatile ("mv %[var], a1" : [var] "=r"(time));
            SleepingThreadsList::getInstance().put(TCB::running, time);
        }

        //getc
        else if (oper == 0x41) {
            //char returnValue = __getc();
            //__asm__ volatile("mv a0, %[var]" : : [var] "r"(returnValue));
            char returnValue = Riscv::inputBuffer->getc();
            __asm__ volatile("mv a0, %[var]" : : [var] "r"(returnValue));

        }

        //putc
        else if (oper == 0x42) {
            //char c = (char)reg1;
            //__putc(c);
            char c = (char)reg1;
            Riscv::outputBuffer->putc(c);
        }

        sepcVar += 4;
        __asm__ volatile ("csrw sepc, %[var]" : : [var] "r"(sepcVar));
    }
    else {
        // unexpected trap cause
    }

}

extern "C" void handleSupervisorTrapTimer() {
    uint64 scauseVar;
    __asm__ volatile ("csrr %[var], scause" : [var] "=r"(scauseVar));
    if (scauseVar == 0x8000000000000001UL) {
        // interrupt; yes, cause code: supervisor software interrupt (timer)
        // TODO - proverava da li je thread gotov sa spavanjem.
        if (SleepingThreadsList::getInstance().getHead() != nullptr) {
            SleepingThreadsList::getInstance().decrement();
            if (SleepingThreadsList::getInstance().getHead()->relTime == 0) {
                SleepingThreadsList::getInstance().removeFinished();
            }
        }
        //__putc('t');
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
            //__putc('T');
            uint64 sepc = Riscv::r_sepc();
            uint64 sstatus = Riscv::r_sstatus();
            TCB::timeSliceCounter = 0;
            thread_dispatch();
            Riscv::w_sepc(sepc);
            Riscv::w_sstatus(sstatus);
        }
        asm volatile ("csrc sip, %[mask]" : : [mask] "r"(Riscv::SIP_SSIP));
    }
    else {
        // unexpected trap cause
    }
}

extern "C" void handleSupervisorTrapConsole() {
    uint64 scauseVar;
    __asm__ volatile ("csrr %[var], scause" : [var] "=r"(scauseVar));
    if (scauseVar == 0x8000000000000009UL) {
        // interrupt; yes, cause code: supervisor external interrupt (console)
        //console_handler();
        int console_irq = plic_claim();
        while (*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
            char c = (*(char*)CONSOLE_RX_DATA);
            Riscv::inputBuffer->putc(c);
        }
        plic_complete(console_irq);
    }

    else {
        // unexpected trap cause
    }
}

void Riscv::popSppSpie(){
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
};