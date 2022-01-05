.section .text
glabel func_8001BD70
  /* 01C970 8001BD70 27BDFF88 */     addiu $sp, $sp, -0x78
  /* 01C974 8001BD74 C7A40088 */      lwc1 $f4, 0x88($sp)
  /* 01C978 8001BD78 44856000 */      mtc1 $a1, $f12
  /* 01C97C 8001BD7C 44867000 */      mtc1 $a2, $f14
  /* 01C980 8001BD80 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01C984 8001BD84 C7A400A0 */      lwc1 $f4, 0xa0($sp)
  /* 01C988 8001BD88 C7A6008C */      lwc1 $f6, 0x8c($sp)
  /* 01C98C 8001BD8C C7A80090 */      lwc1 $f8, 0x90($sp)
  /* 01C990 8001BD90 C7AA0094 */      lwc1 $f10, 0x94($sp)
  /* 01C994 8001BD94 C7B00098 */      lwc1 $f16, 0x98($sp)
  /* 01C998 8001BD98 C7B2009C */      lwc1 $f18, 0x9c($sp)
  /* 01C99C 8001BD9C AFBF0034 */        sw $ra, 0x34($sp)
  /* 01C9A0 8001BDA0 AFA40078 */        sw $a0, 0x78($sp)
  /* 01C9A4 8001BDA4 44056000 */      mfc1 $a1, $f12
  /* 01C9A8 8001BDA8 44067000 */      mfc1 $a2, $f14
  /* 01C9AC 8001BDAC AFA70084 */        sw $a3, 0x84($sp)
  /* 01C9B0 8001BDB0 27A40038 */     addiu $a0, $sp, 0x38
  /* 01C9B4 8001BDB4 E7A40028 */      swc1 $f4, 0x28($sp)
  /* 01C9B8 8001BDB8 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01C9BC 8001BDBC E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01C9C0 8001BDC0 E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 01C9C4 8001BDC4 E7B00020 */      swc1 $f16, 0x20($sp)
  /* 01C9C8 8001BDC8 0C006F41 */       jal func_8001BD04
  /* 01C9CC 8001BDCC E7B20024 */      swc1 $f18, 0x24($sp)
  /* 01C9D0 8001BDD0 27A40038 */     addiu $a0, $sp, 0x38
  /* 01C9D4 8001BDD4 0C0067A8 */       jal func_80019EA0
  /* 01C9D8 8001BDD8 8FA50078 */        lw $a1, 0x78($sp)
  /* 01C9DC 8001BDDC 8FBF0034 */        lw $ra, 0x34($sp)
  /* 01C9E0 8001BDE0 27BD0078 */     addiu $sp, $sp, 0x78
  /* 01C9E4 8001BDE4 03E00008 */        jr $ra
  /* 01C9E8 8001BDE8 00000000 */       nop 

