.section .late_rodata

glabel D_ovl0_800D5E64
  /* E624 051844 800D5E64 */
  .word 0x3fc90fdb # .float 1.5707964

glabel D_ovl0_800D5E68
  /* E628 051848 800D5E68 */
  .word 0x4422f983 # .float 651.8986

.section .text
glabel func_ovl0_800C78B8
  /* 043298 800C78B8 3C01800D */       lui $at, %hi(D_ovl0_800D5E64)
  /* 04329C 800C78BC C4245E64 */      lwc1 $f4, %lo(D_ovl0_800D5E64)($at)
  /* 0432A0 800C78C0 3C01800D */       lui $at, %hi(D_ovl0_800D5E68)
  /* 0432A4 800C78C4 C4285E68 */      lwc1 $f8, %lo(D_ovl0_800D5E68)($at)
  /* 0432A8 800C78C8 46046180 */     add.s $f6, $f12, $f4
  /* 0432AC 800C78CC 3C01800D */       lui $at, 0x800d
  /* 0432B0 800C78D0 46083282 */     mul.s $f10, $f6, $f8
  /* 0432B4 800C78D4 4600540D */ trunc.w.s $f16, $f10
  /* 0432B8 800C78D8 44028000 */      mfc1 $v0, $f16
  /* 0432BC 800C78DC 00000000 */       nop 
  /* 0432C0 800C78E0 30420FFF */      andi $v0, $v0, 0xfff
  /* 0432C4 800C78E4 3042FFFF */      andi $v0, $v0, 0xffff
  /* 0432C8 800C78E8 304F0400 */      andi $t7, $v0, 0x400
  /* 0432CC 800C78EC 11E00008 */      beqz $t7, .L800C7910
  /* 0432D0 800C78F0 304B0800 */      andi $t3, $v0, 0x800
  /* 0432D4 800C78F4 305803FF */      andi $t8, $v0, 0x3ff
  /* 0432D8 800C78F8 0018C880 */       sll $t9, $t8, 2
  /* 0432DC 800C78FC 00194023 */      negu $t0, $t9
  /* 0432E0 800C7900 3C01800D */       lui $at, %hi(D_ovl0_800D4CA0)
  /* 0432E4 800C7904 00280821 */      addu $at, $at, $t0
  /* 0432E8 800C7908 10000005 */         b .L800C7920
  /* 0432EC 800C790C C4225C9C */      lwc1 $f2, %lo((D_ovl0_800D4CA0 + 0xFFC))($at)
  .L800C7910:
  /* 0432F0 800C7910 304903FF */      andi $t1, $v0, 0x3ff
  /* 0432F4 800C7914 00095080 */       sll $t2, $t1, 2
  /* 0432F8 800C7918 002A0821 */      addu $at, $at, $t2
  /* 0432FC 800C791C C4224CA0 */      lwc1 $f2, %lo(D_ovl0_800D4CA0)($at)
  .L800C7920:
  /* 043300 800C7920 51600004 */      beql $t3, $zero, .L800C7934
  /* 043304 800C7924 46001006 */     mov.s $f0, $f2
  /* 043308 800C7928 03E00008 */        jr $ra
  /* 04330C 800C792C 46001007 */     neg.s $f0, $f2

  /* 043310 800C7930 46001006 */     mov.s $f0, $f2
  .L800C7934:
  /* 043314 800C7934 03E00008 */        jr $ra
  /* 043318 800C7938 00000000 */       nop 

