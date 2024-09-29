#ifndef _memory_allocator_hpp_
#define _memory_allocator_hpp_
#include "../lib/mem.h"
#include "../lib/console.h"
#include "../lib/hw.h"

struct FreeMem {
    FreeMem* next = nullptr;
    FreeMem* prev = nullptr;
    size_t size = 0;
};

class MemoryAllocator {
public:
    static MemoryAllocator& get() {
        static MemoryAllocator instance;
        return instance;
    }

    void* mem_alloc(size_t sz);

    int mem_free(void* ptr);

    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;
protected:
private:
    MemoryAllocator() = default;
    ~MemoryAllocator() = default;
    FreeMem* freeMemHead = nullptr;
};



#endif