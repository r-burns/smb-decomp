glabel func_80000DD4
  /* 0019D4 80000DD4 8C820010 */        lw $v0, 0x10($a0)
  /* 0019D8 80000DD8 50400005 */      beql $v0, $zero, .L80000DF0
  /* 0019DC 80000DDC 8C8F000C */        lw $t7, 0xc($a0)
  /* 0019E0 80000DE0 8C8E000C */        lw $t6, 0xc($a0)
  /* 0019E4 80000DE4 10000004 */         b .L80000DF8
  /* 0019E8 80000DE8 AC4E000C */        sw $t6, 0xc($v0)
  /* 0019EC 80000DEC 8C8F000C */        lw $t7, 0xc($a0)
  .L80000DF0:
  /* 0019F0 80000DF0 3C018004 */       lui $at, %hi(D_80044ED4)
  /* 0019F4 80000DF4 AC2F4ED4 */        sw $t7, %lo(D_80044ED4)($at)
  .L80000DF8:
  /* 0019F8 80000DF8 8C82000C */        lw $v0, 0xc($a0)
  /* 0019FC 80000DFC 50400005 */      beql $v0, $zero, .L80000E14
  /* 001A00 80000E00 8C990010 */        lw $t9, 0x10($a0)
  /* 001A04 80000E04 8C980010 */        lw $t8, 0x10($a0)
  /* 001A08 80000E08 03E00008 */        jr $ra
  /* 001A0C 80000E0C AC580010 */        sw $t8, 0x10($v0)

  /* 001A10 80000E10 8C990010 */        lw $t9, 0x10($a0)
  .L80000E14:
  /* 001A14 80000E14 3C018004 */       lui $at, %hi(D_80044ED8)
  /* 001A18 80000E18 AC394ED8 */        sw $t9, %lo(D_80044ED8)($at)
  /* 001A1C 80000E1C 03E00008 */        jr $ra
  /* 001A20 80000E20 00000000 */       nop 

