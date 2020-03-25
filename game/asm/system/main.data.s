.include "macros.inc"

.section .data

glabel D_8003B6B0
  .incbin "system.raw.bin", 0x3B2B0, 0x8
  /* 3B2B8 03C2B8 8003B6B8 */  .4byte load_overlay_set
  /* 3B2BC 03C2BC 8003B6BC */  .4byte load_overlay_set
  /* 3B2C0 03C2C0 8003B6C0 */  .4byte D_800A3070
  /* 3B2C4 03C2C4 8003B6C4 */  .4byte D_800A3070
  /* 3B2C8 03C2C8 8003B6C8 */  .4byte D_800A44D0
  /* 3B2CC 03C2CC 8003B6CC */  .4byte D_800A44D0
  /* 3B2D0 03C2D0 8003B6D0 */  .4byte D_NF_800A5240

glabel D_8003B6D4
  .incbin "system.raw.bin", 0x3B2D4, 0xC
