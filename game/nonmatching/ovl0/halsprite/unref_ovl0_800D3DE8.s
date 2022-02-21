.section .text
glabel unref_ovl0_800D3DE8
  /* 04F7C8 800D3DE8 00057080 */       sll $t6, $a1, 2
  /* 04F7CC 800D3DEC 3C02800D */       lui $v0, %hi(D_ovl0_800D6358)
  /* 04F7D0 800D3DF0 004E1021 */      addu $v0, $v0, $t6
  /* 04F7D4 800D3DF4 8C426358 */        lw $v0, %lo(D_ovl0_800D6358)($v0)
  /* 04F7D8 800D3DF8 AFA40000 */        sw $a0, ($sp)
  /* 04F7DC 800D3DFC 3084FFFF */      andi $a0, $a0, 0xffff
  /* 04F7E0 800D3E00 1040000B */      beqz $v0, .L800D3E30
  /* 04F7E4 800D3E04 00801825 */        or $v1, $a0, $zero
  /* 04F7E8 800D3E08 2405F7FF */     addiu $a1, $zero, -0x801
  /* 04F7EC 800D3E0C 944F0004 */       lhu $t7, 4($v0)
  .L800D3E10:
  /* 04F7F0 800D3E10 546F0005 */      bnel $v1, $t7, .L800D3E28
  /* 04F7F4 800D3E14 8C420000 */        lw $v0, ($v0)
  /* 04F7F8 800D3E18 94580006 */       lhu $t8, 6($v0)
  /* 04F7FC 800D3E1C 0305C824 */       and $t9, $t8, $a1
  /* 04F800 800D3E20 A4590006 */        sh $t9, 6($v0)
  /* 04F804 800D3E24 8C420000 */        lw $v0, ($v0)
  .L800D3E28:
  /* 04F808 800D3E28 5440FFF9 */      bnel $v0, $zero, .L800D3E10
  /* 04F80C 800D3E2C 944F0004 */       lhu $t7, 4($v0)
  .L800D3E30:
  /* 04F810 800D3E30 3C02800D */       lui $v0, %hi(D_ovl0_800D639C)
  /* 04F814 800D3E34 8C42639C */        lw $v0, %lo(D_ovl0_800D639C)($v0)
  /* 04F818 800D3E38 2405F7FF */     addiu $a1, $zero, -0x801
  /* 04F81C 800D3E3C 00801825 */        or $v1, $a0, $zero
  /* 04F820 800D3E40 1040000A */      beqz $v0, .L800D3E6C
  /* 04F824 800D3E44 00000000 */       nop 
  /* 04F828 800D3E48 94480004 */       lhu $t0, 4($v0)
  .L800D3E4C:
  /* 04F82C 800D3E4C 54680005 */      bnel $v1, $t0, .L800D3E64
  /* 04F830 800D3E50 8C420000 */        lw $v0, ($v0)
  /* 04F834 800D3E54 94490006 */       lhu $t1, 6($v0)
  /* 04F838 800D3E58 01255024 */       and $t2, $t1, $a1
  /* 04F83C 800D3E5C A44A0006 */        sh $t2, 6($v0)
  /* 04F840 800D3E60 8C420000 */        lw $v0, ($v0)
  .L800D3E64:
  /* 04F844 800D3E64 5440FFF9 */      bnel $v0, $zero, .L800D3E4C
  /* 04F848 800D3E68 94480004 */       lhu $t0, 4($v0)
  .L800D3E6C:
  /* 04F84C 800D3E6C 03E00008 */        jr $ra
  /* 04F850 800D3E70 00000000 */       nop 

  /* 04F854 800D3E74 00000000 */       nop 
  /* 04F858 800D3E78 00000000 */       nop 
  /* 04F85C 800D3E7C 00000000 */       nop 
