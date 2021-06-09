.section .late_rodata

glabel D_8003DDD8
  /* 3D9D8 03E9D8 8003DDD8 */
  .word 0xff7fffff # .float -3.4028235e38

.section .text
glabel func_8000BD8C
  /* 00C98C 8000BD8C 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 00C990 8000BD90 AFBF0034 */        sw $ra, 0x34($sp)
  /* 00C994 8000BD94 AFB20030 */        sw $s2, 0x30($sp)
  /* 00C998 8000BD98 AFB1002C */        sw $s1, 0x2c($sp)
  /* 00C99C 8000BD9C AFB00028 */        sw $s0, 0x28($sp)
  /* 00C9A0 8000BDA0 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 00C9A4 8000BDA4 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00C9A8 8000BDA8 8C900074 */        lw $s0, 0x74($a0)
  /* 00C9AC 8000BDAC 4486A000 */      mtc1 $a2, $f20
  /* 00C9B0 8000BDB0 00A08825 */        or $s1, $a1, $zero
  /* 00C9B4 8000BDB4 24120001 */     addiu $s2, $zero, 1
  /* 00C9B8 8000BDB8 12000013 */      beqz $s0, .L8000BE08
  /* 00C9BC 8000BDBC E4940078 */      swc1 $f20, 0x78($a0)
  /* 00C9C0 8000BDC0 3C018004 */       lui $at, %hi(D_8003DDD8)
  /* 00C9C4 8000BDC4 C436DDD8 */      lwc1 $f22, %lo(D_8003DDD8)($at)
  .L8000BDC8:
  /* 00C9C8 8000BDC8 8E250000 */        lw $a1, ($s1)
  /* 00C9CC 8000BDCC 50A00008 */      beql $a1, $zero, .L8000BDF0
  /* 00C9D0 8000BDD0 E6160074 */      swc1 $f22, 0x74($s0)
  /* 00C9D4 8000BDD4 4406A000 */      mfc1 $a2, $f20
  /* 00C9D8 8000BDD8 0C002F47 */       jal func_8000BD1C
  /* 00C9DC 8000BDDC 02002025 */        or $a0, $s0, $zero
  /* 00C9E0 8000BDE0 A2120055 */        sb $s2, 0x55($s0)
  /* 00C9E4 8000BDE4 10000003 */         b .L8000BDF4
  /* 00C9E8 8000BDE8 00009025 */        or $s2, $zero, $zero
  /* 00C9EC 8000BDEC E6160074 */      swc1 $f22, 0x74($s0)
  .L8000BDF0:
  /* 00C9F0 8000BDF0 A2000055 */        sb $zero, 0x55($s0)
  .L8000BDF4:
  /* 00C9F4 8000BDF4 26310004 */     addiu $s1, $s1, 4
  /* 00C9F8 8000BDF8 0C002EA8 */       jal func_8000BAA0
  /* 00C9FC 8000BDFC 02002025 */        or $a0, $s0, $zero
  /* 00CA00 8000BE00 1440FFF1 */      bnez $v0, .L8000BDC8
  /* 00CA04 8000BE04 00408025 */        or $s0, $v0, $zero
  .L8000BE08:
  /* 00CA08 8000BE08 8FBF0034 */        lw $ra, 0x34($sp)
  /* 00CA0C 8000BE0C D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00CA10 8000BE10 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 00CA14 8000BE14 8FB00028 */        lw $s0, 0x28($sp)
  /* 00CA18 8000BE18 8FB1002C */        lw $s1, 0x2c($sp)
  /* 00CA1C 8000BE1C 8FB20030 */        lw $s2, 0x30($sp)
  /* 00CA20 8000BE20 03E00008 */        jr $ra
  /* 00CA24 8000BE24 27BD0038 */     addiu $sp, $sp, 0x38

