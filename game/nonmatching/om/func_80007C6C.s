.section .text
glabel func_80007C6C
  /* 00886C 80007C6C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008870 80007C70 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008874 80007C74 9086000D */       lbu $a2, 0xd($a0)
  /* 008878 80007C78 3C028004 */       lui $v0, %hi(D_80046800)
  /* 00887C 80007C7C 3C058004 */       lui $a1, 0x8004
  /* 008880 80007C80 00063080 */       sll $a2, $a2, 2
  /* 008884 80007C84 00461021 */      addu $v0, $v0, $a2
  /* 008888 80007C88 8C426800 */        lw $v0, %lo(D_80046800)($v0)
  /* 00888C 80007C8C 00A62821 */      addu $a1, $a1, $a2
  /* 008890 80007C90 1040000D */      beqz $v0, .L80007CC8
  /* 008894 80007C94 00000000 */       nop 
  /* 008898 80007C98 8C830028 */        lw $v1, 0x28($a0)
  /* 00889C 80007C9C 8C4E0028 */        lw $t6, 0x28($v0)
  /* 0088A0 80007CA0 006E082B */      sltu $at, $v1, $t6
  /* 0088A4 80007CA4 10200008 */      beqz $at, .L80007CC8
  /* 0088A8 80007CA8 00000000 */       nop 
  /* 0088AC 80007CAC 8C420020 */        lw $v0, 0x20($v0)
  .L80007CB0:
  /* 0088B0 80007CB0 10400005 */      beqz $v0, .L80007CC8
  /* 0088B4 80007CB4 00000000 */       nop 
  /* 0088B8 80007CB8 8C4F0028 */        lw $t7, 0x28($v0)
  /* 0088BC 80007CBC 006F082B */      sltu $at, $v1, $t7
  /* 0088C0 80007CC0 5420FFFB */      bnel $at, $zero, .L80007CB0
  /* 0088C4 80007CC4 8C420020 */        lw $v0, 0x20($v0)
  .L80007CC8:
  /* 0088C8 80007CC8 10400003 */      beqz $v0, .L80007CD8
  /* 0088CC 80007CCC 00000000 */       nop 
  /* 0088D0 80007CD0 10000002 */         b .L80007CDC
  /* 0088D4 80007CD4 8C450024 */        lw $a1, 0x24($v0)
  .L80007CD8:
  /* 0088D8 80007CD8 8CA56908 */        lw $a1, 0x6908($a1)
  .L80007CDC:
  /* 0088DC 80007CDC 0C001EE6 */       jal func_80007B98
  /* 0088E0 80007CE0 00000000 */       nop 
  /* 0088E4 80007CE4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0088E8 80007CE8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0088EC 80007CEC 03E00008 */        jr $ra
  /* 0088F0 80007CF0 00000000 */       nop 
