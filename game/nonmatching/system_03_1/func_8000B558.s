.section .text
glabel func_8000B558
  /* 00C158 8000B558 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C15C 8000B55C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C160 8000B560 0C0024FD */       jal func_800093F4
  /* 00C164 8000B564 00000000 */       nop 
  /* 00C168 8000B568 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C16C 8000B56C 0C002CFB */       jal func_8000B3EC
  /* 00C170 8000B570 00402025 */        or $a0, $v0, $zero
  /* 00C174 8000B574 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C178 8000B578 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C17C 8000B57C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C180 8000B580 03E00008 */        jr $ra
  /* 00C184 8000B584 00000000 */       nop 

