.section .late_rodata

glabel D_8003E3D8
  /* 3DFD8 03EFD8 8003E3D8 */
  .word 0x40490fdb # .float 3.1415927

glabel D_8003E3DC
  /* 3DFDC 03EFDC 8003E3DC */
  .word 0x40490fdb # .float 3.1415927

.section .text
glabel func_8001D4A4
  /* 01E0A4 8001D4A4 3C018004 */       lui $at, %hi(D_8003E3D8)
  /* 01E0A8 8001D4A8 C420E3D8 */      lwc1 $f0, %lo(D_8003E3D8)($at)
  /* 01E0AC 8001D4AC 44856000 */      mtc1 $a1, $f12
  /* 01E0B0 8001D4B0 44867000 */      mtc1 $a2, $f14
  /* 01E0B4 8001D4B4 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 01E0B8 8001D4B8 46006102 */     mul.s $f4, $f12, $f0
  /* 01E0BC 8001D4BC AFA70064 */        sw $a3, 0x64($sp)
  /* 01E0C0 8001D4C0 C7B00064 */      lwc1 $f16, 0x64($sp)
  /* 01E0C4 8001D4C4 46007202 */     mul.s $f8, $f14, $f0
  /* 01E0C8 8001D4C8 3C014334 */       lui $at, (0x43340000 >> 16) # 180.0
  /* 01E0CC 8001D4CC 44811000 */      mtc1 $at, $f2 # 180.0 to cop1
  /* 01E0D0 8001D4D0 46008482 */     mul.s $f18, $f16, $f0
  /* 01E0D4 8001D4D4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01E0D8 8001D4D8 AFA40058 */        sw $a0, 0x58($sp)
  /* 01E0DC 8001D4DC 27A40018 */     addiu $a0, $sp, 0x18
  /* 01E0E0 8001D4E0 46022183 */     div.s $f6, $f4, $f2
  /* 01E0E4 8001D4E4 46029103 */     div.s $f4, $f18, $f2
  /* 01E0E8 8001D4E8 44053000 */      mfc1 $a1, $f6
  /* 01E0EC 8001D4EC 46024283 */     div.s $f10, $f8, $f2
  /* 01E0F0 8001D4F0 44072000 */      mfc1 $a3, $f4
  /* 01E0F4 8001D4F4 44065000 */      mfc1 $a2, $f10
  /* 01E0F8 8001D4F8 0C006F7B */       jal func_8001BDEC
  /* 01E0FC 8001D4FC 00000000 */       nop 
  /* 01E100 8001D500 27A40018 */     addiu $a0, $sp, 0x18
  /* 01E104 8001D504 0C0067A8 */       jal mtx4f_to_Mtx_fixed_w
  /* 01E108 8001D508 8FA50058 */        lw $a1, 0x58($sp)
  /* 01E10C 8001D50C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01E110 8001D510 27BD0058 */     addiu $sp, $sp, 0x58
  /* 01E114 8001D514 03E00008 */        jr $ra
  /* 01E118 8001D518 00000000 */       nop 

  /* 01E11C 8001D51C 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 01E120 8001D520 3C018004 */       lui $at, %hi(D_8003E3DC)
  /* 01E124 8001D524 C420E3DC */      lwc1 $f0, %lo(D_8003E3DC)($at)
  /* 01E128 8001D528 C7A40038 */      lwc1 $f4, 0x38($sp)
  /* 01E12C 8001D52C 3C014334 */       lui $at, (0x43340000 >> 16) # 180.0
  /* 01E130 8001D530 44811000 */      mtc1 $at, $f2 # 180.0 to cop1
  /* 01E134 8001D534 46002182 */     mul.s $f6, $f4, $f0
  /* 01E138 8001D538 C7AA003C */      lwc1 $f10, 0x3c($sp)
  /* 01E13C 8001D53C C7A40040 */      lwc1 $f4, 0x40($sp)
  /* 01E140 8001D540 44856000 */      mtc1 $a1, $f12
  /* 01E144 8001D544 46005402 */     mul.s $f16, $f10, $f0
  /* 01E148 8001D548 44867000 */      mtc1 $a2, $f14
  /* 01E14C 8001D54C AFBF0024 */        sw $ra, 0x24($sp)
  /* 01E150 8001D550 44056000 */      mfc1 $a1, $f12
  /* 01E154 8001D554 44067000 */      mfc1 $a2, $f14
  /* 01E158 8001D558 AFA70034 */        sw $a3, 0x34($sp)
  /* 01E15C 8001D55C 46023203 */     div.s $f8, $f6, $f2
  /* 01E160 8001D560 46002182 */     mul.s $f6, $f4, $f0
  /* 01E164 8001D564 46028483 */     div.s $f18, $f16, $f2
  /* 01E168 8001D568 E7A80010 */      swc1 $f8, 0x10($sp)
  /* 01E16C 8001D56C 46023203 */     div.s $f8, $f6, $f2
  /* 01E170 8001D570 E7B20014 */      swc1 $f18, 0x14($sp)
  /* 01E174 8001D574 0C007072 */       jal func_8001C1C8
  /* 01E178 8001D578 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01E17C 8001D57C 8FBF0024 */        lw $ra, 0x24($sp)
  /* 01E180 8001D580 27BD0028 */     addiu $sp, $sp, 0x28
  /* 01E184 8001D584 03E00008 */        jr $ra
  /* 01E188 8001D588 00000000 */       nop 

