.section .text
glabel func_8000B4F8
  /* 00C0F8 8000B4F8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C0FC 8000B4FC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C100 8000B500 0C0024B4 */       jal func_800092D0
  /* 00C104 8000B504 00000000 */       nop 
  /* 00C108 8000B508 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C10C 8000B50C 0C002CFB */       jal func_8000B3EC
  /* 00C110 8000B510 00402025 */        or $a0, $v0, $zero
  /* 00C114 8000B514 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C118 8000B518 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C11C 8000B51C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C120 8000B520 03E00008 */        jr $ra
  /* 00C124 8000B524 00000000 */       nop 

