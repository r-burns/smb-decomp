.section .text
glabel func_ovl0_800CDC0C
  /* 0495EC 800CDC0C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0495F0 800CDC10 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0495F4 800CDC14 0C033588 */       jal func_ovl0_800CD620
  /* 0495F8 800CDC18 AFA40020 */        sw $a0, 0x20($sp)
  /* 0495FC 800CDC1C 10400003 */      beqz $v0, .L800CDC2C
  /* 049600 800CDC20 3C0E800D */       lui $t6, %hi(D_ovl0_800D6348)
  /* 049604 800CDC24 10000015 */         b .L800CDC7C
  /* 049608 800CDC28 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CDC2C:
  /* 04960C 800CDC2C 8DCE6348 */        lw $t6, %lo(D_ovl0_800D6348)($t6)
  /* 049610 800CDC30 2401FFF0 */     addiu $at, $zero, -0x10
  /* 049614 800CDC34 8FA40020 */        lw $a0, 0x20($sp)
  /* 049618 800CDC38 25CF000F */     addiu $t7, $t6, 0xf
  /* 04961C 800CDC3C 01E1C024 */       and $t8, $t7, $at
  /* 049620 800CDC40 0C033605 */       jal func_ovl0_800CD814
  /* 049624 800CDC44 AFB8001C */        sw $t8, 0x1c($sp)
  /* 049628 800CDC48 3C19800D */       lui $t9, %hi(D_ovl0_800D6334)
  /* 04962C 800CDC4C 8F396334 */        lw $t9, %lo(D_ovl0_800D6334)($t9)
  /* 049630 800CDC50 8FA5001C */        lw $a1, 0x1c($sp)
  /* 049634 800CDC54 3C01800D */       lui $at, %hi(D_ovl0_800D6348)
  /* 049638 800CDC58 9726000A */       lhu $a2, 0xa($t9)
  /* 04963C 800CDC5C 8FA40020 */        lw $a0, 0x20($sp)
  /* 049640 800CDC60 00003825 */        or $a3, $zero, $zero
  /* 049644 800CDC64 00063080 */       sll $a2, $a2, 2
  /* 049648 800CDC68 00A64021 */      addu $t0, $a1, $a2
  /* 04964C 800CDC6C 0C033615 */       jal func_ovl0_800CD854
  /* 049650 800CDC70 AC286348 */        sw $t0, %lo(D_ovl0_800D6348)($at)
  /* 049654 800CDC74 8FA2001C */        lw $v0, 0x1c($sp)
  /* 049658 800CDC78 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CDC7C:
  /* 04965C 800CDC7C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 049660 800CDC80 03E00008 */        jr $ra
  /* 049664 800CDC84 00000000 */       nop 

