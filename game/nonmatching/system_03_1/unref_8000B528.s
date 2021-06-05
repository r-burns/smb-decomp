.section .text
glabel unref_8000B528
  /* 00C128 8000B528 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C12C 8000B52C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C130 8000B530 0C0024E0 */       jal func_80009380
  /* 00C134 8000B534 00000000 */       nop 
  /* 00C138 8000B538 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C13C 8000B53C 0C002CFB */       jal func_8000B3EC
  /* 00C140 8000B540 00402025 */        or $a0, $v0, $zero
  /* 00C144 8000B544 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C148 8000B548 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C14C 8000B54C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C150 8000B550 03E00008 */        jr $ra
  /* 00C154 8000B554 00000000 */       nop 

