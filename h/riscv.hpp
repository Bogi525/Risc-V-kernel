#ifndef _riscv_hpp_
#define _riscv_hpp_

#include "memoryallocator.hpp"
#include "../lib/mem.h"
#include "tcb.hpp"
#include "semaphore.hpp"
#include "../lib/hw.h"
#include "sleepingThreadsList.hpp"
#include "_console.hpp"

void changeUser();

extern "C" void handleSupervisorTrapEcall();
extern "C" void handleSupervisorTrapTimer();
extern "C" void handleSupervisorTrapConsole();

class Riscv {
public:

    static ConsoleBuffer* inputBuffer;
    static ConsoleBuffer* outputBuffer;

    static void outputFunction(void*) {
        changeUser();
        while(true) {
            while ((*(char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
                char c = outputBuffer->getc();
                *((char*)CONSOLE_TX_DATA) = c;
            }
        }
    }

    enum BitMaskSip
    {
        SIP_SSIP = (1 << 1),
        SIP_STIP = (1 << 5),
        SIP_SEIP = (1 << 8),
    };

    static uint64 r_sepc() {
        uint64 volatile sepc;
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
        return sepc;
    }

    static void w_sepc(uint64 sepc) {
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    }

    static uint64 r_sstatus()
    {
        uint64 volatile sstatus;
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
        return sstatus;
    }

    static void mc_sstatus(uint64 mask) {
        __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    }

    static void w_sstatus(uint64 sstatus) {
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    }

    static void mc_sip(uint64 mask) {
        __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    }

    static void popSppSpie();
};





#endif