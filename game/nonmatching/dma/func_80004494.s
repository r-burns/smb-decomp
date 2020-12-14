.section .text
glabel func_80004494
  /* 005094 80004494 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 005098 80004498 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00509C 8000449C 0C0010F0 */       jal func_800043C0
  /* 0050A0 800044A0 24050002 */     addiu $a1, $zero, 2
  /* 0050A4 800044A4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0050A8 800044A8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0050AC 800044AC 03E00008 */        jr $ra
  /* 0050B0 800044B0 00000000 */       nop 

