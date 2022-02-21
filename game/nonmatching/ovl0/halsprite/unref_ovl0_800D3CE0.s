.section .text
glabel unref_ovl0_800D3CE0
  /* 04F6C0 800D3CE0 27BDFFF0 */     addiu $sp, $sp, -0x10
  /* 04F6C4 800D3CE4 F7B40008 */      sdc1 $f20, 8($sp)
  /* 04F6C8 800D3CE8 3C03800D */       lui $v1, %hi(D_ovl0_800D6358)
  /* 04F6CC 800D3CEC 3C04800D */       lui $a0, %hi(D_ovl0_800D6398)
  /* 04F6D0 800D3CF0 4486A000 */      mtc1 $a2, $f20
  /* 04F6D4 800D3CF4 24846398 */     addiu $a0, $a0, %lo(D_ovl0_800D6398)
  /* 04F6D8 800D3CF8 24636358 */     addiu $v1, $v1, %lo(D_ovl0_800D6358)
  /* 04F6DC 800D3CFC 8C620000 */        lw $v0, ($v1) # D_ovl0_800D6358 + 0
  .L800D3D00:
  /* 04F6E0 800D3D00 24630004 */     addiu $v1, $v1, 4
  /* 04F6E4 800D3D04 0064082B */      sltu $at, $v1, $a0
  /* 04F6E8 800D3D08 10400007 */      beqz $v0, .L800D3D28
  /* 04F6EC 800D3D0C 00000000 */       nop 
  /* 04F6F0 800D3D10 E44C0020 */      swc1 $f12, 0x20($v0)
  .L800D3D14:
  /* 04F6F4 800D3D14 E44E0024 */      swc1 $f14, 0x24($v0)
  /* 04F6F8 800D3D18 E4540028 */      swc1 $f20, 0x28($v0)
  /* 04F6FC 800D3D1C 8C420000 */        lw $v0, ($v0)
  /* 04F700 800D3D20 5440FFFC */      bnel $v0, $zero, .L800D3D14
  /* 04F704 800D3D24 E44C0020 */      swc1 $f12, 0x20($v0)
  .L800D3D28:
  /* 04F708 800D3D28 5420FFF5 */      bnel $at, $zero, .L800D3D00
  /* 04F70C 800D3D2C 8C620000 */        lw $v0, ($v1) # D_ovl0_800D6358 + 0
  /* 04F710 800D3D30 3C02800D */       lui $v0, %hi(D_ovl0_800D639C)
  /* 04F714 800D3D34 8C42639C */        lw $v0, %lo(D_ovl0_800D639C)($v0)
  /* 04F718 800D3D38 50400008 */      beql $v0, $zero, .L800D3D5C
  /* 04F71C 800D3D3C D7B40008 */      ldc1 $f20, 8($sp)
  /* 04F720 800D3D40 E44C0014 */      swc1 $f12, 0x14($v0)
  .L800D3D44:
  /* 04F724 800D3D44 E44E0018 */      swc1 $f14, 0x18($v0)
  /* 04F728 800D3D48 E454001C */      swc1 $f20, 0x1c($v0)
  /* 04F72C 800D3D4C 8C420000 */        lw $v0, ($v0)
  /* 04F730 800D3D50 5440FFFC */      bnel $v0, $zero, .L800D3D44
  /* 04F734 800D3D54 E44C0014 */      swc1 $f12, 0x14($v0)
  /* 04F738 800D3D58 D7B40008 */      ldc1 $f20, 8($sp)
  .L800D3D5C:
  /* 04F73C 800D3D5C 03E00008 */        jr $ra
  /* 04F740 800D3D60 27BD0010 */     addiu $sp, $sp, 0x10

