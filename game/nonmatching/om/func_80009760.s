.section .late_rodata

glabel D_8003DD78
  /* 3D978 03E978 8003DD78 */
  .word 0xff7fffff # .float -3.4028235e38
  #.incbin "system.raw.bin", 0x3D97C, 0x4

.section .text
glabel func_80009760
  /* 00A360 80009760 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A364 80009764 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A368 80009768 14800003 */      bnez $a0, .L80009778
  /* 00A36C 8000976C 00803025 */        or $a2, $a0, $zero
  /* 00A370 80009770 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 00A374 80009774 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  .L80009778:
  /* 00A378 80009778 240E0003 */     addiu $t6, $zero, 3
  /* 00A37C 8000977C A0CE000F */        sb $t6, 0xf($a2)
  /* 00A380 80009780 0C002037 */       jal func_800080DC
  /* 00A384 80009784 AFA60020 */        sw $a2, 0x20($sp)
  /* 00A388 80009788 8FA60020 */        lw $a2, 0x20($sp)
  /* 00A38C 8000978C 24440008 */     addiu $a0, $v0, 8
  /* 00A390 80009790 ACC20074 */        sw $v0, 0x74($a2)
  /* 00A394 80009794 AC460004 */        sw $a2, 4($v0)
  /* 00A398 80009798 0C001C47 */       jal setup_viewport
  /* 00A39C 8000979C AFA20018 */        sw $v0, 0x18($sp)
  /* 00A3A0 800097A0 8FA50018 */        lw $a1, 0x18($sp)
  /* 00A3A4 800097A4 00001025 */        or $v0, $zero, $zero
  /* 00A3A8 800097A8 24040002 */     addiu $a0, $zero, 2
  /* 00A3AC 800097AC ACA00060 */        sw $zero, 0x60($a1)
  /* 00A3B0 800097B0 00A01825 */        or $v1, $a1, $zero
  .L800097B4:
  /* 00A3B4 800097B4 24420001 */     addiu $v0, $v0, 1
  /* 00A3B8 800097B8 24630004 */     addiu $v1, $v1, 4
  /* 00A3BC 800097BC 1444FFFD */       bne $v0, $a0, .L800097B4
  /* 00A3C0 800097C0 AC600060 */        sw $zero, 0x60($v1)
  /* 00A3C4 800097C4 ACA00080 */        sw $zero, 0x80($a1)
  /* 00A3C8 800097C8 ACA00084 */        sw $zero, 0x84($a1)
  /* 00A3CC 800097CC ACA00088 */        sw $zero, 0x88($a1)
  /* 00A3D0 800097D0 ACA0008C */        sw $zero, 0x8c($a1)
  /* 00A3D4 800097D4 ACA0006C */        sw $zero, 0x6c($a1)
  /* 00A3D8 800097D8 ACA00070 */        sw $zero, 0x70($a1)
  /* 00A3DC 800097DC 3C018004 */       lui $at, %hi(D_8003DD78)
  /* 00A3E0 800097E0 C424DD78 */      lwc1 $f4, %lo(D_8003DD78)($at)
  /* 00A3E4 800097E4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 00A3E8 800097E8 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 00A3EC 800097EC 44804000 */      mtc1 $zero, $f8
  /* 00A3F0 800097F0 E4A40074 */      swc1 $f4, 0x74($a1)
  /* 00A3F4 800097F4 E4A60078 */      swc1 $f6, 0x78($a1)
  /* 00A3F8 800097F8 E4A8007C */      swc1 $f8, 0x7c($a1)
  /* 00A3FC 800097FC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A400 80009800 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A404 80009804 00A01025 */        or $v0, $a1, $zero
  /* 00A408 80009808 03E00008 */        jr $ra
  /* 00A40C 8000980C 00000000 */       nop 

