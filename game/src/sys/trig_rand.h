#ifndef SYS_TRIG_RAND_H
#define SYS_TRIG_RAND_H

#include <PR/ultratypes.h>

extern f32 tanf(f32 angle);
extern f32 atanf(f32 yDivX);
extern f32 atan2f(f32 y, f32 x);
extern f32 asinf(f32 x);
extern f32 acosf(f32 x);
extern f32 cscf(f32 x);
extern f32 secf(f32 x);
extern f32 cotf(f32 x);

extern void set_lcg_seed_ptr(s32 *seedptr);
extern u16 rand_u16(void);
extern f32 rand_f32(void);
extern u32 rand_u16_range(s32 range);
extern u8 timerand_u8(void);
extern f32 timerand_f32(void);
extern s32 timerand_u8_range(s32 range);

#endif /* SYS_TRIG_RAND_H */
