.section .late_rodata

glabel D_8003E3C4
  /* 3DFC4 03EFC4 8003E3C4 */
  .word 0x40490fdb # .float 3.1415927

.section .text
glabel func_8001D208
  /* 01DE08 8001D208 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01DE0C 8001D20C AFBF0014 */        sw $ra, 0x14($sp)
  /* 01DE10 8001D210 AFA5001C */        sw $a1, 0x1c($sp)
  /* 01DE14 8001D214 AFA60020 */        sw $a2, 0x20($sp)
  /* 01DE18 8001D218 AFA70024 */        sw $a3, 0x24($sp)
  /* 01DE1C 8001D21C 8FA50028 */        lw $a1, 0x28($sp)
  /* 01DE20 8001D220 0C007450 */       jal func_8001D140
  /* 01DE24 8001D224 AFA40018 */        sw $a0, 0x18($sp)
  /* 01DE28 8001D228 8FA40018 */        lw $a0, 0x18($sp)
  /* 01DE2C 8001D22C C7A4001C */      lwc1 $f4, 0x1c($sp)
  /* 01DE30 8001D230 E4840030 */      swc1 $f4, 0x30($a0)
  /* 01DE34 8001D234 C7A60020 */      lwc1 $f6, 0x20($sp)
  /* 01DE38 8001D238 E4860034 */      swc1 $f6, 0x34($a0)
  /* 01DE3C 8001D23C C7A80024 */      lwc1 $f8, 0x24($sp)
  /* 01DE40 8001D240 E4880038 */      swc1 $f8, 0x38($a0)
  /* 01DE44 8001D244 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01DE48 8001D248 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01DE4C 8001D24C 03E00008 */        jr $ra
  /* 01DE50 8001D250 00000000 */       nop 

  /* 01DE54 8001D254 27BDFFA0 */     addiu $sp, $sp, -0x60
  /* 01DE58 8001D258 44856000 */      mtc1 $a1, $f12
  /* 01DE5C 8001D25C 44867000 */      mtc1 $a2, $f14
  /* 01DE60 8001D260 C7A40070 */      lwc1 $f4, 0x70($sp)
  /* 01DE64 8001D264 AFBF001C */        sw $ra, 0x1c($sp)
  /* 01DE68 8001D268 AFA40060 */        sw $a0, 0x60($sp)
  /* 01DE6C 8001D26C 44056000 */      mfc1 $a1, $f12
  /* 01DE70 8001D270 44067000 */      mfc1 $a2, $f14
  /* 01DE74 8001D274 AFA7006C */        sw $a3, 0x6c($sp)
  /* 01DE78 8001D278 27A40020 */     addiu $a0, $sp, 0x20
  /* 01DE7C 8001D27C 0C007482 */       jal func_8001D208
  /* 01DE80 8001D280 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01DE84 8001D284 27A40020 */     addiu $a0, $sp, 0x20
  /* 01DE88 8001D288 0C0067A8 */       jal mtx4f_to_Mtx_fixed_w
  /* 01DE8C 8001D28C 8FA50060 */        lw $a1, 0x60($sp)
  /* 01DE90 8001D290 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01DE94 8001D294 27BD0060 */     addiu $sp, $sp, 0x60
  /* 01DE98 8001D298 03E00008 */        jr $ra
  /* 01DE9C 8001D29C 00000000 */       nop 

  /* 01DEA0 8001D2A0 3C018004 */       lui $at, %hi(D_8003E3C4)
  /* 01DEA4 8001D2A4 44856000 */      mtc1 $a1, $f12
  /* 01DEA8 8001D2A8 C424E3C4 */      lwc1 $f4, %lo(D_8003E3C4)($at)
  /* 01DEAC 8001D2AC 3C014334 */       lui $at, (0x43340000 >> 16) # 180.0
  /* 01DEB0 8001D2B0 44814000 */      mtc1 $at, $f8 # 180.0 to cop1
  /* 01DEB4 8001D2B4 46046182 */     mul.s $f6, $f12, $f4
  /* 01DEB8 8001D2B8 44867000 */      mtc1 $a2, $f14
  /* 01DEBC 8001D2BC 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 01DEC0 8001D2C0 C7B00030 */      lwc1 $f16, 0x30($sp)
  /* 01DEC4 8001D2C4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 01DEC8 8001D2C8 44067000 */      mfc1 $a2, $f14
  /* 01DECC 8001D2CC AFA7002C */        sw $a3, 0x2c($sp)
  /* 01DED0 8001D2D0 46083283 */     div.s $f10, $f6, $f8
  /* 01DED4 8001D2D4 E7B00010 */      swc1 $f16, 0x10($sp)
  /* 01DED8 8001D2D8 44055000 */      mfc1 $a1, $f10
  /* 01DEDC 8001D2DC 0C006E9E */       jal func_8001BA78
  /* 01DEE0 8001D2E0 00000000 */       nop 
  /* 01DEE4 8001D2E4 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01DEE8 8001D2E8 27BD0020 */     addiu $sp, $sp, 0x20
  /* 01DEEC 8001D2EC 03E00008 */        jr $ra
  /* 01DEF0 8001D2F0 00000000 */       nop 

