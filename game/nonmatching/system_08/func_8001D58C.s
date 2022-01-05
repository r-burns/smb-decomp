.section .rodata

glabel D_8003E3E0
  /* 3DFE0 03EFE0 8003E3E0 */
  .word 0x40490fdb # .float 3.1415927
  

.section .text
glabel func_8001D58C
  /* 01E18C 8001D58C 27BDFF98 */     addiu $sp, $sp, -0x68
  /* 01E190 8001D590 3C018004 */       lui $at, %hi(D_8003E3E0)
  /* 01E194 8001D594 C420E3E0 */      lwc1 $f0, %lo(D_8003E3E0)($at)
  /* 01E198 8001D598 C7A40078 */      lwc1 $f4, 0x78($sp)
  /* 01E19C 8001D59C 3C014334 */       lui $at, (0x43340000 >> 16) # 180.0
  /* 01E1A0 8001D5A0 44811000 */      mtc1 $at, $f2 # 180.0 to cop1
  /* 01E1A4 8001D5A4 46002182 */     mul.s $f6, $f4, $f0
  /* 01E1A8 8001D5A8 C7AA007C */      lwc1 $f10, 0x7c($sp)
  /* 01E1AC 8001D5AC C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 01E1B0 8001D5B0 44856000 */      mtc1 $a1, $f12
  /* 01E1B4 8001D5B4 46005402 */     mul.s $f16, $f10, $f0
  /* 01E1B8 8001D5B8 44867000 */      mtc1 $a2, $f14
  /* 01E1BC 8001D5BC AFBF0024 */        sw $ra, 0x24($sp)
  /* 01E1C0 8001D5C0 AFA40068 */        sw $a0, 0x68($sp)
  /* 01E1C4 8001D5C4 44056000 */      mfc1 $a1, $f12
  /* 01E1C8 8001D5C8 44067000 */      mfc1 $a2, $f14
  /* 01E1CC 8001D5CC 46023203 */     div.s $f8, $f6, $f2
  /* 01E1D0 8001D5D0 AFA70074 */        sw $a3, 0x74($sp)
  /* 01E1D4 8001D5D4 27A40028 */     addiu $a0, $sp, 0x28
  /* 01E1D8 8001D5D8 46002182 */     mul.s $f6, $f4, $f0
  /* 01E1DC 8001D5DC 46028483 */     div.s $f18, $f16, $f2
  /* 01E1E0 8001D5E0 E7A80010 */      swc1 $f8, 0x10($sp)
  /* 01E1E4 8001D5E4 46023203 */     div.s $f8, $f6, $f2
  /* 01E1E8 8001D5E8 E7B20014 */      swc1 $f18, 0x14($sp)
  /* 01E1EC 8001D5EC 0C007072 */       jal func_8001C1C8
  /* 01E1F0 8001D5F0 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01E1F4 8001D5F4 27A40028 */     addiu $a0, $sp, 0x28
  /* 01E1F8 8001D5F8 0C0067A8 */       jal func_80019EA0
  /* 01E1FC 8001D5FC 8FA50068 */        lw $a1, 0x68($sp)
  /* 01E200 8001D600 8FBF0024 */        lw $ra, 0x24($sp)
  /* 01E204 8001D604 27BD0068 */     addiu $sp, $sp, 0x68
  /* 01E208 8001D608 03E00008 */        jr $ra
  /* 01E20C 8001D60C 00000000 */       nop 
