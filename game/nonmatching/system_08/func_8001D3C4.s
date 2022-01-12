.section .late_rodata

glabel D_8003E3D0
  /* 3DFD0 03EFD0 8003E3D0 */
  .word 0x40490fdb # .float 3.1415927

glabel D_8003E3D4
  /* 3DFD4 03EFD4 8003E3D4 */
  .word 0x40490fdb # .float 3.1415927

.section .text
glabel func_8001D3C4
  /* 01DFC4 8001D3C4 27BDFF98 */     addiu $sp, $sp, -0x68
  /* 01DFC8 8001D3C8 3C018004 */       lui $at, %hi(D_8003E3D0)
  /* 01DFCC 8001D3CC C426E3D0 */      lwc1 $f6, %lo(D_8003E3D0)($at)
  /* 01DFD0 8001D3D0 C7A40078 */      lwc1 $f4, 0x78($sp)
  /* 01DFD4 8001D3D4 3C014334 */       lui $at, (0x43340000 >> 16) # 180.0
  /* 01DFD8 8001D3D8 44815000 */      mtc1 $at, $f10 # 180.0 to cop1
  /* 01DFDC 8001D3DC 46062202 */     mul.s $f8, $f4, $f6
  /* 01DFE0 8001D3E0 44856000 */      mtc1 $a1, $f12
  /* 01DFE4 8001D3E4 44867000 */      mtc1 $a2, $f14
  /* 01DFE8 8001D3E8 C7A60084 */      lwc1 $f6, 0x84($sp)
  /* 01DFEC 8001D3EC C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 01DFF0 8001D3F0 C7B2007C */      lwc1 $f18, 0x7c($sp)
  /* 01DFF4 8001D3F4 AFBF0024 */        sw $ra, 0x24($sp)
  /* 01DFF8 8001D3F8 460A4403 */     div.s $f16, $f8, $f10
  /* 01DFFC 8001D3FC AFA40068 */        sw $a0, 0x68($sp)
  /* 01E000 8001D400 44056000 */      mfc1 $a1, $f12
  /* 01E004 8001D404 44067000 */      mfc1 $a2, $f14
  /* 01E008 8001D408 AFA70074 */        sw $a3, 0x74($sp)
  /* 01E00C 8001D40C 27A40028 */     addiu $a0, $sp, 0x28
  /* 01E010 8001D410 E7A6001C */      swc1 $f6, 0x1c($sp)
  /* 01E014 8001D414 E7A40018 */      swc1 $f4, 0x18($sp)
  /* 01E018 8001D418 E7B20014 */      swc1 $f18, 0x14($sp)
  /* 01E01C 8001D41C 0C006F11 */       jal func_8001BC44
  /* 01E020 8001D420 E7B00010 */      swc1 $f16, 0x10($sp)
  /* 01E024 8001D424 27A40028 */     addiu $a0, $sp, 0x28
  /* 01E028 8001D428 0C0067A8 */       jal mtx4f_to_Mtx_fixed_w
  /* 01E02C 8001D42C 8FA50068 */        lw $a1, 0x68($sp)
  /* 01E030 8001D430 8FBF0024 */        lw $ra, 0x24($sp)
  /* 01E034 8001D434 27BD0068 */     addiu $sp, $sp, 0x68
  /* 01E038 8001D438 03E00008 */        jr $ra
  /* 01E03C 8001D43C 00000000 */       nop 

  /* 01E040 8001D440 3C018004 */       lui $at, %hi(D_8003E3D4)
  /* 01E044 8001D444 C420E3D4 */      lwc1 $f0, %lo(D_8003E3D4)($at)
  /* 01E048 8001D448 44856000 */      mtc1 $a1, $f12
  /* 01E04C 8001D44C 44867000 */      mtc1 $a2, $f14
  /* 01E050 8001D450 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01E054 8001D454 46006102 */     mul.s $f4, $f12, $f0
  /* 01E058 8001D458 AFA70024 */        sw $a3, 0x24($sp)
  /* 01E05C 8001D45C C7B00024 */      lwc1 $f16, 0x24($sp)
  /* 01E060 8001D460 46007202 */     mul.s $f8, $f14, $f0
  /* 01E064 8001D464 3C014334 */       lui $at, (0x43340000 >> 16) # 180.0
  /* 01E068 8001D468 44811000 */      mtc1 $at, $f2 # 180.0 to cop1
  /* 01E06C 8001D46C 46008482 */     mul.s $f18, $f16, $f0
  /* 01E070 8001D470 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01E074 8001D474 46022183 */     div.s $f6, $f4, $f2
  /* 01E078 8001D478 46029103 */     div.s $f4, $f18, $f2
  /* 01E07C 8001D47C 44053000 */      mfc1 $a1, $f6
  /* 01E080 8001D480 46024283 */     div.s $f10, $f8, $f2
  /* 01E084 8001D484 44072000 */      mfc1 $a3, $f4
  /* 01E088 8001D488 44065000 */      mfc1 $a2, $f10
  /* 01E08C 8001D48C 0C006F7B */       jal func_8001BDEC
  /* 01E090 8001D490 00000000 */       nop 
  /* 01E094 8001D494 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01E098 8001D498 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01E09C 8001D49C 03E00008 */        jr $ra
  /* 01E0A0 8001D4A0 00000000 */       nop 

