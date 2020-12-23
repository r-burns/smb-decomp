.section .text
glabel func_80004368
  /* 004F68 80004368 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 004F6C 8000436C AFBF0014 */        sw $ra, 0x14($sp)
  /* 004F70 80004370 240E0004 */     addiu $t6, $zero, 4
  /* 004F74 80004374 AFA40024 */        sw $a0, 0x24($sp)
  /* 004F78 80004378 AFAE0018 */        sw $t6, 0x18($sp)
  /* 004F7C 8000437C 0C0010A1 */       jal func_80004284
  /* 004F80 80004380 27A40018 */     addiu $a0, $sp, 0x18
  /* 004F84 80004384 8FBF0014 */        lw $ra, 0x14($sp)
  /* 004F88 80004388 27BD0028 */     addiu $sp, $sp, 0x28
  /* 004F8C 8000438C 03E00008 */        jr $ra
  /* 004F90 80004390 00000000 */       nop 

