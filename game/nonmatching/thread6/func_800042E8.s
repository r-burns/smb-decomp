.section .text
glabel func_800042E8
  /* 004EE8 800042E8 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 004EEC 800042EC AFBF0014 */        sw $ra, 0x14($sp)
  /* 004EF0 800042F0 240E0001 */     addiu $t6, $zero, 1
  /* 004EF4 800042F4 AFAE001C */        sw $t6, 0x1c($sp)
  /* 004EF8 800042F8 0C0010A1 */       jal func_80004284
  /* 004EFC 800042FC 27A4001C */     addiu $a0, $sp, 0x1c
  /* 004F00 80004300 8FBF0014 */        lw $ra, 0x14($sp)
  /* 004F04 80004304 27BD0028 */     addiu $sp, $sp, 0x28
  /* 004F08 80004308 03E00008 */        jr $ra
  /* 004F0C 8000430C 00000000 */       nop 

