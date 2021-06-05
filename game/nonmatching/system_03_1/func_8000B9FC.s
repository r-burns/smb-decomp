.section .text
glabel func_8000B9FC
  /* 00C5FC 8000B9FC 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 00C600 8000BA00 AFA60048 */        sw $a2, 0x48($sp)
  /* 00C604 8000BA04 AFA7004C */        sw $a3, 0x4c($sp)
  /* 00C608 8000BA08 8FAF0048 */        lw $t7, 0x48($sp)
  /* 00C60C 8000BA0C 00A03825 */        or $a3, $a1, $zero
  /* 00C610 8000BA10 AFA50044 */        sw $a1, 0x44($sp)
  /* 00C614 8000BA14 3C0E8001 */       lui $t6, %hi(func_80017DBC)
  /* 00C618 8000BA18 00803025 */        or $a2, $a0, $zero
  /* 00C61C 8000BA1C AFBF003C */        sw $ra, 0x3c($sp)
  /* 00C620 8000BA20 AFA40040 */        sw $a0, 0x40($sp)
  /* 00C624 8000BA24 25CE7DBC */     addiu $t6, $t6, %lo(func_80017DBC)
  /* 00C628 8000BA28 3C058001 */       lui $a1, %hi(func_8000B1C4)
  /* 00C62C 8000BA2C 24180000 */     addiu $t8, $zero, 0
  /* 00C630 8000BA30 24190000 */     addiu $t9, $zero, 0
  /* 00C634 8000BA34 AFB9001C */        sw $t9, 0x1c($sp)
  /* 00C638 8000BA38 AFB80018 */        sw $t8, 0x18($sp)
  /* 00C63C 8000BA3C 24A5B1C4 */     addiu $a1, $a1, %lo(func_8000B1C4)
  /* 00C640 8000BA40 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00C644 8000BA44 2404FFFF */     addiu $a0, $zero, -1
  /* 00C648 8000BA48 AFA00020 */        sw $zero, 0x20($sp)
  /* 00C64C 8000BA4C AFA00024 */        sw $zero, 0x24($sp)
  /* 00C650 8000BA50 AFA00028 */        sw $zero, 0x28($sp)
  /* 00C654 8000BA54 AFA0002C */        sw $zero, 0x2c($sp)
  /* 00C658 8000BA58 AFA00030 */        sw $zero, 0x30($sp)
  /* 00C65C 8000BA5C AFA00034 */        sw $zero, 0x34($sp)
  /* 00C660 8000BA60 0C002E4F */       jal func_8000B93C
  /* 00C664 8000BA64 AFAF0014 */        sw $t7, 0x14($sp)
  /* 00C668 8000BA68 14400003 */      bnez $v0, .L8000BA78
  /* 00C66C 8000BA6C 00402025 */        or $a0, $v0, $zero
  /* 00C670 8000BA70 10000007 */         b .L8000BA90
  /* 00C674 8000BA74 00001025 */        or $v0, $zero, $zero
  .L8000BA78:
  /* 00C678 8000BA78 8C830074 */        lw $v1, 0x74($a0)
  /* 00C67C 8000BA7C 8FA8004C */        lw $t0, 0x4c($sp)
  /* 00C680 8000BA80 00801025 */        or $v0, $a0, $zero
  /* 00C684 8000BA84 AC680080 */        sw $t0, 0x80($v1)
  /* 00C688 8000BA88 8FA90050 */        lw $t1, 0x50($sp)
  /* 00C68C 8000BA8C AC690084 */        sw $t1, 0x84($v1)
  .L8000BA90:
  /* 00C690 8000BA90 8FBF003C */        lw $ra, 0x3c($sp)
  /* 00C694 8000BA94 27BD0040 */     addiu $sp, $sp, 0x40
  /* 00C698 8000BA98 03E00008 */        jr $ra
  /* 00C69C 8000BA9C 00000000 */       nop 

# 4.5?
