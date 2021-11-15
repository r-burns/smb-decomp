#ifndef SYS_SYSTEM_08_H
#define SYS_SYSTEM_08_H

#include <ssb_types.h>

#include <PR/ultratypes.h>

// might take another pointer type for a1 (to convert to RSP matrix?)
// convert from mtx4f to gbi Mtx
void func_80019C70(Mtx4f *src, Mtx *dst);
void func_80019EA0(Mtx4f *, Mtx4f *);
void func_8001B780(Mtx *, f32, f32, f32);
void func_8001B9C4(Mtx *, f32, f32, f32);
void func_8001BBF8(Mtx *, f32, f32, f32, f32);
void func_8001BCA0(Mtx *, f32, f32, f32, f32, f32, f32, f32);
void func_8001BD70(Mtx *, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32);
void func_8001BF20(Mtx *, f32, f32, f32);
void func_8001C21C(Mtx *, f32, f32, f32, f32, f32, f32);
void func_8001C588(Mtx *, f32, f32, f32, f32, f32, f32, f32, f32, f32);
void func_8001CAB4(Mtx *, f32, f32, f32);
void func_8001CB4C(Mtx *, f32, f32, f32, f32, f32, f32);
void func_8001CC0C(Mtx *, f32, f32, f32, f32, f32, f32, f32, f32, f32);
void func_8001D2F4(Mtx *, f32, f32, f32, f32);
void func_8001D3C4(Mtx *, f32, f32, f32, f32, f32, f32, f32);
void func_8001D4A4(Mtx *, f32, f32, f32);
void func_8001D58C(Mtx *, f32, f32, f32, f32, f32, f32);

#endif /* SYS_SYSTEM_08_H */
