.section .late_rodata

glabel D_8003E3C8
  /* 3DFC8 03EFC8 8003E3C8 */
  .word 0x40490fdb # .float 3.1415927

glabel D_8003E3CC
  /* 3DFCC 03EFCC 8003E3CC */
  .word 0x40490fdb # .float 3.1415927

.section .text
glabel func_8001D2F4
  /* 01DEF4 8001D2F4 3C018004 */       lui $at, %hi(D_8003E3C8)
  /* 01DEF8 8001D2F8 44856000 */      mtc1 $a1, $f12
  /* 01DEFC 8001D2FC C424E3C8 */      lwc1 $f4, %lo(D_8003E3C8)($at)
  /* 01DF00 8001D300 3C014334 */       lui $at, (0x43340000 >> 16) # 180.0
  /* 01DF04 8001D304 44814000 */      mtc1 $at, $f8 # 180.0 to cop1
  /* 01DF08 8001D308 46046182 */     mul.s $f6, $f12, $f4
  /* 01DF0C 8001D30C 27BDFFA0 */     addiu $sp, $sp, -0x60
  /* 01DF10 8001D310 44867000 */      mtc1 $a2, $f14
  /* 01DF14 8001D314 C7B00070 */      lwc1 $f16, 0x70($sp)
  /* 01DF18 8001D318 AFBF001C */        sw $ra, 0x1c($sp)
  /* 01DF1C 8001D31C AFA40060 */        sw $a0, 0x60($sp)
  /* 01DF20 8001D320 44067000 */      mfc1 $a2, $f14
  /* 01DF24 8001D324 46083283 */     div.s $f10, $f6, $f8
  /* 01DF28 8001D328 AFA7006C */        sw $a3, 0x6c($sp)
  /* 01DF2C 8001D32C 27A40020 */     addiu $a0, $sp, 0x20
  /* 01DF30 8001D330 E7B00010 */      swc1 $f16, 0x10($sp)
  /* 01DF34 8001D334 44055000 */      mfc1 $a1, $f10
  /* 01DF38 8001D338 0C006E9E */       jal func_8001BA78
  /* 01DF3C 8001D33C 00000000 */       nop 
  /* 01DF40 8001D340 27A40020 */     addiu $a0, $sp, 0x20
  /* 01DF44 8001D344 0C0067A8 */       jal mtx4f_to_Mtx_fixed_w
  /* 01DF48 8001D348 8FA50060 */        lw $a1, 0x60($sp)
  /* 01DF4C 8001D34C 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01DF50 8001D350 27BD0060 */     addiu $sp, $sp, 0x60
  /* 01DF54 8001D354 03E00008 */        jr $ra
  /* 01DF58 8001D358 00000000 */       nop 

  /* 01DF5C 8001D35C 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 01DF60 8001D360 3C018004 */       lui $at, %hi(D_8003E3CC)
  /* 01DF64 8001D364 C426E3CC */      lwc1 $f6, %lo(D_8003E3CC)($at)
  /* 01DF68 8001D368 C7A40038 */      lwc1 $f4, 0x38($sp)
  /* 01DF6C 8001D36C 3C014334 */       lui $at, (0x43340000 >> 16) # 180.0
  /* 01DF70 8001D370 44815000 */      mtc1 $at, $f10 # 180.0 to cop1
  /* 01DF74 8001D374 46062202 */     mul.s $f8, $f4, $f6
  /* 01DF78 8001D378 44856000 */      mtc1 $a1, $f12
  /* 01DF7C 8001D37C 44867000 */      mtc1 $a2, $f14
  /* 01DF80 8001D380 C7A60044 */      lwc1 $f6, 0x44($sp)
  /* 01DF84 8001D384 C7A40040 */      lwc1 $f4, 0x40($sp)
  /* 01DF88 8001D388 C7B2003C */      lwc1 $f18, 0x3c($sp)
  /* 01DF8C 8001D38C AFBF0024 */        sw $ra, 0x24($sp)
  /* 01DF90 8001D390 460A4403 */     div.s $f16, $f8, $f10
  /* 01DF94 8001D394 44056000 */      mfc1 $a1, $f12
  /* 01DF98 8001D398 44067000 */      mfc1 $a2, $f14
  /* 01DF9C 8001D39C AFA70034 */        sw $a3, 0x34($sp)
  /* 01DFA0 8001D3A0 E7A6001C */      swc1 $f6, 0x1c($sp)
  /* 01DFA4 8001D3A4 E7A40018 */      swc1 $f4, 0x18($sp)
  /* 01DFA8 8001D3A8 E7B20014 */      swc1 $f18, 0x14($sp)
  /* 01DFAC 8001D3AC 0C006F11 */       jal func_8001BC44
  /* 01DFB0 8001D3B0 E7B00010 */      swc1 $f16, 0x10($sp)
  /* 01DFB4 8001D3B4 8FBF0024 */        lw $ra, 0x24($sp)
  /* 01DFB8 8001D3B8 27BD0028 */     addiu $sp, $sp, 0x28
  /* 01DFBC 8001D3BC 03E00008 */        jr $ra
  /* 01DFC0 8001D3C0 00000000 */       nop 

