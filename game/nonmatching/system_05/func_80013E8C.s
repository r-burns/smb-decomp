.section .text
glabel func_80013E8C
  /* 014A8C 80013E8C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 014A90 80013E90 AFBF0014 */        sw $ra, 0x14($sp)
  /* 014A94 80013E94 3C058004 */       lui $a1, %hi(D_800465B0 + 4)
  /* 014A98 80013E98 0C004F64 */       jal func_80013D90
  /* 014A9C 80013E9C 24A565B4 */     addiu $a1, $a1, %lo(D_800465B0 + 4)
  /* 014AA0 80013EA0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 014AA4 80013EA4 27BD0018 */     addiu $sp, $sp, 0x18
  /* 014AA8 80013EA8 03E00008 */        jr $ra
  /* 014AAC 80013EAC 00000000 */       nop 

