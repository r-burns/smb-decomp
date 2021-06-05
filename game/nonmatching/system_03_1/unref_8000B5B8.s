.section .text
glabel unref_8000B5B8
  /* 00C1B8 8000B5B8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C1BC 8000B5BC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C1C0 8000B5C0 0C0024E0 */       jal func_80009380
  /* 00C1C4 8000B5C4 00000000 */       nop 
  /* 00C1C8 8000B5C8 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C1CC 8000B5CC 0C002D0D */       jal func_8000B434
  /* 00C1D0 8000B5D0 00402025 */        or $a0, $v0, $zero
  /* 00C1D4 8000B5D4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C1D8 8000B5D8 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C1DC 8000B5DC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C1E0 8000B5E0 03E00008 */        jr $ra
  /* 00C1E4 8000B5E4 00000000 */       nop 

