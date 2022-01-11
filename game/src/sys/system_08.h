#ifndef SYS_SYSTEM_08_H
#define SYS_SYSTEM_08_H

#include <ssb_types.h>

#include <PR/ultratypes.h>
#include <PR/mbi.h>

// might take another pointer type for a1 (to convert to RSP matrix?)
// convert from mtx4f to gbi Mtx
extern void mtx4f_to_Mtx(Mtx4f *src, Mtx *dst);
extern void func_80019EA0(Mtx4f *src, Mtx *dst);
extern void hal_look_at_f(Mtx4f *mf, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);
extern void hal_look_at(Mtx *m, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);
extern void hal_mod_look_at_f(Mtx4f *mf, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 arg7, f32 xUp, f32 yUp, f32 zUp);
extern void hal_mod_look_at(Mtx *m, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 arg7, f32 xUp, f32 yUp, f32 zUp);
extern void hal_look_at_reflect_f(Mtx4f *mf, LookAt *l, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);
extern void hal_look_at_reflect(Mtx *m, LookAt *l, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);
extern void hal_mod_look_at_reflect_f(Mtx4f *mf, LookAt *l, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 arg8, f32 xUp, f32 yUp, f32 zUp);
extern void hal_mod_look_at_reflect(Mtx *m, LookAt *l, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 arg8, f32 xUp, f32 yUp, f32 zUp);
extern void hal_ortho_f(Mtx4f *mf, f32 l, f32 r, f32 b, f32 t, f32 n, f32 f, f32 scale);
extern void hal_ortho(Mtx *m, f32 l, f32 r, f32 b, f32 t, f32 n, f32 f, f32 scale);
extern void func_8001B780(Mtx *, f32, f32, f32);
extern void func_8001B9C4(Mtx *, f32, f32, f32);
extern void func_8001BBF8(Mtx *, f32, f32, f32, f32);
extern void func_8001BCA0(Mtx *, f32, f32, f32, f32, f32, f32, f32);
extern void func_8001BD70(Mtx *, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32);
extern void func_8001BF20(Mtx *, f32, f32, f32);
extern void func_8001C21C(Mtx *, f32, f32, f32, f32, f32, f32);
extern void func_8001C588(Mtx *, f32, f32, f32, f32, f32, f32, f32, f32, f32);
extern void func_8001CAB4(Mtx *, f32, f32, f32);
extern void func_8001CB4C(Mtx *, f32, f32, f32, f32, f32, f32);
extern void func_8001CC0C(Mtx *, f32, f32, f32, f32, f32, f32, f32, f32, f32);
extern void func_8001D2F4(Mtx *, f32, f32, f32, f32);
extern void func_8001D3C4(Mtx *, f32, f32, f32, f32, f32, f32, f32);
extern void func_8001D4A4(Mtx *, f32, f32, f32);
extern void func_8001D58C(Mtx *, f32, f32, f32, f32, f32, f32);

#endif /* SYS_SYSTEM_08_H */
