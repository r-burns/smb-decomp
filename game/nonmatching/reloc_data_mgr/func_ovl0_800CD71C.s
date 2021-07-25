.section .rodata
# early rodata
glabel D_ovl0_800D5EE0
  /* E6A0 0518C0 800D5EE0 */
  .asciz "Relocatable Data Manager: Status Buffer is full !!\n"
  .balign 4

.section .text
glabel func_ovl0_800CD71C
  /* 0490FC 800CD71C 3C03800D */       lui $v1, %hi(D_ovl0_800D62E0)
  /* 049100 800CD720 246362E0 */     addiu $v1, $v1, %lo(D_ovl0_800D62E0)
  /* 049104 800CD724 8C660018 */        lw $a2, 0x18($v1) # D_ovl0_800D62E0 + 24
  /* 049108 800CD728 8C6E001C */        lw $t6, 0x1c($v1) # D_ovl0_800D62E0 + 28
  /* 04910C 800CD72C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 049110 800CD730 AFBF001C */        sw $ra, 0x1c($sp)
  /* 049114 800CD734 00CE082B */      sltu $at, $a2, $t6
  /* 049118 800CD738 14200009 */      bnez $at, .L800CD760
  /* 04911C 800CD73C AFB00018 */        sw $s0, 0x18($sp)
  /* 049120 800CD740 3C10800D */       lui $s0, %hi(D_ovl0_800D5EE0)
  /* 049124 800CD744 26105EE0 */     addiu $s0, $s0, %lo(D_ovl0_800D5EE0)
  .L800CD748:
  /* 049128 800CD748 0C008D89 */       jal fatal_printf
  /* 04912C 800CD74C 02002025 */        or $a0, $s0, $zero
  /* 049130 800CD750 0C028C10 */       jal func_800A3040
  /* 049134 800CD754 00000000 */       nop 
  /* 049138 800CD758 1000FFFB */         b .L800CD748
  /* 04913C 800CD75C 00000000 */       nop 
  .L800CD760:
  /* 049140 800CD760 8C6F0020 */        lw $t7, 0x20($v1)
  /* 049144 800CD764 000610C0 */       sll $v0, $a2, 3
  /* 049148 800CD768 01E2C021 */      addu $t8, $t7, $v0
  /* 04914C 800CD76C AF040000 */        sw $a0, ($t8)
  /* 049150 800CD770 8C790020 */        lw $t9, 0x20($v1)
  /* 049154 800CD774 03224021 */      addu $t0, $t9, $v0
  /* 049158 800CD778 AD050004 */        sw $a1, 4($t0)
  /* 04915C 800CD77C 8C690018 */        lw $t1, 0x18($v1)
  /* 049160 800CD780 8FBF001C */        lw $ra, 0x1c($sp)
  /* 049164 800CD784 8FB00018 */        lw $s0, 0x18($sp)
  /* 049168 800CD788 252A0001 */     addiu $t2, $t1, 1
  /* 04916C 800CD78C AC6A0018 */        sw $t2, 0x18($v1)
  /* 049170 800CD790 03E00008 */        jr $ra
  /* 049174 800CD794 27BD0020 */     addiu $sp, $sp, 0x20

