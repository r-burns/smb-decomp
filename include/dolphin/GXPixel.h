#ifndef _DOLPHIN_GXPIXEL_H_
#define _DOLPHIN_GXPIXEL_H_

#include <dolphin/GXEnum.h>

void GXSetDither(GXBool dither);
void GXSetZMode(GXBool compare_enable, GXCompare func, GXBool update_enable);
void GXSetBlendMode(GXBlendMode type, GXBlendFactor src_factor,
    GXBlendFactor dst_factor, GXLogicOp op);

#endif