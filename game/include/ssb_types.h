#ifndef SSB64_TYPES_H
#define SSB64_TYPES_H


// When not building with IDO, define some stdint types
#ifdef __sgi
#include <PR/ultratypes.h>
typedef u32 uintptr_t;
typedef s32 intptr_t;
#else
#include <stdint.h>
#endif /* __sgi */


#endif /* SSB64_TYPES_H */
