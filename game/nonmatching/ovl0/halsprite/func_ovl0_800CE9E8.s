.section .text
glabel func_ovl0_800CE9E8
  /* 04A3C8 800CE9E8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04A3CC 800CE9EC 00A03025 */        or $a2, $a1, $zero
  /* 04A3D0 800CE9F0 00802825 */        or $a1, $a0, $zero
  /* 04A3D4 800CE9F4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04A3D8 800CE9F8 AFA40018 */        sw $a0, 0x18($sp)
  /* 04A3DC 800CE9FC 0C0339AE */       jal func_ovl0_800CE6B8
  /* 04A3E0 800CEA00 00002025 */        or $a0, $zero, $zero
  /* 04A3E4 800CEA04 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04A3E8 800CEA08 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04A3EC 800CEA0C 03E00008 */        jr $ra
  /* 04A3F0 800CEA10 00000000 */       nop 

