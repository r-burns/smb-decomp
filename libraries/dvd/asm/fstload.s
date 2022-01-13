.include "macros.inc"

.section .text, "ax"  # 0x800065A0 - 0x8010F860

.global cb
cb:
/* 800CEBC4 000CAAE4  7C 08 02 A6 */	mflr r0
/* 800CEBC8 000CAAE8  2C 03 00 00 */	cmpwi r3, 0
/* 800CEBCC 000CAAEC  90 01 00 04 */	stw r0, 4(r1)
/* 800CEBD0 000CAAF0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800CEBD4 000CAAF4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800CEBD8 000CAAF8  3B E4 00 00 */	addi r31, r4, 0
/* 800CEBDC 000CAAFC  40 81 00 7C */	ble lbl_800CEC58
/* 800CEBE0 000CAB00  80 0D A2 38 */	lwz r0, status@sda21(r13)
/* 800CEBE4 000CAB04  2C 00 00 01 */	cmpwi r0, 1
/* 800CEBE8 000CAB08  41 82 00 3C */	beq lbl_800CEC24
/* 800CEBEC 000CAB0C  40 80 00 9C */	bge lbl_800CEC88
/* 800CEBF0 000CAB10  2C 00 00 00 */	cmpwi r0, 0
/* 800CEBF4 000CAB14  40 80 00 08 */	bge lbl_800CEBFC
/* 800CEBF8 000CAB18  48 00 00 90 */	b lbl_800CEC88
lbl_800CEBFC:
/* 800CEBFC 000CAB1C  38 00 00 01 */	li r0, 1
/* 800CEC00 000CAB20  80 8D A2 3C */	lwz r4, bb2@sda21(r13)
/* 800CEC04 000CAB24  3C 60 80 0D */	lis r3, cb@ha
/* 800CEC08 000CAB28  90 0D A2 38 */	stw r0, status@sda21(r13)
/* 800CEC0C 000CAB2C  38 E3 EB C4 */	addi r7, r3, cb@l
/* 800CEC10 000CAB30  38 7F 00 00 */	addi r3, r31, 0
/* 800CEC14 000CAB34  38 A0 00 20 */	li r5, 0x20
/* 800CEC18 000CAB38  38 C0 04 20 */	li r6, 0x420
/* 800CEC1C 000CAB3C  4B FF F0 C9 */	bl DVDReadAbsAsyncForBS
/* 800CEC20 000CAB40  48 00 00 68 */	b lbl_800CEC88
lbl_800CEC24:
/* 800CEC24 000CAB44  38 00 00 02 */	li r0, 2
/* 800CEC28 000CAB48  80 CD A2 3C */	lwz r6, bb2@sda21(r13)
/* 800CEC2C 000CAB4C  90 0D A2 38 */	stw r0, status@sda21(r13)
/* 800CEC30 000CAB50  3C 60 80 0D */	lis r3, cb@ha
/* 800CEC34 000CAB54  38 E3 EB C4 */	addi r7, r3, cb@l
/* 800CEC38 000CAB58  80 A6 00 08 */	lwz r5, 8(r6)
/* 800CEC3C 000CAB5C  7F E3 FB 78 */	mr r3, r31
/* 800CEC40 000CAB60  80 86 00 10 */	lwz r4, 0x10(r6)
/* 800CEC44 000CAB64  38 05 00 1F */	addi r0, r5, 0x1f
/* 800CEC48 000CAB68  80 C6 00 04 */	lwz r6, 4(r6)
/* 800CEC4C 000CAB6C  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 800CEC50 000CAB70  4B FF F0 95 */	bl DVDReadAbsAsyncForBS
/* 800CEC54 000CAB74  48 00 00 34 */	b lbl_800CEC88
lbl_800CEC58:
/* 800CEC58 000CAB78  2C 03 FF FF */	cmpwi r3, -1
/* 800CEC5C 000CAB7C  41 82 00 2C */	beq lbl_800CEC88
/* 800CEC60 000CAB80  2C 03 FF FC */	cmpwi r3, -4
/* 800CEC64 000CAB84  40 82 00 24 */	bne lbl_800CEC88
/* 800CEC68 000CAB88  38 00 00 00 */	li r0, 0
/* 800CEC6C 000CAB8C  90 0D A2 38 */	stw r0, status@sda21(r13)
/* 800CEC70 000CAB90  4B FF F5 CD */	bl DVDReset
/* 800CEC74 000CAB94  3C 60 80 0D */	lis r3, cb@ha
/* 800CEC78 000CAB98  80 8D A2 40 */	lwz r4, idTmp@sda21(r13)
/* 800CEC7C 000CAB9C  38 A3 EB C4 */	addi r5, r3, cb@l
/* 800CEC80 000CABA0  38 7F 00 00 */	addi r3, r31, 0
/* 800CEC84 000CABA4  4B FF F1 31 */	bl DVDReadDiskID
lbl_800CEC88:
/* 800CEC88 000CABA8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800CEC8C 000CABAC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800CEC90 000CABB0  38 21 00 18 */	addi r1, r1, 0x18
/* 800CEC94 000CABB4  7C 08 03 A6 */	mtlr r0
/* 800CEC98 000CABB8  4E 80 00 20 */	blr

.global __fstLoad
__fstLoad:
/* 800CEC9C 000CABBC  7C 08 02 A6 */	mflr r0
/* 800CECA0 000CABC0  3C 60 80 1E */	lis r3, lbl_801E7AA0@ha
/* 800CECA4 000CABC4  90 01 00 04 */	stw r0, 4(r1)
/* 800CECA8 000CABC8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800CECAC 000CABCC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800CECB0 000CABD0  3B E3 7A A0 */	addi r31, r3, lbl_801E7AA0@l
/* 800CECB4 000CABD4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 800CECB8 000CABD8  93 A1 00 54 */	stw r29, 0x54(r1)
/* 800CECBC 000CABDC  4B FF 3F D5 */	bl OSGetArenaHi
/* 800CECC0 000CABE0  3C 60 80 2C */	lis r3, bb2Buf@ha
/* 800CECC4 000CABE4  38 63 7A 38 */	addi r3, r3, bb2Buf@l
/* 800CECC8 000CABE8  38 81 00 2B */	addi r4, r1, 0x2b
/* 800CECCC 000CABEC  38 03 00 1F */	addi r0, r3, 0x1f
/* 800CECD0 000CABF0  54 83 00 34 */	rlwinm r3, r4, 0, 0, 0x1a
/* 800CECD4 000CABF4  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 800CECD8 000CABF8  90 6D A2 40 */	stw r3, idTmp@sda21(r13)
/* 800CECDC 000CABFC  90 0D A2 3C */	stw r0, bb2@sda21(r13)
/* 800CECE0 000CAC00  4B FF F5 5D */	bl DVDReset
/* 800CECE4 000CAC04  3C 60 80 2C */	lis r3, block@ha
/* 800CECE8 000CAC08  80 8D A2 40 */	lwz r4, idTmp@sda21(r13)
/* 800CECEC 000CAC0C  3C A0 80 0D */	lis r5, cb@ha
/* 800CECF0 000CAC10  38 63 7A 78 */	addi r3, r3, block@l
/* 800CECF4 000CAC14  38 A5 EB C4 */	addi r5, r5, cb@l
/* 800CECF8 000CAC18  4B FF F0 BD */	bl DVDReadDiskID
lbl_800CECFC:
/* 800CECFC 000CAC1C  4B FF F5 85 */	bl DVDGetDriveStatus
/* 800CED00 000CAC20  2C 03 00 00 */	cmpwi r3, 0
/* 800CED04 000CAC24  40 82 FF F8 */	bne lbl_800CECFC
/* 800CED08 000CAC28  80 6D A2 3C */	lwz r3, bb2@sda21(r13)
/* 800CED0C 000CAC2C  3F A0 80 00 */	lis r29, 0x80000000@ha
/* 800CED10 000CAC30  3F C0 80 00 */	lis r30, 0x80000038@ha
/* 800CED14 000CAC34  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800CED18 000CAC38  38 7D 00 00 */	addi r3, r29, 0x80000000@l
/* 800CED1C 000CAC3C  38 A0 00 20 */	li r5, 0x20
/* 800CED20 000CAC40  90 1E 00 38 */	stw r0, 0x80000038@l(r30)
/* 800CED24 000CAC44  80 8D A2 3C */	lwz r4, bb2@sda21(r13)
/* 800CED28 000CAC48  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800CED2C 000CAC4C  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 800CED30 000CAC50  80 8D A2 40 */	lwz r4, idTmp@sda21(r13)
/* 800CED34 000CAC54  4B F3 46 E1 */	bl memcpy
/* 800CED38 000CAC58  38 6D 97 88 */	addi r3, r13, lbl_802F1968@sda21
/* 800CED3C 000CAC5C  4C C6 31 82 */	crclr 6
/* 800CED40 000CAC60  4B FF 4E E1 */	bl OSReport
/* 800CED44 000CAC64  88 9D 00 00 */	lbz r4, 0(r29)
/* 800CED48 000CAC68  7F E3 FB 78 */	mr r3, r31
/* 800CED4C 000CAC6C  88 BD 00 01 */	lbz r5, 1(r29)
/* 800CED50 000CAC70  4C C6 31 82 */	crclr 6
/* 800CED54 000CAC74  88 DD 00 02 */	lbz r6, 2(r29)
/* 800CED58 000CAC78  88 FD 00 03 */	lbz r7, 3(r29)
/* 800CED5C 000CAC7C  4B FF 4E C5 */	bl OSReport
/* 800CED60 000CAC80  88 9D 00 04 */	lbz r4, 4(r29)
/* 800CED64 000CAC84  38 7F 00 1C */	addi r3, r31, 0x1c
/* 800CED68 000CAC88  88 BD 00 05 */	lbz r5, 5(r29)
/* 800CED6C 000CAC8C  4C C6 31 82 */	crclr 6
/* 800CED70 000CAC90  4B FF 4E B1 */	bl OSReport
/* 800CED74 000CAC94  88 9D 00 06 */	lbz r4, 6(r29)
/* 800CED78 000CAC98  38 7F 00 34 */	addi r3, r31, 0x34
/* 800CED7C 000CAC9C  4C C6 31 82 */	crclr 6
/* 800CED80 000CACA0  4B FF 4E A1 */	bl OSReport
/* 800CED84 000CACA4  88 9D 00 07 */	lbz r4, 7(r29)
/* 800CED88 000CACA8  38 7F 00 48 */	addi r3, r31, 0x48
/* 800CED8C 000CACAC  4C C6 31 82 */	crclr 6
/* 800CED90 000CACB0  4B FF 4E 91 */	bl OSReport
/* 800CED94 000CACB4  88 1E 00 08 */	lbz r0, 8(r30)
/* 800CED98 000CACB8  28 00 00 00 */	cmplwi r0, 0
/* 800CED9C 000CACBC  40 82 00 0C */	bne lbl_800CEDA8
/* 800CEDA0 000CACC0  38 8D 97 8C */	addi r4, r13, lbl_802F196C@sda21
/* 800CEDA4 000CACC4  48 00 00 08 */	b lbl_800CEDAC
lbl_800CEDA8:
/* 800CEDA8 000CACC8  38 8D 97 90 */	addi r4, r13, lbl_802F1970@sda21
lbl_800CEDAC:
/* 800CEDAC 000CACCC  4C C6 31 82 */	crclr 6
/* 800CEDB0 000CACD0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800CEDB4 000CACD4  4B FF 4E 6D */	bl OSReport
/* 800CEDB8 000CACD8  38 6D 97 88 */	addi r3, r13, lbl_802F1968@sda21
/* 800CEDBC 000CACDC  4C C6 31 82 */	crclr 6
/* 800CEDC0 000CACE0  4B FF 4E 61 */	bl OSReport
/* 800CEDC4 000CACE4  80 6D A2 3C */	lwz r3, bb2@sda21(r13)
/* 800CEDC8 000CACE8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800CEDCC 000CACEC  4B FF 3E D5 */	bl OSSetArenaHi
/* 800CEDD0 000CACF0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800CEDD4 000CACF4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800CEDD8 000CACF8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 800CEDDC 000CACFC  7C 08 03 A6 */	mtlr r0
/* 800CEDE0 000CAD00  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 800CEDE4 000CAD04  38 21 00 60 */	addi r1, r1, 0x60
/* 800CEDE8 000CAD08  4E 80 00 20 */	blr

.section .data

.global lbl_801E7AA0
lbl_801E7AA0:
	# ROM: 0x1E4AA0
glabel string___Game_Name______c_c_c_c_n
	.asciz "  Game Name ... %c%c%c%c\n"
	.balign 4
glabel string___Company________c_c_n
	.asciz "  Company ..... %c%c\n"
	.balign 4
glabel string___Disk___________d_n
	.asciz "  Disk # ...... %d\n"
glabel string___Game_ver_______d_n
	.asciz "  Game ver .... %d\n"
glabel string___Streaming______s_n
	.asciz "  Streaming ... %s\n"

.section .sdata

.global lbl_802F1968
lbl_802F1968:
	# ROM: 0x1EC0A8
	.byte 0x0A, 0x00, 0x00, 0x00

.global lbl_802F196C
lbl_802F196C:
	# ROM: 0x1EC0AC
	.byte 0x4F, 0x46, 0x46, 0x00

.global lbl_802F1970
lbl_802F1970:
	# ROM: 0x1EC0B0
	.byte 0x4F, 0x4E, 0x00, 0x00
	.4byte 0

.section .sbss

.global bb2
bb2:
	.skip 0x4
.global idTmp
idTmp:
	.skip 0x8