.section .text
glabel func_8001D0A8
  /* 01DCA8 8001D0A8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01DCAC 8001D0AC AFBF0014 */        sw $ra, 0x14($sp)
  /* 01DCB0 8001D0B0 AFA5001C */        sw $a1, 0x1c($sp)
  /* 01DCB4 8001D0B4 AFA60020 */        sw $a2, 0x20($sp)
  /* 01DCB8 8001D0B8 AFA70024 */        sw $a3, 0x24($sp)
  /* 01DCBC 8001D0BC 8FA50028 */        lw $a1, 0x28($sp)
  /* 01DCC0 8001D0C0 0C0073F8 */       jal func_8001CFE0
  /* 01DCC4 8001D0C4 AFA40018 */        sw $a0, 0x18($sp)
  /* 01DCC8 8001D0C8 8FA40018 */        lw $a0, 0x18($sp)
  /* 01DCCC 8001D0CC C7A4001C */      lwc1 $f4, 0x1c($sp)
  /* 01DCD0 8001D0D0 E4840030 */      swc1 $f4, 0x30($a0)
  /* 01DCD4 8001D0D4 C7A60020 */      lwc1 $f6, 0x20($sp)
  /* 01DCD8 8001D0D8 E4860034 */      swc1 $f6, 0x34($a0)
  /* 01DCDC 8001D0DC C7A80024 */      lwc1 $f8, 0x24($sp)
  /* 01DCE0 8001D0E0 E4880038 */      swc1 $f8, 0x38($a0)
  /* 01DCE4 8001D0E4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01DCE8 8001D0E8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01DCEC 8001D0EC 03E00008 */        jr $ra
  /* 01DCF0 8001D0F0 00000000 */       nop 

  /* 01DCF4 8001D0F4 27BDFFA0 */     addiu $sp, $sp, -0x60
  /* 01DCF8 8001D0F8 44856000 */      mtc1 $a1, $f12
  /* 01DCFC 8001D0FC 44867000 */      mtc1 $a2, $f14
  /* 01DD00 8001D100 C7A40070 */      lwc1 $f4, 0x70($sp)
  /* 01DD04 8001D104 AFBF001C */        sw $ra, 0x1c($sp)
  /* 01DD08 8001D108 AFA40060 */        sw $a0, 0x60($sp)
  /* 01DD0C 8001D10C 44056000 */      mfc1 $a1, $f12
  /* 01DD10 8001D110 44067000 */      mfc1 $a2, $f14
  /* 01DD14 8001D114 AFA7006C */        sw $a3, 0x6c($sp)
  /* 01DD18 8001D118 27A40020 */     addiu $a0, $sp, 0x20
  /* 01DD1C 8001D11C 0C00742A */       jal func_8001D0A8
  /* 01DD20 8001D120 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01DD24 8001D124 27A40020 */     addiu $a0, $sp, 0x20
  /* 01DD28 8001D128 0C0067A8 */       jal mtx4f_to_Mtx_fixed_w
  /* 01DD2C 8001D12C 8FA50060 */        lw $a1, 0x60($sp)
  /* 01DD30 8001D130 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01DD34 8001D134 27BD0060 */     addiu $sp, $sp, 0x60
  /* 01DD38 8001D138 03E00008 */        jr $ra
  /* 01DD3C 8001D13C 00000000 */       nop 

