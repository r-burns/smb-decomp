.section .text
glabel func_8000B2B8
  /* 00BEB8 8000B2B8 54800004 */      bnel $a0, $zero, .L8000B2CC
  /* 00BEBC 8000B2BC 8C820018 */        lw $v0, 0x18($a0)
  /* 00BEC0 8000B2C0 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00BEC4 8000B2C4 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  /* 00BEC8 8000B2C8 8C820018 */        lw $v0, 0x18($a0)
  .L8000B2CC:
  /* 00BECC 8000B2CC 10400005 */      beqz $v0, .L8000B2E4
  /* 00BED0 8000B2D0 00000000 */       nop 
  /* 00BED4 8000B2D4 A0400015 */        sb $zero, 0x15($v0)
  .L8000B2D8:
  /* 00BED8 8000B2D8 8C420000 */        lw $v0, ($v0)
  /* 00BEDC 8000B2DC 5440FFFE */      bnel $v0, $zero, .L8000B2D8
  /* 00BEE0 8000B2E0 A0400015 */        sb $zero, 0x15($v0)
  .L8000B2E4:
  /* 00BEE4 8000B2E4 03E00008 */        jr $ra
  /* 00BEE8 8000B2E8 00000000 */       nop 

