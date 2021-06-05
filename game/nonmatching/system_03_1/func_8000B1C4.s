.section .text
glabel func_8000B1C4
  /* 00BDC4 8000B1C4 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00BDC8 8000B1C8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00BDCC 8000B1CC AFA40018 */        sw $a0, 0x18($sp)
  /* 00BDD0 8000B1D0 0C002B6C */       jal func_8000ADB0
  /* 00BDD4 8000B1D4 00002025 */        or $a0, $zero, $zero
  /* 00BDD8 8000B1D8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00BDDC 8000B1DC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00BDE0 8000B1E0 03E00008 */        jr $ra
  /* 00BDE4 8000B1E4 00000000 */       nop 

