.section .text
glabel unref_80013ED4
  /* 014AD4 80013ED4 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 014AD8 80013ED8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 014ADC 80013EDC 3C058004 */       lui $a1, %hi(D_800465B0 + 12)
  /* 014AE0 80013EE0 0C004F64 */       jal func_80013D90
  /* 014AE4 80013EE4 24A565BC */     addiu $a1, $a1, %lo(D_800465B0 + 12)
  /* 014AE8 80013EE8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 014AEC 80013EEC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 014AF0 80013EF0 03E00008 */        jr $ra
  /* 014AF4 80013EF4 00000000 */       nop 

