.section .text
glabel func_ovl0_800CDF78
  /* 049958 800CDF78 8C8E0000 */        lw $t6, ($a0)
  /* 04995C 800CDF7C 3C02800D */       lui $v0, %hi(D_ovl0_800D62E0)
  /* 049960 800CDF80 244262E0 */     addiu $v0, $v0, %lo(D_ovl0_800D62E0)
  /* 049964 800CDF84 AC4E0000 */        sw $t6, ($v0) # D_ovl0_800D62E0 + 0
  /* 049968 800CDF88 8C8F0004 */        lw $t7, 4($a0)
  /* 04996C 800CDF8C 2401FFF0 */     addiu $at, $zero, -0x10
  /* 049970 800CDF90 3C03800D */       lui $v1, %hi(D_ovl0_800D6334)
  /* 049974 800CDF94 AC4F0004 */        sw $t7, 4($v0) # D_ovl0_800D62E0 + 4
  /* 049978 800CDF98 8C990004 */        lw $t9, 4($a0)
  /* 04997C 800CDF9C 8C980000 */        lw $t8, ($a0)
  /* 049980 800CDFA0 24636334 */     addiu $v1, $v1, %lo(D_ovl0_800D6334)
  /* 049984 800CDFA4 00194080 */       sll $t0, $t9, 2
  /* 049988 800CDFA8 01194023 */      subu $t0, $t0, $t9
  /* 04998C 800CDFAC 00084080 */       sll $t0, $t0, 2
  /* 049990 800CDFB0 03084821 */      addu $t1, $t8, $t0
  /* 049994 800CDFB4 252A000C */     addiu $t2, $t1, 0xc
  /* 049998 800CDFB8 AC4A0008 */        sw $t2, 8($v0) # D_ovl0_800D62E0 + 8
  /* 04999C 800CDFBC 8C8B0008 */        lw $t3, 8($a0)
  /* 0499A0 800CDFC0 3C19800D */       lui $t9, %hi(D_ovl0_800D6310)
  /* 0499A4 800CDFC4 27396310 */     addiu $t9, $t9, %lo(D_ovl0_800D6310)
  /* 0499A8 800CDFC8 AC4B0010 */        sw $t3, 0x10($v0) # D_ovl0_800D62E0 + 16
  /* 0499AC 800CDFCC AC4B000C */        sw $t3, 0xc($v0) # D_ovl0_800D62E0 + 12
  /* 0499B0 800CDFD0 8C8E000C */        lw $t6, 0xc($a0)
  /* 0499B4 800CDFD4 8C8D0008 */        lw $t5, 8($a0)
  /* 0499B8 800CDFD8 2738000F */     addiu $t8, $t9, 0xf
  /* 0499BC 800CDFDC 03014024 */       and $t0, $t8, $at
  /* 0499C0 800CDFE0 01AE7821 */      addu $t7, $t5, $t6
  /* 0499C4 800CDFE4 AC4F0014 */        sw $t7, 0x14($v0) # D_ovl0_800D62E0 + 20
  /* 0499C8 800CDFE8 AC680000 */        sw $t0, ($v1) # D_ovl0_800D6334 + 0
  /* 0499CC 800CDFEC 250A000C */     addiu $t2, $t0, 0xc
  /* 0499D0 800CDFF0 3C01800D */       lui $at, %hi(D_ovl0_800D6338)
  /* 0499D4 800CDFF4 AC2A6338 */        sw $t2, %lo(D_ovl0_800D6338)($at)
  /* 0499D8 800CDFF8 AC400018 */        sw $zero, 0x18($v0) # D_ovl0_800D62E0 + 24
  /* 0499DC 800CDFFC 8C8B0014 */        lw $t3, 0x14($a0)
  /* 0499E0 800CE000 AC4B001C */        sw $t3, 0x1c($v0) # D_ovl0_800D62E0 + 28
  /* 0499E4 800CE004 8C8C0010 */        lw $t4, 0x10($a0)
  /* 0499E8 800CE008 AC4C0020 */        sw $t4, 0x20($v0) # D_ovl0_800D62E0 + 32
  /* 0499EC 800CE00C 8C8D001C */        lw $t5, 0x1c($a0)
  /* 0499F0 800CE010 AC4D0028 */        sw $t5, 0x28($v0) # D_ovl0_800D62E0 + 40
  /* 0499F4 800CE014 8C8E0018 */        lw $t6, 0x18($a0)
  /* 0499F8 800CE018 03E00008 */        jr $ra
  /* 0499FC 800CE01C AC4E002C */        sw $t6, 0x2c($v0) # D_ovl0_800D62E0 + 44
