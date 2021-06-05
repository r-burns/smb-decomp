.section .text
glabel func_8000B284
  /* 00BE84 8000B284 14800003 */      bnez $a0, .L8000B294
  /* 00BE88 8000B288 24030001 */     addiu $v1, $zero, 1
  /* 00BE8C 8000B28C 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00BE90 8000B290 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L8000B294:
  /* 00BE94 8000B294 8C820018 */        lw $v0, 0x18($a0)
  /* 00BE98 8000B298 10400005 */      beqz $v0, .L8000B2B0
  /* 00BE9C 8000B29C 00000000 */       nop 
  /* 00BEA0 8000B2A0 A0430015 */        sb $v1, 0x15($v0)
  .L8000B2A4:
  /* 00BEA4 8000B2A4 8C420000 */        lw $v0, ($v0)
  /* 00BEA8 8000B2A8 5440FFFE */      bnel $v0, $zero, .L8000B2A4
  /* 00BEAC 8000B2AC A0430015 */        sb $v1, 0x15($v0)
  .L8000B2B0:
  /* 00BEB0 8000B2B0 03E00008 */        jr $ra
  /* 00BEB4 8000B2B4 00000000 */       nop 

