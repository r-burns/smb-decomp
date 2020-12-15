#ifndef SYSTEM_DMA_H
#define SYSTEM_DMA_H

#include <PR/ultratypes.h>
#include "ssb_types.h"

extern void ssb_create_dma_mq(void);
extern void ssb_data_dma(OSPiHandle *handle, u32 physAddr, uintptr_t vAddr, u32 size, u8 direction);

#endif /* SYSTEM_DMA_H */
