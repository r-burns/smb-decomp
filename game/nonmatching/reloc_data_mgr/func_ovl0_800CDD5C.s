.section .text
glabel func_ovl0_800CDD5C
  /* 04973C 800CDD5C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 049740 800CDD60 AFBF0014 */        sw $ra, 0x14($sp)
  /* 049744 800CDD64 0C0335A6 */       jal func_ovl0_800CD698
  /* 049748 800CDD68 AFA40020 */        sw $a0, 0x20($sp)
  /* 04974C 800CDD6C 10400003 */      beqz $v0, .L800CDD7C
  /* 049750 800CDD70 3C0E800D */       lui $t6, %hi(D_ovl0_800D6348)
  /* 049754 800CDD74 10000015 */         b .L800CDDCC
  /* 049758 800CDD78 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CDD7C:
  /* 04975C 800CDD7C 8DCE6348 */        lw $t6, %lo(D_ovl0_800D6348)($t6)
  /* 049760 800CDD80 2401FFF0 */     addiu $at, $zero, -0x10
  /* 049764 800CDD84 8FA40020 */        lw $a0, 0x20($sp)
  /* 049768 800CDD88 25CF000F */     addiu $t7, $t6, 0xf
  /* 04976C 800CDD8C 01E1C024 */       and $t8, $t7, $at
  /* 049770 800CDD90 0C033605 */       jal func_ovl0_800CD814
  /* 049774 800CDD94 AFB8001C */        sw $t8, 0x1c($sp)
  /* 049778 800CDD98 3C19800D */       lui $t9, %hi(D_ovl0_800D6334)
  /* 04977C 800CDD9C 8F396334 */        lw $t9, %lo(D_ovl0_800D6334)($t9)
  /* 049780 800CDDA0 8FA5001C */        lw $a1, 0x1c($sp)
  /* 049784 800CDDA4 3C01800D */       lui $at, %hi(D_ovl0_800D6348)
  /* 049788 800CDDA8 9726000A */       lhu $a2, 0xa($t9)
  /* 04978C 800CDDAC 8FA40020 */        lw $a0, 0x20($sp)
  /* 049790 800CDDB0 24070002 */     addiu $a3, $zero, 2
  /* 049794 800CDDB4 00063080 */       sll $a2, $a2, 2
  /* 049798 800CDDB8 00A64021 */      addu $t0, $a1, $a2
  /* 04979C 800CDDBC 0C033615 */       jal func_ovl0_800CD854
  /* 0497A0 800CDDC0 AC286348 */        sw $t0, %lo(D_ovl0_800D6348)($at)
  /* 0497A4 800CDDC4 8FA2001C */        lw $v0, 0x1c($sp)
  /* 0497A8 800CDDC8 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CDDCC:
  /* 0497AC 800CDDCC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 0497B0 800CDDD0 03E00008 */        jr $ra
  /* 0497B4 800CDDD4 00000000 */       nop 

