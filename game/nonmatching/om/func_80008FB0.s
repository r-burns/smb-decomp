.section .late_rodata

glabel D_8003DD68
  /* 3D968 03E968 8003DD68 */
  .word 0xff7fffff # .float -3.4028235e38

.section .text
glabel func_80008FB0
  /* 009BB0 80008FB0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009BB4 80008FB4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 009BB8 80008FB8 AFB10018 */        sw $s1, 0x18($sp)
  /* 009BBC 80008FBC AFB00014 */        sw $s0, 0x14($sp)
  /* 009BC0 80008FC0 AFA40020 */        sw $a0, 0x20($sp)
  /* 009BC4 80008FC4 8C900090 */        lw $s0, 0x90($a0)
  /* 009BC8 80008FC8 52000007 */      beql $s0, $zero, .L80008FE8
  /* 009BCC 80008FCC 8FAF0020 */        lw $t7, 0x20($sp)
  .L80008FD0:
  /* 009BD0 80008FD0 8E110000 */        lw $s1, ($s0)
  /* 009BD4 80008FD4 0C001FAC */       jal func_80007EB0
  /* 009BD8 80008FD8 02002025 */        or $a0, $s0, $zero
  /* 009BDC 80008FDC 1620FFFC */      bnez $s1, .L80008FD0
  /* 009BE0 80008FE0 02208025 */        or $s0, $s1, $zero
  /* 009BE4 80008FE4 8FAF0020 */        lw $t7, 0x20($sp)
  .L80008FE8:
  /* 009BE8 80008FE8 3C018004 */       lui $at, %hi(D_8003DD68)
  /* 009BEC 80008FEC ADE00090 */        sw $zero, 0x90($t7)
  /* 009BF0 80008FF0 8FB80020 */        lw $t8, 0x20($sp)
  /* 009BF4 80008FF4 C424DD68 */      lwc1 $f4, %lo(D_8003DD68)($at)
  /* 009BF8 80008FF8 E7040098 */      swc1 $f4, 0x98($t8)
  /* 009BFC 80008FFC 8FBF001C */        lw $ra, 0x1c($sp)
  /* 009C00 80009000 8FB10018 */        lw $s1, 0x18($sp)
  /* 009C04 80009004 8FB00014 */        lw $s0, 0x14($sp)
  /* 009C08 80009008 03E00008 */        jr $ra
  /* 009C0C 8000900C 27BD0020 */     addiu $sp, $sp, 0x20

