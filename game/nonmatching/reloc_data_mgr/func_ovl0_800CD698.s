.section .text
glabel func_ovl0_800CD698
  /* 049078 800CD698 3C05800D */       lui $a1, %hi(D_ovl0_800D6304)
  /* 04907C 800CD69C 8CA56304 */        lw $a1, %lo(D_ovl0_800D6304)($a1)
  /* 049080 800CD6A0 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 049084 800CD6A4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 049088 800CD6A8 10A0000E */      beqz $a1, .L800CD6E4
  /* 04908C 800CD6AC 00000000 */       nop 
  /* 049090 800CD6B0 18A0000C */      blez $a1, .L800CD6E4
  /* 049094 800CD6B4 00001025 */        or $v0, $zero, $zero
  /* 049098 800CD6B8 3C03800D */       lui $v1, %hi(D_ovl0_800D630C)
  /* 04909C 800CD6BC 8C63630C */        lw $v1, %lo(D_ovl0_800D630C)($v1)
  .L800CD6C0:
  /* 0490A0 800CD6C0 8C6E0000 */        lw $t6, ($v1)
  /* 0490A4 800CD6C4 24420001 */     addiu $v0, $v0, 1
  /* 0490A8 800CD6C8 0045082A */       slt $at, $v0, $a1
  /* 0490AC 800CD6CC 148E0003 */       bne $a0, $t6, .L800CD6DC
  /* 0490B0 800CD6D0 00000000 */       nop 
  /* 0490B4 800CD6D4 10000005 */         b .L800CD6EC
  /* 0490B8 800CD6D8 8C620004 */        lw $v0, 4($v1)
  .L800CD6DC:
  /* 0490BC 800CD6DC 1420FFF8 */      bnez $at, .L800CD6C0
  /* 0490C0 800CD6E0 24630008 */     addiu $v1, $v1, 8
  .L800CD6E4:
  /* 0490C4 800CD6E4 0C033588 */       jal func_ovl0_800CD620
  /* 0490C8 800CD6E8 00000000 */       nop 
  .L800CD6EC:
  /* 0490CC 800CD6EC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0490D0 800CD6F0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0490D4 800CD6F4 03E00008 */        jr $ra
  /* 0490D8 800CD6F8 00000000 */       nop 

