.section .text
glabel func_80004394
  /* 004F94 80004394 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 004F98 80004398 AFBF0014 */        sw $ra, 0x14($sp)
  /* 004F9C 8000439C 240E0006 */     addiu $t6, $zero, 6
  /* 004FA0 800043A0 AFA40024 */        sw $a0, 0x24($sp)
  /* 004FA4 800043A4 AFAE0018 */        sw $t6, 0x18($sp)
  /* 004FA8 800043A8 0C0010A1 */       jal func_80004284
  /* 004FAC 800043AC 27A40018 */     addiu $a0, $sp, 0x18
  /* 004FB0 800043B0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 004FB4 800043B4 27BD0028 */     addiu $sp, $sp, 0x28
  /* 004FB8 800043B8 03E00008 */        jr $ra
  /* 004FBC 800043BC 00000000 */       nop 

