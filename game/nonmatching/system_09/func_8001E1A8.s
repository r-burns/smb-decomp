.section .late_rodata
glabel D_8003E400
  /* 3E000 03F000 8003E400 */
  .word 0xba83126f # .float -0.001

.section .text
glabel func_8001E1A8
  /* 01EDA8 8001E1A8 460C6002 */     mul.s $f0, $f12, $f12
  /* 01EDAC 8001E1AC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01EDB0 8001E1B0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01EDB4 8001E1B4 C4A40000 */      lwc1 $f4, ($a1)
  /* 01EDB8 8001E1B8 C4AA0004 */      lwc1 $f10, 4($a1)
  /* 01EDBC 8001E1BC 44808000 */      mtc1 $zero, $f16
  /* 01EDC0 8001E1C0 3C018004 */       lui $at, %hi(D_8003E400)
  /* 01EDC4 8001E1C4 460C0082 */     mul.s $f2, $f0, $f12
  /* 01EDC8 8001E1C8 00000000 */       nop 
  /* 01EDCC 8001E1CC 460C1182 */     mul.s $f6, $f2, $f12
  /* 01EDD0 8001E1D0 00000000 */       nop 
  /* 01EDD4 8001E1D4 46062202 */     mul.s $f8, $f4, $f6
  /* 01EDD8 8001E1D8 C4A60008 */      lwc1 $f6, 8($a1)
  /* 01EDDC 8001E1DC 46025482 */     mul.s $f18, $f10, $f2
  /* 01EDE0 8001E1E0 46124100 */     add.s $f4, $f8, $f18
  /* 01EDE4 8001E1E4 46003282 */     mul.s $f10, $f6, $f0
  /* 01EDE8 8001E1E8 C4B2000C */      lwc1 $f18, 0xc($a1)
  /* 01EDEC 8001E1EC 460C9182 */     mul.s $f6, $f18, $f12
  /* 01EDF0 8001E1F0 460A2200 */     add.s $f8, $f4, $f10
  /* 01EDF4 8001E1F4 C4AA0010 */      lwc1 $f10, 0x10($a1)
  /* 01EDF8 8001E1F8 46064100 */     add.s $f4, $f8, $f6
  /* 01EDFC 8001E1FC 46045380 */     add.s $f14, $f10, $f4
  /* 01EE00 8001E200 4610703C */    c.lt.s $f14, $f16
  /* 01EE04 8001E204 00000000 */       nop 
  /* 01EE08 8001E208 45000007 */      bc1f .L8001E228
  /* 01EE0C 8001E20C 00000000 */       nop 
  /* 01EE10 8001E210 C432E400 */      lwc1 $f18, %lo(D_8003E400)($at)
  /* 01EE14 8001E214 460E903C */    c.lt.s $f18, $f14
  /* 01EE18 8001E218 00000000 */       nop 
  /* 01EE1C 8001E21C 45000002 */      bc1f .L8001E228
  /* 01EE20 8001E220 00000000 */       nop 
  /* 01EE24 8001E224 46008386 */     mov.s $f14, $f16
  .L8001E228:
  /* 01EE28 8001E228 0C00CD44 */       jal sqrtf
  /* 01EE2C 8001E22C 46007306 */     mov.s $f12, $f14
  /* 01EE30 8001E230 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01EE34 8001E234 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01EE38 8001E238 03E00008 */        jr $ra
  /* 01EE3C 8001E23C 00000000 */       nop 

