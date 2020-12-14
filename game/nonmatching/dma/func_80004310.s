.section .text
glabel func_80004310
  /* 004F10 80004310 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 004F14 80004314 AFBF0014 */        sw $ra, 0x14($sp)
  /* 004F18 80004318 240E0002 */     addiu $t6, $zero, 2
  /* 004F1C 8000431C AFAE001C */        sw $t6, 0x1c($sp)
  /* 004F20 80004320 0C0010A1 */       jal func_80004284
  /* 004F24 80004324 27A4001C */     addiu $a0, $sp, 0x1c
  /* 004F28 80004328 8FBF0014 */        lw $ra, 0x14($sp)
  /* 004F2C 8000432C 27BD0028 */     addiu $sp, $sp, 0x28
  /* 004F30 80004330 03E00008 */        jr $ra
  /* 004F34 80004334 00000000 */       nop 

  /* 004F38 80004338 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 004F3C 8000433C AFBF0014 */        sw $ra, 0x14($sp)
  /* 004F40 80004340 240E0003 */     addiu $t6, $zero, 3
  /* 004F44 80004344 AFA40028 */        sw $a0, 0x28($sp)
  /* 004F48 80004348 AFAE001C */        sw $t6, 0x1c($sp)
  /* 004F4C 8000434C AFA5002C */        sw $a1, 0x2c($sp)
  /* 004F50 80004350 0C0010A1 */       jal func_80004284
  /* 004F54 80004354 27A4001C */     addiu $a0, $sp, 0x1c
  /* 004F58 80004358 8FBF0014 */        lw $ra, 0x14($sp)
  /* 004F5C 8000435C 27BD0030 */     addiu $sp, $sp, 0x30
  /* 004F60 80004360 03E00008 */        jr $ra
  /* 004F64 80004364 00000000 */       nop 

