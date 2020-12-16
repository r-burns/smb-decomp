#ifndef SYSTEM_DMA_H
#define SYSTEM_DMA_H

#include <PR/ultratypes.h>
#include "ssb_types.h"

// loadovl.h? or a generic overlay header?
// all ends are exclusive [start..end)
struct Overlay {
    u32 romStart;
    u32 romEnd;
    void *ramLoadStart;
    void *ramTextStart;
    void *ramTextEnd;
    void *ramDataStart;
    void *ramDataEnd;
    void *ramNoloadStart;
    void *ramNoloadEnd;
};

extern void create_dma_mq(void);
extern void dma_copy(OSPiHandle *handle, u32 physAddr, uintptr_t vAddr, u32 size, u8 direction);
extern void load_overlay(struct Overlay *ovl);
extern void dma_read(u32 devAddr, void *ramAddr, u32 nbytes);

#endif /* SYSTEM_DMA_H */
