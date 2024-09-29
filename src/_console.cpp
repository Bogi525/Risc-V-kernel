#include "../h/_console.hpp"

ConsoleBuffer::ConsoleBuffer(): head(0), tail(0), count(0) {
    itemAvailable = (_Semaphore**)MemoryAllocator::get().mem_alloc((sizeof(_Semaphore*) + MEM_BLOCK_SIZE + 1) / MEM_BLOCK_SIZE);
    _Semaphore::sem_open(itemAvailable, 0);
}

char ConsoleBuffer::getc() { // Jun 2022 (samo bez mutex i kbint_mask())
    _Semaphore::sem_wait(*itemAvailable);
    char c = buffer[head];
    head = (head + 1) % KB_SIZE;
    count--;
    return c;
}

void ConsoleBuffer::putc(char c) { // Jun 2022 (samo bez mutex i kbint_unmask())
    if (count < KB_SIZE) {
        buffer[tail] = c;
        tail = (tail + 1) % KB_SIZE;
        count++;
        _Semaphore::sem_signal(*itemAvailable);
    }
}