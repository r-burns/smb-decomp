#ifndef SYS_GTL_H
#define SYS_GTL_H

#include <PR/ultratypes.h>
#include <PR/mbi.h>

struct DLBuffer {
    /* 0x00 */ Gfx *start;
    /* 0x04 */ u32 length;
}; // size = 0x08

#endif /* SYS_GTL_H */
