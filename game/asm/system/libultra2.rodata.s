.include "macros.inc"

.section .rodata

glabel D_8003F380
  /* 3EF80 03FF80 8003F380 */
  .4byte 0x3f8012ef # .float 1.0005778

glabel D_8003F384
  /* 3EF84 03FF84 8003F384 */
  .4byte 0x3f7fda28 # .float 0.99942255
  .incbin "system.raw.bin", 0x3EF88, 0x8

glabel D_8003F390
  /* 3EF90 03FF90 8003F390 */
  .asciz "@$"
  .balign 4
  .incbin "system.raw.bin", 0x3EF94, 0x4
  /* 3EF98 03FF98 8003F398 */
  .asciz "@Y"
  .balign 4
  .incbin "system.raw.bin", 0x3EF9C, 0x3C

glabel D_8003F3D8
  /* 3EFD8 03FFD8 8003F3D8 */
  .asciz "NaN"
  .balign 4

glabel D_8003F3DC
  /* 3EFDC 03FFDC 8003F3DC */
  .asciz "Inf"
  .balign 4

glabel D_8003F3E0
  /* 3EFE0 03FFE0 8003F3E0 */
  .asciz "0"
  .balign 4
  .incbin "system.raw.bin", 0x3EFE4, 0x4

glabel D_8003F3E8
  /* 3EFE8 03FFE8 8003F3E8 */
  .8byte 0x4197d78400000000 # .double 100000000.0

glabel D_8003F3F0
  .incbin "system.raw.bin", 0x3EFF0, 0x8

glabel D_8003F3F8
  .incbin "system.raw.bin", 0x3EFF8, 0x8

glabel D_8003F400
  .incbin "system.raw.bin", 0x3F000, 0x2B0

