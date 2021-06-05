.section .text
glabel func_8000B39C
  /* 00BF9C 8000B39C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00BFA0 8000B3A0 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00BFA4 8000B3A4 AFB10018 */        sw $s1, 0x18($sp)
  /* 00BFA8 8000B3A8 14800003 */      bnez $a0, .L8000B3B8
  /* 00BFAC 8000B3AC AFB00014 */        sw $s0, 0x14($sp)
  /* 00BFB0 8000B3B0 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00BFB4 8000B3B4 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L8000B3B8:
  /* 00BFB8 8000B3B8 8C900018 */        lw $s0, 0x18($a0)
  /* 00BFBC 8000B3BC 52000007 */      beql $s0, $zero, .L8000B3DC
  /* 00BFC0 8000B3C0 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B3C4:
  /* 00BFC4 8000B3C4 8E110000 */        lw $s1, ($s0)
  /* 00BFC8 8000B3C8 0C002123 */       jal func_8000848C
  /* 00BFCC 8000B3CC 02002025 */        or $a0, $s0, $zero
  /* 00BFD0 8000B3D0 1620FFFC */      bnez $s1, .L8000B3C4
  /* 00BFD4 8000B3D4 02208025 */        or $s0, $s1, $zero
  /* 00BFD8 8000B3D8 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B3DC:
  /* 00BFDC 8000B3DC 8FB00014 */        lw $s0, 0x14($sp)
  /* 00BFE0 8000B3E0 8FB10018 */        lw $s1, 0x18($sp)
  /* 00BFE4 8000B3E4 03E00008 */        jr $ra
  /* 00BFE8 8000B3E8 27BD0020 */     addiu $sp, $sp, 0x20

