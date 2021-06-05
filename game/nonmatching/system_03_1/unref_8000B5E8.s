.section .text
glabel unref_8000B5E8
  /* 00C1E8 8000B5E8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C1EC 8000B5EC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C1F0 8000B5F0 0C0024FD */       jal func_800093F4
  /* 00C1F4 8000B5F4 00000000 */       nop 
  /* 00C1F8 8000B5F8 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C1FC 8000B5FC 0C002D0D */       jal func_8000B434
  /* 00C200 8000B600 00402025 */        or $a0, $v0, $zero
  /* 00C204 8000B604 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C208 8000B608 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C20C 8000B60C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C210 8000B610 03E00008 */        jr $ra
  /* 00C214 8000B614 00000000 */       nop 

