.section .text
glabel func_8001B1E4
  /* 01BDE4 8001B1E4 27BDFF98 */     addiu $sp, $sp, -0x68
  /* 01BDE8 8001B1E8 44856000 */      mtc1 $a1, $f12
  /* 01BDEC 8001B1EC 44867000 */      mtc1 $a2, $f14
  /* 01BDF0 8001B1F0 C7A40078 */      lwc1 $f4, 0x78($sp)
  /* 01BDF4 8001B1F4 C7A6007C */      lwc1 $f6, 0x7c($sp)
  /* 01BDF8 8001B1F8 C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 01BDFC 8001B1FC C7AA0084 */      lwc1 $f10, 0x84($sp)
  /* 01BE00 8001B200 AFBF0024 */        sw $ra, 0x24($sp)
  /* 01BE04 8001B204 AFA40068 */        sw $a0, 0x68($sp)
  /* 01BE08 8001B208 44056000 */      mfc1 $a1, $f12
  /* 01BE0C 8001B20C 44067000 */      mfc1 $a2, $f14
  /* 01BE10 8001B210 AFA70074 */        sw $a3, 0x74($sp)
  /* 01BE14 8001B214 27A40028 */     addiu $a0, $sp, 0x28
  /* 01BE18 8001B218 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01BE1C 8001B21C E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01BE20 8001B220 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01BE24 8001B224 0C006C14 */       jal func_8001B050
  /* 01BE28 8001B228 E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 01BE2C 8001B22C 27A40028 */     addiu $a0, $sp, 0x28
  /* 01BE30 8001B230 0C00671C */       jal mtx4f_to_Mtx
  /* 01BE34 8001B234 8FA50068 */        lw $a1, 0x68($sp)
  /* 01BE38 8001B238 8FBF0024 */        lw $ra, 0x24($sp)
  /* 01BE3C 8001B23C 27BD0068 */     addiu $sp, $sp, 0x68
  /* 01BE40 8001B240 03E00008 */        jr $ra
  /* 01BE44 8001B244 00000000 */       nop 

