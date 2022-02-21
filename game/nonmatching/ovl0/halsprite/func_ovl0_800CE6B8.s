.section .text
glabel func_ovl0_800CE6B8
# copy sprite bank struct onto stack
  /* 04A098 800CE6B8 30A20007 */      andi $v0, $a1, 7
  /* 04A09C 800CE6BC 27BDFFB0 */     addiu $sp, $sp, -0x50
  /* 04A0A0 800CE6C0 28410008 */      slti $at, $v0, 8
  /* 04A0A4 800CE6C4 AFBF004C */        sw $ra, 0x4c($sp)
  /* 04A0A8 800CE6C8 14200003 */      bnez $at, .L800CE6D8
  /* 04A0AC 800CE6CC AFA60058 */        sw $a2, 0x58($sp)
  /* 04A0B0 800CE6D0 10000031 */         b .L800CE798
  /* 04A0B4 800CE6D4 00001025 */        or $v0, $zero, $zero
  .L800CE6D8:
  /* 04A0B8 800CE6D8 00021880 */       sll $v1, $v0, 2
  /* 04A0BC 800CE6DC 3C0F800D */       lui $t7, %hi(D_ovl0_800D63C0)
  /* 04A0C0 800CE6E0 01E37821 */      addu $t7, $t7, $v1
  /* 04A0C4 800CE6E4 8DEF63C0 */        lw $t7, %lo(D_ovl0_800D63C0)($t7)
  /* 04A0C8 800CE6E8 8FAE0058 */        lw $t6, 0x58($sp)
  /* 04A0CC 800CE6EC 3C18800D */       lui $t8, %hi(D_ovl0_800D6400)
  /* 04A0D0 800CE6F0 0303C021 */      addu $t8, $t8, $v1
  /* 04A0D4 800CE6F4 01CF082A */       slt $at, $t6, $t7
  /* 04A0D8 800CE6F8 14200003 */      bnez $at, .L800CE708
  /* 04A0DC 800CE6FC 8FB90058 */        lw $t9, 0x58($sp)
  /* 04A0E0 800CE700 10000025 */         b .L800CE798
  /* 04A0E4 800CE704 00001025 */        or $v0, $zero, $zero
  .L800CE708:
  /* 04A0E8 800CE708 8F186400 */        lw $t8, %lo(D_ovl0_800D6400)($t8)
  /* 04A0EC 800CE70C 00194080 */       sll $t0, $t9, 2
  /* 04A0F0 800CE710 44800000 */      mtc1 $zero, $f0
  /* 04A0F4 800CE714 03084821 */      addu $t1, $t8, $t0
  /* 04A0F8 800CE718 8D220000 */        lw $v0, ($t1)
  /* 04A0FC 800CE71C 3C0C800D */       lui $t4, %hi(D_ovl0_800D6420)
  /* 04A100 800CE720 01836021 */      addu $t4, $t4, $v1
  /* 04A104 800CE724 94470002 */       lhu $a3, 2($v0)
  /* 04A108 800CE728 8C460008 */        lw $a2, 8($v0)
  /* 04A10C 800CE72C 244A0030 */     addiu $t2, $v0, 0x30
  /* 04A110 800CE730 AFAA0010 */        sw $t2, 0x10($sp)
  /* 04A114 800CE734 944B0006 */       lhu $t3, 6($v0)
  /* 04A118 800CE738 E7A00020 */      swc1 $f0, 0x20($sp)
  /* 04A11C 800CE73C E7A0001C */      swc1 $f0, 0x1c($sp)
  /* 04A120 800CE740 E7A00018 */      swc1 $f0, 0x18($sp)
  /* 04A124 800CE744 AFAB0014 */        sw $t3, 0x14($sp)
  /* 04A128 800CE748 C4440014 */      lwc1 $f4, 0x14($v0)
  /* 04A12C 800CE74C 8D8C6420 */        lw $t4, %lo(D_ovl0_800D6420)($t4)
  /* 04A130 800CE750 00076880 */       sll $t5, $a3, 2
  /* 04A134 800CE754 E7A40024 */      swc1 $f4, 0x24($sp)
  /* 04A138 800CE758 C4460018 */      lwc1 $f6, 0x18($v0)
  /* 04A13C 800CE75C 018D7021 */      addu $t6, $t4, $t5
  /* 04A140 800CE760 E7A60028 */      swc1 $f6, 0x28($sp)
  /* 04A144 800CE764 C448001C */      lwc1 $f8, 0x1c($v0)
  /* 04A148 800CE768 E7A8002C */      swc1 $f8, 0x2c($sp)
  /* 04A14C 800CE76C C44A002C */      lwc1 $f10, 0x2c($v0)
  /* 04A150 800CE770 E7AA0030 */      swc1 $f10, 0x30($sp)
  /* 04A154 800CE774 C450000C */      lwc1 $f16, 0xc($v0)
  /* 04A158 800CE778 E7B00034 */      swc1 $f16, 0x34($sp)
  /* 04A15C 800CE77C C4520010 */      lwc1 $f18, 0x10($v0)
  /* 04A160 800CE780 E7B20038 */      swc1 $f18, 0x38($sp)
  /* 04A164 800CE784 8DCF0000 */        lw $t7, ($t6)
  /* 04A168 800CE788 8DF90014 */        lw $t9, 0x14($t7)
  /* 04A16C 800CE78C AFA00040 */        sw $zero, 0x40($sp)
  /* 04A170 800CE790 0C033939 */       jal func_ovl0_800CE4E4
  /* 04A174 800CE794 AFB9003C */        sw $t9, 0x3c($sp)
  .L800CE798:
  /* 04A178 800CE798 8FBF004C */        lw $ra, 0x4c($sp)
  /* 04A17C 800CE79C 27BD0050 */     addiu $sp, $sp, 0x50
  /* 04A180 800CE7A0 03E00008 */        jr $ra
  /* 04A184 800CE7A4 00000000 */       nop 

