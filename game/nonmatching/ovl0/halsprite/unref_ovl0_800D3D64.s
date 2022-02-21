.section .text
glabel unref_ovl0_800D3D64
  /* 04F744 800D3D64 00057080 */       sll $t6, $a1, 2
  /* 04F748 800D3D68 3C02800D */       lui $v0, %hi(D_ovl0_800D6358)
  /* 04F74C 800D3D6C 004E1021 */      addu $v0, $v0, $t6
  /* 04F750 800D3D70 8C426358 */        lw $v0, %lo(D_ovl0_800D6358)($v0)
  /* 04F754 800D3D74 AFA40000 */        sw $a0, ($sp)
  /* 04F758 800D3D78 3084FFFF */      andi $a0, $a0, 0xffff
  /* 04F75C 800D3D7C 1040000A */      beqz $v0, .L800D3DA8
  /* 04F760 800D3D80 00801825 */        or $v1, $a0, $zero
  /* 04F764 800D3D84 944F0004 */       lhu $t7, 4($v0)
  .L800D3D88:
  /* 04F768 800D3D88 546F0005 */      bnel $v1, $t7, .L800D3DA0
  /* 04F76C 800D3D8C 8C420000 */        lw $v0, ($v0)
  /* 04F770 800D3D90 94580006 */       lhu $t8, 6($v0)
  /* 04F774 800D3D94 37190800 */       ori $t9, $t8, 0x800
  /* 04F778 800D3D98 A4590006 */        sh $t9, 6($v0)
  /* 04F77C 800D3D9C 8C420000 */        lw $v0, ($v0)
  .L800D3DA0:
  /* 04F780 800D3DA0 5440FFF9 */      bnel $v0, $zero, .L800D3D88
  /* 04F784 800D3DA4 944F0004 */       lhu $t7, 4($v0)
  .L800D3DA8:
  /* 04F788 800D3DA8 3C02800D */       lui $v0, %hi(D_ovl0_800D639C)
  /* 04F78C 800D3DAC 8C42639C */        lw $v0, %lo(D_ovl0_800D639C)($v0)
  /* 04F790 800D3DB0 00801825 */        or $v1, $a0, $zero
  /* 04F794 800D3DB4 1040000A */      beqz $v0, .L800D3DE0
  /* 04F798 800D3DB8 00000000 */       nop 
  /* 04F79C 800D3DBC 94480004 */       lhu $t0, 4($v0)
  .L800D3DC0:
  /* 04F7A0 800D3DC0 54680005 */      bnel $v1, $t0, .L800D3DD8
  /* 04F7A4 800D3DC4 8C420000 */        lw $v0, ($v0)
  /* 04F7A8 800D3DC8 94490006 */       lhu $t1, 6($v0)
  /* 04F7AC 800D3DCC 352A0800 */       ori $t2, $t1, 0x800
  /* 04F7B0 800D3DD0 A44A0006 */        sh $t2, 6($v0)
  /* 04F7B4 800D3DD4 8C420000 */        lw $v0, ($v0)
  .L800D3DD8:
  /* 04F7B8 800D3DD8 5440FFF9 */      bnel $v0, $zero, .L800D3DC0
  /* 04F7BC 800D3DDC 94480004 */       lhu $t0, 4($v0)
  .L800D3DE0:
  /* 04F7C0 800D3DE0 03E00008 */        jr $ra
  /* 04F7C4 800D3DE4 00000000 */       nop 

