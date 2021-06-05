.section .text
glabel func_8000B2EC
  /* 00BEEC 8000B2EC 14800003 */      bnez $a0, .L8000B2FC
  /* 00BEF0 8000B2F0 240E0001 */     addiu $t6, $zero, 1
  /* 00BEF4 8000B2F4 3C048004 */       lui $a0, %hi(D_80046A60)
  /* 00BEF8 8000B2F8 8C846A60 */        lw $a0, %lo(D_80046A60)($a0)
  .L8000B2FC:
  /* 00BEFC 8000B2FC 03E00008 */        jr $ra
  /* 00BF00 8000B300 A08E0015 */        sb $t6, 0x15($a0)

