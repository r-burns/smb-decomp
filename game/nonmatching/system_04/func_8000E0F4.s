.section .late_rodata

glabel D_8003DF50
  /* 3DB50 03EB50 8003DF50 */  .word L8000E118
  /* 3DB54 03EB54 8003DF54 */  .word L8000E120
  /* 3DB58 03EB58 8003DF58 */  .word L8000E128
  /* 3DB5C 03EB5C 8003DF5C */  .word L8000E15C
  /* 3DB60 03EB60 8003DF60 */  .word L8000E130
  /* 3DB64 03EB64 8003DF64 */  .word L8000E138
  /* 3DB68 03EB68 8003DF68 */  .word L8000E140
  /* 3DB6C 03EB6C 8003DF6C */  .word L8000E148
  /* 3DB70 03EB70 8003DF70 */  .word L8000E150
  /* 3DB74 03EB74 8003DF74 */  .word L8000E158


.section .text
glabel func_8000E0F4
  /* 00ECF4 8000E0F4 24AEFFFF */     addiu $t6, $a1, -1
  /* 00ECF8 8000E0F8 2DC1000A */     sltiu $at, $t6, 0xa
  /* 00ECFC 8000E0FC 10200017 */      beqz $at, L8000E15C
  /* 00ED00 8000E100 000E7080 */       sll $t6, $t6, 2
  /* 00ED04 8000E104 3C018004 */       lui $at, %hi(D_8003DF50)
  /* 00ED08 8000E108 002E0821 */      addu $at, $at, $t6
  /* 00ED0C 8000E10C 8C2EDF50 */        lw $t6, %lo(D_8003DF50)($at)
  /* 00ED10 8000E110 01C00008 */        jr $t6
  /* 00ED14 8000E114 00000000 */       nop 
  glabel L8000E118
  /* 00ED18 8000E118 03E00008 */        jr $ra
  /* 00ED1C 8000E11C C4800014 */      lwc1 $f0, 0x14($a0)

  glabel L8000E120
  /* 00ED20 8000E120 03E00008 */        jr $ra
  /* 00ED24 8000E124 C4800018 */      lwc1 $f0, 0x18($a0)

  glabel L8000E128
  /* 00ED28 8000E128 03E00008 */        jr $ra
  /* 00ED2C 8000E12C C480001C */      lwc1 $f0, 0x1c($a0)

  glabel L8000E130
  /* 00ED30 8000E130 03E00008 */        jr $ra
  /* 00ED34 8000E134 C4800008 */      lwc1 $f0, 8($a0)

  glabel L8000E138
  /* 00ED38 8000E138 03E00008 */        jr $ra
  /* 00ED3C 8000E13C C480000C */      lwc1 $f0, 0xc($a0)

  glabel L8000E140
  /* 00ED40 8000E140 03E00008 */        jr $ra
  /* 00ED44 8000E144 C4800010 */      lwc1 $f0, 0x10($a0)

  glabel L8000E148
  /* 00ED48 8000E148 03E00008 */        jr $ra
  /* 00ED4C 8000E14C C4800020 */      lwc1 $f0, 0x20($a0)

  glabel L8000E150
  /* 00ED50 8000E150 03E00008 */        jr $ra
  /* 00ED54 8000E154 C4800024 */      lwc1 $f0, 0x24($a0)

  glabel L8000E158
  /* 00ED58 8000E158 C4800028 */      lwc1 $f0, 0x28($a0)
  glabel L8000E15C
  /* 00ED5C 8000E15C 03E00008 */        jr $ra
  /* 00ED60 8000E160 00000000 */       nop 

