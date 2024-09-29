#ifndef _console_hpp_
#define _console_hpp_

#include "../lib/hw.h"
#include "semaphore.hpp"



class ConsoleBuffer {
public:
    ConsoleBuffer();
    char getc();
    void putc(char c);
private:

    static const uint64 KB_SIZE = 256;
    char buffer[KB_SIZE];
    _Semaphore** itemAvailable;
    uint64 head, tail, count;
};


#endif