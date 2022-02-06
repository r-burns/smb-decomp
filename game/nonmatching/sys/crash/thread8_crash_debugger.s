.section .text
glabel thread8_crash_debugger
  /* 023D90 80023190 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 023D94 80023194 AFB1001C */        sw $s1, 0x1c($sp)
  /* 023D98 80023198 3C11800A */       lui $s1, %hi(D_8009E3B8)
  /* 023D9C 8002319C 2631E3B8 */     addiu $s1, $s1, %lo(D_8009E3B8)
  /* 023DA0 800231A0 AFBF0024 */        sw $ra, 0x24($sp)
  /* 023DA4 800231A4 AFA40030 */        sw $a0, 0x30($sp)
  /* 023DA8 800231A8 AFB20020 */        sw $s2, 0x20($sp)
  /* 023DAC 800231AC AFB00018 */        sw $s0, 0x18($sp)
  /* 023DB0 800231B0 2404000A */     addiu $a0, $zero, 0xa
  /* 023DB4 800231B4 02202825 */        or $a1, $s1, $zero
  /* 023DB8 800231B8 0C00CD28 */       jal osSetEventMesg
  /* 023DBC 800231BC 24060001 */     addiu $a2, $zero, 1
  /* 023DC0 800231C0 2404000C */     addiu $a0, $zero, 0xc
  /* 023DC4 800231C4 02202825 */        or $a1, $s1, $zero
  /* 023DC8 800231C8 0C00CD28 */       jal osSetEventMesg
  /* 023DCC 800231CC 24060002 */     addiu $a2, $zero, 2
  /* 023DD0 800231D0 27B0002C */     addiu $s0, $sp, 0x2c
  .L800231D4:
  /* 023DD4 800231D4 02202025 */        or $a0, $s1, $zero
  /* 023DD8 800231D8 02002825 */        or $a1, $s0, $zero
  /* 023DDC 800231DC 0C00C084 */       jal osRecvMesg
  /* 023DE0 800231E0 24060001 */     addiu $a2, $zero, 1
  /* 023DE4 800231E4 0C008BE6 */       jal func_80022F98
  /* 023DE8 800231E8 00000000 */       nop 
  /* 023DEC 800231EC 1040FFF9 */      beqz $v0, .L800231D4
  /* 023DF0 800231F0 00409025 */        or $s2, $v0, $zero
  /* 023DF4 800231F4 240E0001 */     addiu $t6, $zero, 1
  /* 023DF8 800231F8 3C018004 */       lui $at, %hi(D_8003CE78)
  /* 023DFC 800231FC A02ECE78 */        sb $t6, %lo(D_8003CE78)($at)
  /* 023E00 80023200 00002025 */        or $a0, $zero, $zero
  /* 023E04 80023204 0C008A42 */       jal func_80022908
  /* 023E08 80023208 00002825 */        or $a1, $zero, $zero
  /* 023E0C 8002320C 24042030 */     addiu $a0, $zero, 0x2030
  /* 023E10 80023210 0C008A42 */       jal func_80022908
  /* 023E14 80023214 00002825 */        or $a1, $zero, $zero
  /* 023E18 80023218 00002025 */        or $a0, $zero, $zero
  /* 023E1C 8002321C 0C008A42 */       jal func_80022908
  /* 023E20 80023220 00002825 */        or $a1, $zero, $zero
  /* 023E24 80023224 24040808 */     addiu $a0, $zero, 0x808
  /* 023E28 80023228 0C008A42 */       jal func_80022908
  /* 023E2C 8002322C 00002825 */        or $a1, $zero, $zero
  /* 023E30 80023230 00002025 */        or $a0, $zero, $zero
  /* 023E34 80023234 0C008A42 */       jal func_80022908
  /* 023E38 80023238 00002825 */        or $a1, $zero, $zero
  /* 023E3C 8002323C 34048200 */       ori $a0, $zero, 0x8200
  /* 023E40 80023240 0C008A42 */       jal func_80022908
  /* 023E44 80023244 00002825 */        or $a1, $zero, $zero
  /* 023E48 80023248 00002025 */        or $a0, $zero, $zero
  /* 023E4C 8002324C 0C008A42 */       jal func_80022908
  /* 023E50 80023250 00002825 */        or $a1, $zero, $zero
  /* 023E54 80023254 24044100 */     addiu $a0, $zero, 0x4100
  /* 023E58 80023258 0C008A42 */       jal func_80022908
  /* 023E5C 8002325C 00002825 */        or $a1, $zero, $zero
  /* 023E60 80023260 00002025 */        or $a0, $zero, $zero
  /* 023E64 80023264 0C008A42 */       jal func_80022908
  /* 023E68 80023268 00002825 */        or $a1, $zero, $zero
  /* 023E6C 8002326C 24040404 */     addiu $a0, $zero, 0x404
  /* 023E70 80023270 0C008A42 */       jal func_80022908
  /* 023E74 80023274 00002825 */        or $a1, $zero, $zero
  /* 023E78 80023278 02402025 */        or $a0, $s2, $zero
  /* 023E7C 8002327C 0C008A61 */       jal func_80022984
  /* 023E80 80023280 24050001 */     addiu $a1, $zero, 1
  /* 023E84 80023284 3C10800A */       lui $s0, %hi(D_8009E3D8)
  /* 023E88 80023288 2610E3D8 */     addiu $s0, $s0, %lo(D_8009E3D8)
  /* 023E8C 8002328C 8E0F0000 */        lw $t7, ($s0) # D_8009E3D8 + 0
  /* 023E90 80023290 11E0001C */      beqz $t7, .L80023304
  /* 023E94 80023294 00002025 */        or $a0, $zero, $zero
  .L80023298:
  /* 023E98 80023298 0C008A42 */       jal func_80022908
  /* 023E9C 8002329C 00002825 */        or $a1, $zero, $zero
  /* 023EA0 800232A0 24042030 */     addiu $a0, $zero, 0x2030
  /* 023EA4 800232A4 0C008A42 */       jal func_80022908
  /* 023EA8 800232A8 00002825 */        or $a1, $zero, $zero
  /* 023EAC 800232AC 24040019 */     addiu $a0, $zero, 0x19
  /* 023EB0 800232B0 24050014 */     addiu $a1, $zero, 0x14
  /* 023EB4 800232B4 2406010E */     addiu $a2, $zero, 0x10e
  /* 023EB8 800232B8 0C0088FD */       jal func_800223F4
  /* 023EBC 800232BC 240700D2 */     addiu $a3, $zero, 0xd2
  /* 023EC0 800232C0 2404001E */     addiu $a0, $zero, 0x1e
  /* 023EC4 800232C4 0C008C04 */       jal func_80023010
  /* 023EC8 800232C8 24050019 */     addiu $a1, $zero, 0x19
  /* 023ECC 800232CC 8E190000 */        lw $t9, ($s0) # D_8009E3D8 + 0
  /* 023ED0 800232D0 0320F809 */      jalr $t9
  /* 023ED4 800232D4 00000000 */       nop 
  /* 023ED8 800232D8 00002025 */        or $a0, $zero, $zero
  /* 023EDC 800232DC 0C008A42 */       jal func_80022908
  /* 023EE0 800232E0 00002825 */        or $a1, $zero, $zero
  /* 023EE4 800232E4 24042030 */     addiu $a0, $zero, 0x2030
  /* 023EE8 800232E8 0C008A42 */       jal func_80022908
  /* 023EEC 800232EC 00002825 */        or $a1, $zero, $zero
  /* 023EF0 800232F0 02402025 */        or $a0, $s2, $zero
  /* 023EF4 800232F4 0C008A61 */       jal func_80022984
  /* 023EF8 800232F8 00002825 */        or $a1, $zero, $zero
  /* 023EFC 800232FC 1000FFE6 */         b .L80023298
  /* 023F00 80023300 00002025 */        or $a0, $zero, $zero
  .L80023304:
  /* 023F04 80023304 1000FFFF */         b .L80023304
  /* 023F08 80023308 00000000 */       nop 
  /* 023F0C 8002330C 00000000 */       nop 
# Maybe start of new file
  /* 023F10 80023310 00000000 */       nop 
  /* 023F14 80023314 00000000 */       nop 
  /* 023F18 80023318 00000000 */       nop 
  /* 023F1C 8002331C 00000000 */       nop 
# Maybe start of new file
  /* 023F20 80023320 8FBF0024 */        lw $ra, 0x24($sp)
  /* 023F24 80023324 8FB00018 */        lw $s0, 0x18($sp)
  /* 023F28 80023328 8FB1001C */        lw $s1, 0x1c($sp)
  /* 023F2C 8002332C 8FB20020 */        lw $s2, 0x20($sp)
  /* 023F30 80023330 03E00008 */        jr $ra
  /* 023F34 80023334 27BD0030 */     addiu $sp, $sp, 0x30

