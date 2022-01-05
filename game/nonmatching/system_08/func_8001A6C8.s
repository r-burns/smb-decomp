.section .text
glabel func_8001A6C8
  /* 01B2C8 8001A6C8 27BDFF88 */     addiu $sp, $sp, -0x78
  /* 01B2CC 8001A6CC C7A40088 */      lwc1 $f4, 0x88($sp)
  /* 01B2D0 8001A6D0 44856000 */      mtc1 $a1, $f12
  /* 01B2D4 8001A6D4 44867000 */      mtc1 $a2, $f14
  /* 01B2D8 8001A6D8 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01B2DC 8001A6DC C7A400A0 */      lwc1 $f4, 0xa0($sp)
  /* 01B2E0 8001A6E0 C7A6008C */      lwc1 $f6, 0x8c($sp)
  /* 01B2E4 8001A6E4 C7A80090 */      lwc1 $f8, 0x90($sp)
  /* 01B2E8 8001A6E8 C7AA0094 */      lwc1 $f10, 0x94($sp)
  /* 01B2EC 8001A6EC C7B00098 */      lwc1 $f16, 0x98($sp)
  /* 01B2F0 8001A6F0 C7B2009C */      lwc1 $f18, 0x9c($sp)
  /* 01B2F4 8001A6F4 AFBF0034 */        sw $ra, 0x34($sp)
  /* 01B2F8 8001A6F8 AFA40078 */        sw $a0, 0x78($sp)
  /* 01B2FC 8001A6FC 44056000 */      mfc1 $a1, $f12
  /* 01B300 8001A700 44067000 */      mfc1 $a2, $f14
  /* 01B304 8001A704 AFA70084 */        sw $a3, 0x84($sp)
  /* 01B308 8001A708 27A40038 */     addiu $a0, $sp, 0x38
  /* 01B30C 8001A70C E7A40028 */      swc1 $f4, 0x28($sp)
  /* 01B310 8001A710 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01B314 8001A714 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01B318 8001A718 E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 01B31C 8001A71C E7B00020 */      swc1 $f16, 0x20($sp)
  /* 01B320 8001A720 0C0068FC */       jal func_8001A3F0
  /* 01B324 8001A724 E7B20024 */      swc1 $f18, 0x24($sp)
  /* 01B328 8001A728 27A40038 */     addiu $a0, $sp, 0x38
  /* 01B32C 8001A72C 0C00671C */       jal func_80019C70
  /* 01B330 8001A730 8FA50078 */        lw $a1, 0x78($sp)
  /* 01B334 8001A734 8FBF0034 */        lw $ra, 0x34($sp)
  /* 01B338 8001A738 27BD0078 */     addiu $sp, $sp, 0x78
  /* 01B33C 8001A73C 03E00008 */        jr $ra
  /* 01B340 8001A740 00000000 */       nop 

