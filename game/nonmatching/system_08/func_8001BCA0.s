.section .text
glabel func_8001BCA0
  /* 01C8A0 8001BCA0 27BDFF98 */     addiu $sp, $sp, -0x68
  /* 01C8A4 8001BCA4 44856000 */      mtc1 $a1, $f12
  /* 01C8A8 8001BCA8 44867000 */      mtc1 $a2, $f14
  /* 01C8AC 8001BCAC C7A40078 */      lwc1 $f4, 0x78($sp)
  /* 01C8B0 8001BCB0 C7A6007C */      lwc1 $f6, 0x7c($sp)
  /* 01C8B4 8001BCB4 C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 01C8B8 8001BCB8 C7AA0084 */      lwc1 $f10, 0x84($sp)
  /* 01C8BC 8001BCBC AFBF0024 */        sw $ra, 0x24($sp)
  /* 01C8C0 8001BCC0 AFA40068 */        sw $a0, 0x68($sp)
  /* 01C8C4 8001BCC4 44056000 */      mfc1 $a1, $f12
  /* 01C8C8 8001BCC8 44067000 */      mfc1 $a2, $f14
  /* 01C8CC 8001BCCC AFA70074 */        sw $a3, 0x74($sp)
  /* 01C8D0 8001BCD0 27A40028 */     addiu $a0, $sp, 0x28
  /* 01C8D4 8001BCD4 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01C8D8 8001BCD8 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01C8DC 8001BCDC E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01C8E0 8001BCE0 0C006F11 */       jal func_8001BC44
  /* 01C8E4 8001BCE4 E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 01C8E8 8001BCE8 27A40028 */     addiu $a0, $sp, 0x28
  /* 01C8EC 8001BCEC 0C0067A8 */       jal func_80019EA0
  /* 01C8F0 8001BCF0 8FA50068 */        lw $a1, 0x68($sp)
  /* 01C8F4 8001BCF4 8FBF0024 */        lw $ra, 0x24($sp)
  /* 01C8F8 8001BCF8 27BD0068 */     addiu $sp, $sp, 0x68
  /* 01C8FC 8001BCFC 03E00008 */        jr $ra
  /* 01C900 8001BD00 00000000 */       nop 

