.section .text
glabel func_80006B80
  /* 007780 80006B80 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 007784 80006B84 3C038004 */       lui $v1, %hi(D_80046558)
  /* 007788 80006B88 3C048004 */       lui $a0, %hi(D_80046550)
  /* 00778C 80006B8C 3C058004 */       lui $a1, %hi(D_80046548)
  /* 007790 80006B90 3C028004 */       lui $v0, %hi(D_80046560)
  /* 007794 80006B94 3C068004 */       lui $a2, %hi(D_80046568)
  /* 007798 80006B98 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00779C 80006B9C 24C66568 */     addiu $a2, $a2, %lo(D_80046568)
  /* 0077A0 80006BA0 24426560 */     addiu $v0, $v0, %lo(D_80046560)
  /* 0077A4 80006BA4 24A56548 */     addiu $a1, $a1, %lo(D_80046548)
  /* 0077A8 80006BA8 24846550 */     addiu $a0, $a0, %lo(D_80046550)
  /* 0077AC 80006BAC 24636558 */     addiu $v1, $v1, %lo(D_80046558)
  .L80006BB0:
  /* 0077B0 80006BB0 24420004 */     addiu $v0, $v0, 4
  /* 0077B4 80006BB4 0046082B */      sltu $at, $v0, $a2
  /* 0077B8 80006BB8 24630004 */     addiu $v1, $v1, 4
  /* 0077BC 80006BBC 24840004 */     addiu $a0, $a0, 4
  /* 0077C0 80006BC0 24A50004 */     addiu $a1, $a1, 4
  /* 0077C4 80006BC4 AC60FFFC */        sw $zero, -4($v1) # D_80046558 + -4
  /* 0077C8 80006BC8 AC80FFFC */        sw $zero, -4($a0) # D_80046550 + -4
  /* 0077CC 80006BCC ACA0FFFC */        sw $zero, -4($a1) # D_80046548 + -4
  /* 0077D0 80006BD0 1420FFF7 */      bnez $at, .L80006BB0
  /* 0077D4 80006BD4 AC40FFFC */        sw $zero, -4($v0) # D_80046560 + -4
  /* 0077D8 80006BD8 3C038004 */       lui $v1, %hi(D_80046626)
  /* 0077DC 80006BDC 3C018004 */       lui $at, %hi(D_80046620)
  /* 0077E0 80006BE0 24636626 */     addiu $v1, $v1, %lo(D_80046626)
  /* 0077E4 80006BE4 AC206620 */        sw $zero, %lo(D_80046620)($at)
  /* 0077E8 80006BE8 A4600000 */        sh $zero, ($v1) # D_80046626 + 0
  /* 0077EC 80006BEC 3C018004 */       lui $at, %hi(D_80046624)
  /* 0077F0 80006BF0 3C038004 */       lui $v1, %hi(D_800465B0)
  /* 0077F4 80006BF4 3C028004 */       lui $v0, %hi(D_80046570)
  /* 0077F8 80006BF8 A4206624 */        sh $zero, %lo(D_80046624)($at)
  /* 0077FC 80006BFC 24426570 */     addiu $v0, $v0, %lo(D_80046570)
  /* 007800 80006C00 246365B0 */     addiu $v1, $v1, %lo(D_800465B0)
  .L80006C04:
  /* 007804 80006C04 24420020 */     addiu $v0, $v0, 0x20
  /* 007808 80006C08 AC40FFE8 */        sw $zero, -0x18($v0) # D_80046570 + -24
  /* 00780C 80006C0C AC40FFEC */        sw $zero, -0x14($v0) # D_80046570 + -20
  /* 007810 80006C10 AC40FFF0 */        sw $zero, -0x10($v0) # D_80046570 + -16
  /* 007814 80006C14 AC40FFF4 */        sw $zero, -0xc($v0) # D_80046570 + -12
  /* 007818 80006C18 AC40FFF8 */        sw $zero, -8($v0) # D_80046570 + -8
  /* 00781C 80006C1C AC40FFFC */        sw $zero, -4($v0) # D_80046570 + -4
  /* 007820 80006C20 AC40FFE0 */        sw $zero, -0x20($v0) # D_80046570 + -32
  /* 007824 80006C24 1443FFF7 */       bne $v0, $v1, .L80006C04
  /* 007828 80006C28 AC40FFE4 */        sw $zero, -0x1c($v0) # D_80046570 + -28
  /* 00782C 80006C2C 3C018004 */       lui $at, %hi(D_800454E8)
  /* 007830 80006C30 AC2054E8 */        sw $zero, %lo(D_800454E8)($at)
  /* 007834 80006C34 0C001234 */       jal func_800048D0
  /* 007838 80006C38 00002025 */        or $a0, $zero, $zero
  /* 00783C 80006C3C 3C048004 */       lui $a0, %hi(D_800454E0)
  /* 007840 80006C40 3C058004 */       lui $a1, %hi(D_800454A0)
  /* 007844 80006C44 3C068004 */       lui $a2, %hi(D_80045490)
  /* 007848 80006C48 24C65490 */     addiu $a2, $a2, %lo(D_80045490)
  /* 00784C 80006C4C 24A554A0 */     addiu $a1, $a1, %lo(D_800454A0)
  /* 007850 80006C50 248454E0 */     addiu $a0, $a0, %lo(D_800454E0)
  /* 007854 80006C54 0C000276 */       jal func_800009D8
  /* 007858 80006C58 24070004 */     addiu $a3, $zero, 4
  /* 00785C 80006C5C 3C048004 */       lui $a0, %hi(D_80045500)
  /* 007860 80006C60 3C058004 */       lui $a1, %hi(D_800454F0)
  /* 007864 80006C64 24A554F0 */     addiu $a1, $a1, %lo(D_800454F0)
  /* 007868 80006C68 24845500 */     addiu $a0, $a0, %lo(D_80045500)
  /* 00786C 80006C6C 0C00D120 */       jal osCreateMesgQueue
  /* 007870 80006C70 24060003 */     addiu $a2, $zero, 3
  /* 007874 80006C74 3C048004 */       lui $a0, %hi(D_80045520)
  /* 007878 80006C78 3C058004 */       lui $a1, %hi(D_80045518)
  /* 00787C 80006C7C 24A55518 */     addiu $a1, $a1, %lo(D_80045518)
  /* 007880 80006C80 24845520 */     addiu $a0, $a0, %lo(D_80045520)
  /* 007884 80006C84 0C00D120 */       jal osCreateMesgQueue
  /* 007888 80006C88 24060001 */     addiu $a2, $zero, 1
  /* 00788C 80006C8C 3C028004 */       lui $v0, %hi(D_800454BA)
  /* 007890 80006C90 244254BA */     addiu $v0, $v0, %lo(D_800454BA)
  /* 007894 80006C94 24180001 */     addiu $t8, $zero, 1
  /* 007898 80006C98 A4580000 */        sh $t8, ($v0) # D_800454BA + 0
  /* 00789C 80006C9C 3C018004 */       lui $at, %hi(D_800454B8)
  /* 0078A0 80006CA0 3C048004 */       lui $a0, %hi(D_800454C8)
  /* 0078A4 80006CA4 3C058004 */       lui $a1, %hi(D_800454C0)
  /* 0078A8 80006CA8 A43854B8 */        sh $t8, %lo(D_800454B8)($at)
  /* 0078AC 80006CAC 24A554C0 */     addiu $a1, $a1, %lo(D_800454C0)
  /* 0078B0 80006CB0 248454C8 */     addiu $a0, $a0, %lo(D_800454C8)
  /* 0078B4 80006CB4 0C00D120 */       jal osCreateMesgQueue
  /* 0078B8 80006CB8 24060001 */     addiu $a2, $zero, 1
  /* 0078BC 80006CBC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0078C0 80006CC0 24190002 */     addiu $t9, $zero, 2
  /* 0078C4 80006CC4 3C018004 */       lui $at, %hi(D_800454BC)
  /* 0078C8 80006CC8 AC3954BC */        sw $t9, %lo(D_800454BC)($at)
  /* 0078CC 80006CCC 03E00008 */        jr $ra
  /* 0078D0 80006CD0 27BD0018 */     addiu $sp, $sp, 0x18

  /* 0078D4 80006CD4 00000000 */       nop 
  /* 0078D8 80006CD8 00000000 */       nop 
  /* 0078DC 80006CDC 00000000 */       nop 

