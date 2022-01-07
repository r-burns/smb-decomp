.section .text
glabel func_8001AFD0
  /* 01BBD0 8001AFD0 27BDFF88 */     addiu $sp, $sp, -0x78
  /* 01BBD4 8001AFD4 C7A40088 */      lwc1 $f4, 0x88($sp)
  /* 01BBD8 8001AFD8 C7A6008C */      lwc1 $f6, 0x8c($sp)
  /* 01BBDC 8001AFDC 44866000 */      mtc1 $a2, $f12
  /* 01BBE0 8001AFE0 44877000 */      mtc1 $a3, $f14
  /* 01BBE4 8001AFE4 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01BBE8 8001AFE8 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01BBEC 8001AFEC C7A600A4 */      lwc1 $f6, 0xa4($sp)
  /* 01BBF0 8001AFF0 C7A400A0 */      lwc1 $f4, 0xa0($sp)
  /* 01BBF4 8001AFF4 C7A80090 */      lwc1 $f8, 0x90($sp)
  /* 01BBF8 8001AFF8 C7AA0094 */      lwc1 $f10, 0x94($sp)
  /* 01BBFC 8001AFFC C7B00098 */      lwc1 $f16, 0x98($sp)
  /* 01BC00 8001B000 C7B2009C */      lwc1 $f18, 0x9c($sp)
  /* 01BC04 8001B004 AFBF0034 */        sw $ra, 0x34($sp)
  /* 01BC08 8001B008 AFA40078 */        sw $a0, 0x78($sp)
  /* 01BC0C 8001B00C 44066000 */      mfc1 $a2, $f12
  /* 01BC10 8001B010 44077000 */      mfc1 $a3, $f14
  /* 01BC14 8001B014 27A40038 */     addiu $a0, $sp, 0x38
  /* 01BC18 8001B018 E7A6002C */      swc1 $f6, 0x2c($sp)
  /* 01BC1C 8001B01C E7A40028 */      swc1 $f4, 0x28($sp)
  /* 01BC20 8001B020 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01BC24 8001B024 E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 01BC28 8001B028 E7B00020 */      swc1 $f16, 0x20($sp)
  /* 01BC2C 8001B02C 0C006AE9 */       jal func_8001ABA4
  /* 01BC30 8001B030 E7B20024 */      swc1 $f18, 0x24($sp)
  /* 01BC34 8001B034 27A40038 */     addiu $a0, $sp, 0x38
  /* 01BC38 8001B038 0C00671C */       jal mtx4f_to_Mtx
  /* 01BC3C 8001B03C 8FA50078 */        lw $a1, 0x78($sp)
  /* 01BC40 8001B040 8FBF0034 */        lw $ra, 0x34($sp)
  /* 01BC44 8001B044 27BD0078 */     addiu $sp, $sp, 0x78
  /* 01BC48 8001B048 03E00008 */        jr $ra
  /* 01BC4C 8001B04C 00000000 */       nop 

