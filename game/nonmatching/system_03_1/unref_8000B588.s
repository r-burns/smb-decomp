.section .text
glabel unref_8000B588
  /* 00C188 8000B588 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C18C 8000B58C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C190 8000B590 0C0024B4 */       jal func_800092D0
  /* 00C194 8000B594 00000000 */       nop 
  /* 00C198 8000B598 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C19C 8000B59C 0C002D0D */       jal func_8000B434
  /* 00C1A0 8000B5A0 00402025 */        or $a0, $v0, $zero
  /* 00C1A4 8000B5A4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C1A8 8000B5A8 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C1AC 8000B5AC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C1B0 8000B5B0 03E00008 */        jr $ra
  /* 00C1B4 8000B5B4 00000000 */       nop 

