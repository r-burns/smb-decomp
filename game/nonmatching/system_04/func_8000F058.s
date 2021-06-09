.section .text
glabel func_8000F058
  /* 00FC58 8000F058 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00FC5C 8000F05C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FC60 8000F060 AFA40018 */        sw $a0, 0x18($sp)
  /* 00FC64 8000F064 2405001B */     addiu $a1, $zero, 0x1b
  /* 00FC68 8000F068 0C002330 */       jal func_80008CC0
  /* 00FC6C 8000F06C 00003025 */        or $a2, $zero, $zero
  /* 00FC70 8000F070 8FA40018 */        lw $a0, 0x18($sp)
  /* 00FC74 8000F074 24050020 */     addiu $a1, $zero, 0x20
  /* 00FC78 8000F078 0C002330 */       jal func_80008CC0
  /* 00FC7C 8000F07C 00003025 */        or $a2, $zero, $zero
  /* 00FC80 8000F080 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00FC84 8000F084 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00FC88 8000F088 03E00008 */        jr $ra
  /* 00FC8C 8000F08C 00000000 */       nop 

