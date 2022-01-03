.include "macros.inc"

.section .text, "ax"  # 0x800065A0 - 0x8010F860

.global GXSetTevOp
GXSetTevOp:
/* 800E2214 000DE134  7C 08 02 A6 */	mflr r0
/* 800E2218 000DE138  38 C0 00 0A */	li r6, 0xa
/* 800E221C 000DE13C  90 01 00 04 */	stw r0, 4(r1)
/* 800E2220 000DE140  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800E2224 000DE144  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800E2228 000DE148  3B E0 00 05 */	li r31, 5
/* 800E222C 000DE14C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800E2230 000DE150  7C 7E 1B 79 */	or. r30, r3, r3
/* 800E2234 000DE154  41 82 00 0C */	beq lbl_800E2240
/* 800E2238 000DE158  38 C0 00 00 */	li r6, 0
/* 800E223C 000DE15C  3B E0 00 00 */	li r31, 0
lbl_800E2240:
/* 800E2240 000DE160  2C 04 00 02 */	cmpwi r4, 2
/* 800E2244 000DE164  41 82 00 8C */	beq lbl_800E22D0
/* 800E2248 000DE168  40 80 00 14 */	bge lbl_800E225C
/* 800E224C 000DE16C  2C 04 00 00 */	cmpwi r4, 0
/* 800E2250 000DE170  41 82 00 1C */	beq lbl_800E226C
/* 800E2254 000DE174  40 80 00 48 */	bge lbl_800E229C
/* 800E2258 000DE178  48 00 01 10 */	b lbl_800E2368
lbl_800E225C:
/* 800E225C 000DE17C  2C 04 00 04 */	cmpwi r4, 4
/* 800E2260 000DE180  41 82 00 D8 */	beq lbl_800E2338
/* 800E2264 000DE184  40 80 01 04 */	bge lbl_800E2368
/* 800E2268 000DE188  48 00 00 9C */	b lbl_800E2304
lbl_800E226C:
/* 800E226C 000DE18C  38 7E 00 00 */	addi r3, r30, 0
/* 800E2270 000DE190  38 80 00 0F */	li r4, 0xf
/* 800E2274 000DE194  38 A0 00 08 */	li r5, 8
/* 800E2278 000DE198  38 E0 00 0F */	li r7, 0xf
/* 800E227C 000DE19C  48 00 01 3D */	bl GXSetTevColorIn
/* 800E2280 000DE1A0  38 7E 00 00 */	addi r3, r30, 0
/* 800E2284 000DE1A4  38 DF 00 00 */	addi r6, r31, 0
/* 800E2288 000DE1A8  38 80 00 07 */	li r4, 7
/* 800E228C 000DE1AC  38 A0 00 04 */	li r5, 4
/* 800E2290 000DE1B0  38 E0 00 07 */	li r7, 7
/* 800E2294 000DE1B4  48 00 01 A5 */	bl GXSetTevAlphaIn
/* 800E2298 000DE1B8  48 00 00 D0 */	b lbl_800E2368
lbl_800E229C:
/* 800E229C 000DE1BC  38 7E 00 00 */	addi r3, r30, 0
/* 800E22A0 000DE1C0  38 86 00 00 */	addi r4, r6, 0
/* 800E22A4 000DE1C4  38 A0 00 08 */	li r5, 8
/* 800E22A8 000DE1C8  38 C0 00 09 */	li r6, 9
/* 800E22AC 000DE1CC  38 E0 00 0F */	li r7, 0xf
/* 800E22B0 000DE1D0  48 00 01 09 */	bl GXSetTevColorIn
/* 800E22B4 000DE1D4  38 7E 00 00 */	addi r3, r30, 0
/* 800E22B8 000DE1D8  38 FF 00 00 */	addi r7, r31, 0
/* 800E22BC 000DE1DC  38 80 00 07 */	li r4, 7
/* 800E22C0 000DE1E0  38 A0 00 07 */	li r5, 7
/* 800E22C4 000DE1E4  38 C0 00 07 */	li r6, 7
/* 800E22C8 000DE1E8  48 00 01 71 */	bl GXSetTevAlphaIn
/* 800E22CC 000DE1EC  48 00 00 9C */	b lbl_800E2368
lbl_800E22D0:
/* 800E22D0 000DE1F0  38 7E 00 00 */	addi r3, r30, 0
/* 800E22D4 000DE1F4  38 86 00 00 */	addi r4, r6, 0
/* 800E22D8 000DE1F8  38 A0 00 0C */	li r5, 0xc
/* 800E22DC 000DE1FC  38 C0 00 08 */	li r6, 8
/* 800E22E0 000DE200  38 E0 00 0F */	li r7, 0xf
/* 800E22E4 000DE204  48 00 00 D5 */	bl GXSetTevColorIn
/* 800E22E8 000DE208  38 7E 00 00 */	addi r3, r30, 0
/* 800E22EC 000DE20C  38 DF 00 00 */	addi r6, r31, 0
/* 800E22F0 000DE210  38 80 00 07 */	li r4, 7
/* 800E22F4 000DE214  38 A0 00 04 */	li r5, 4
/* 800E22F8 000DE218  38 E0 00 07 */	li r7, 7
/* 800E22FC 000DE21C  48 00 01 3D */	bl GXSetTevAlphaIn
/* 800E2300 000DE220  48 00 00 68 */	b lbl_800E2368
lbl_800E2304:
/* 800E2304 000DE224  38 7E 00 00 */	addi r3, r30, 0
/* 800E2308 000DE228  38 80 00 0F */	li r4, 0xf
/* 800E230C 000DE22C  38 A0 00 0F */	li r5, 0xf
/* 800E2310 000DE230  38 C0 00 0F */	li r6, 0xf
/* 800E2314 000DE234  38 E0 00 08 */	li r7, 8
/* 800E2318 000DE238  48 00 00 A1 */	bl GXSetTevColorIn
/* 800E231C 000DE23C  38 7E 00 00 */	addi r3, r30, 0
/* 800E2320 000DE240  38 80 00 07 */	li r4, 7
/* 800E2324 000DE244  38 A0 00 07 */	li r5, 7
/* 800E2328 000DE248  38 C0 00 07 */	li r6, 7
/* 800E232C 000DE24C  38 E0 00 04 */	li r7, 4
/* 800E2330 000DE250  48 00 01 09 */	bl GXSetTevAlphaIn
/* 800E2334 000DE254  48 00 00 34 */	b lbl_800E2368
lbl_800E2338:
/* 800E2338 000DE258  38 7E 00 00 */	addi r3, r30, 0
/* 800E233C 000DE25C  38 E6 00 00 */	addi r7, r6, 0
/* 800E2340 000DE260  38 80 00 0F */	li r4, 0xf
/* 800E2344 000DE264  38 A0 00 0F */	li r5, 0xf
/* 800E2348 000DE268  38 C0 00 0F */	li r6, 0xf
/* 800E234C 000DE26C  48 00 00 6D */	bl GXSetTevColorIn
/* 800E2350 000DE270  38 7E 00 00 */	addi r3, r30, 0
/* 800E2354 000DE274  38 FF 00 00 */	addi r7, r31, 0
/* 800E2358 000DE278  38 80 00 07 */	li r4, 7
/* 800E235C 000DE27C  38 A0 00 07 */	li r5, 7
/* 800E2360 000DE280  38 C0 00 07 */	li r6, 7
/* 800E2364 000DE284  48 00 00 D5 */	bl GXSetTevAlphaIn
lbl_800E2368:
/* 800E2368 000DE288  38 7E 00 00 */	addi r3, r30, 0
/* 800E236C 000DE28C  38 80 00 00 */	li r4, 0
/* 800E2370 000DE290  38 A0 00 00 */	li r5, 0
/* 800E2374 000DE294  38 C0 00 00 */	li r6, 0
/* 800E2378 000DE298  38 E0 00 01 */	li r7, 1
/* 800E237C 000DE29C  39 00 00 00 */	li r8, 0
/* 800E2380 000DE2A0  48 00 01 3D */	bl GXSetTevColorOp
/* 800E2384 000DE2A4  38 7E 00 00 */	addi r3, r30, 0
/* 800E2388 000DE2A8  38 80 00 00 */	li r4, 0
/* 800E238C 000DE2AC  38 A0 00 00 */	li r5, 0
/* 800E2390 000DE2B0  38 C0 00 00 */	li r6, 0
/* 800E2394 000DE2B4  38 E0 00 01 */	li r7, 1
/* 800E2398 000DE2B8  39 00 00 00 */	li r8, 0
/* 800E239C 000DE2BC  48 00 01 E1 */	bl GXSetTevAlphaOp
/* 800E23A0 000DE2C0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800E23A4 000DE2C4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800E23A8 000DE2C8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800E23AC 000DE2CC  7C 08 03 A6 */	mtlr r0
/* 800E23B0 000DE2D0  38 21 00 18 */	addi r1, r1, 0x18
/* 800E23B4 000DE2D4  4E 80 00 20 */	blr

.global GXSetTevColorIn
GXSetTevColorIn:
/* 800E23B8 000DE2D8  54 63 10 3A */	slwi r3, r3, 2
/* 800E23BC 000DE2DC  80 0D 97 C8 */	lwz r0, gx@sda21(r13)
/* 800E23C0 000DE2E0  39 23 01 30 */	addi r9, r3, 0x130
/* 800E23C4 000DE2E4  7D 20 4A 14 */	add r9, r0, r9
/* 800E23C8 000DE2E8  80 69 00 00 */	lwz r3, 0(r9)
/* 800E23CC 000DE2EC  54 80 60 26 */	slwi r0, r4, 0xc
/* 800E23D0 000DE2F0  54 A8 40 2E */	slwi r8, r5, 8
/* 800E23D4 000DE2F4  54 63 05 1E */	rlwinm r3, r3, 0, 0x14, 0xf
/* 800E23D8 000DE2F8  7C 60 03 78 */	or r0, r3, r0
/* 800E23DC 000DE2FC  90 09 00 00 */	stw r0, 0(r9)
/* 800E23E0 000DE300  54 C4 20 36 */	slwi r4, r6, 4
/* 800E23E4 000DE304  38 60 00 61 */	li r3, 0x61
/* 800E23E8 000DE308  80 C9 00 00 */	lwz r6, 0(r9)
/* 800E23EC 000DE30C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E23F0 000DE310  38 00 00 01 */	li r0, 1
/* 800E23F4 000DE314  54 C6 06 26 */	rlwinm r6, r6, 0, 0x18, 0x13
/* 800E23F8 000DE318  7C C6 43 78 */	or r6, r6, r8
/* 800E23FC 000DE31C  90 C9 00 00 */	stw r6, 0(r9)
/* 800E2400 000DE320  80 C9 00 00 */	lwz r6, 0(r9)
/* 800E2404 000DE324  54 C6 07 2E */	rlwinm r6, r6, 0, 0x1c, 0x17
/* 800E2408 000DE328  7C C4 23 78 */	or r4, r6, r4
/* 800E240C 000DE32C  90 89 00 00 */	stw r4, 0(r9)
/* 800E2410 000DE330  80 89 00 00 */	lwz r4, 0(r9)
/* 800E2414 000DE334  54 84 00 36 */	rlwinm r4, r4, 0, 0, 0x1b
/* 800E2418 000DE338  7C 84 3B 78 */	or r4, r4, r7
/* 800E241C 000DE33C  90 89 00 00 */	stw r4, 0(r9)
/* 800E2420 000DE340  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 800E2424 000DE344  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E2428 000DE348  80 89 00 00 */	lwz r4, 0(r9)
/* 800E242C 000DE34C  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800E2430 000DE350  B0 03 00 02 */	sth r0, 2(r3)
/* 800E2434 000DE354  4E 80 00 20 */	blr

.global GXSetTevAlphaIn
GXSetTevAlphaIn:
/* 800E2438 000DE358  54 63 10 3A */	slwi r3, r3, 2
/* 800E243C 000DE35C  80 0D 97 C8 */	lwz r0, gx@sda21(r13)
/* 800E2440 000DE360  39 23 01 70 */	addi r9, r3, 0x170
/* 800E2444 000DE364  7D 20 4A 14 */	add r9, r0, r9
/* 800E2448 000DE368  81 09 00 00 */	lwz r8, 0(r9)
/* 800E244C 000DE36C  54 83 68 24 */	slwi r3, r4, 0xd
/* 800E2450 000DE370  54 A0 50 2A */	slwi r0, r5, 0xa
/* 800E2454 000DE374  55 04 04 DE */	rlwinm r4, r8, 0, 0x13, 0xf
/* 800E2458 000DE378  7C 83 1B 78 */	or r3, r4, r3
/* 800E245C 000DE37C  90 69 00 00 */	stw r3, 0(r9)
/* 800E2460 000DE380  54 C6 38 30 */	slwi r6, r6, 7
/* 800E2464 000DE384  54 E4 20 36 */	slwi r4, r7, 4
/* 800E2468 000DE388  80 E9 00 00 */	lwz r7, 0(r9)
/* 800E246C 000DE38C  38 60 00 61 */	li r3, 0x61
/* 800E2470 000DE390  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E2474 000DE394  54 E7 05 A4 */	rlwinm r7, r7, 0, 0x16, 0x12
/* 800E2478 000DE398  7C E0 03 78 */	or r0, r7, r0
/* 800E247C 000DE39C  90 09 00 00 */	stw r0, 0(r9)
/* 800E2480 000DE3A0  38 00 00 01 */	li r0, 1
/* 800E2484 000DE3A4  80 E9 00 00 */	lwz r7, 0(r9)
/* 800E2488 000DE3A8  54 E7 06 6A */	rlwinm r7, r7, 0, 0x19, 0x15
/* 800E248C 000DE3AC  7C E6 33 78 */	or r6, r7, r6
/* 800E2490 000DE3B0  90 C9 00 00 */	stw r6, 0(r9)
/* 800E2494 000DE3B4  80 C9 00 00 */	lwz r6, 0(r9)
/* 800E2498 000DE3B8  54 C6 07 30 */	rlwinm r6, r6, 0, 0x1c, 0x18
/* 800E249C 000DE3BC  7C C4 23 78 */	or r4, r6, r4
/* 800E24A0 000DE3C0  90 89 00 00 */	stw r4, 0(r9)
/* 800E24A4 000DE3C4  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 800E24A8 000DE3C8  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E24AC 000DE3CC  80 89 00 00 */	lwz r4, 0(r9)
/* 800E24B0 000DE3D0  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800E24B4 000DE3D4  B0 03 00 02 */	sth r0, 2(r3)
/* 800E24B8 000DE3D8  4E 80 00 20 */	blr

.global GXSetTevColorOp
GXSetTevColorOp:
/* 800E24BC 000DE3DC  54 63 10 3A */	slwi r3, r3, 2
/* 800E24C0 000DE3E0  80 0D 97 C8 */	lwz r0, gx@sda21(r13)
/* 800E24C4 000DE3E4  38 63 01 30 */	addi r3, r3, 0x130
/* 800E24C8 000DE3E8  7C 60 1A 14 */	add r3, r0, r3
/* 800E24CC 000DE3EC  80 03 00 00 */	lwz r0, 0(r3)
/* 800E24D0 000DE3F0  2C 04 00 01 */	cmpwi r4, 1
/* 800E24D4 000DE3F4  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 800E24D8 000DE3F8  50 80 93 5A */	rlwimi r0, r4, 0x12, 0xd, 0xd
/* 800E24DC 000DE3FC  90 03 00 00 */	stw r0, 0(r3)
/* 800E24E0 000DE400  41 81 00 30 */	bgt lbl_800E2510
/* 800E24E4 000DE404  81 23 00 00 */	lwz r9, 0(r3)
/* 800E24E8 000DE408  54 C4 A0 16 */	slwi r4, r6, 0x14
/* 800E24EC 000DE40C  54 A0 80 1E */	slwi r0, r5, 0x10
/* 800E24F0 000DE410  55 25 03 12 */	rlwinm r5, r9, 0, 0xc, 9
/* 800E24F4 000DE414  7C A4 23 78 */	or r4, r5, r4
/* 800E24F8 000DE418  90 83 00 00 */	stw r4, 0(r3)
/* 800E24FC 000DE41C  80 83 00 00 */	lwz r4, 0(r3)
/* 800E2500 000DE420  54 84 04 1A */	rlwinm r4, r4, 0, 0x10, 0xd
/* 800E2504 000DE424  7C 80 03 78 */	or r0, r4, r0
/* 800E2508 000DE428  90 03 00 00 */	stw r0, 0(r3)
/* 800E250C 000DE42C  48 00 00 24 */	b lbl_800E2530
lbl_800E2510:
/* 800E2510 000DE430  80 03 00 00 */	lwz r0, 0(r3)
/* 800E2514 000DE434  54 00 03 12 */	rlwinm r0, r0, 0, 0xc, 9
/* 800E2518 000DE438  50 80 9A 96 */	rlwimi r0, r4, 0x13, 0xa, 0xb
/* 800E251C 000DE43C  90 03 00 00 */	stw r0, 0(r3)
/* 800E2520 000DE440  80 03 00 00 */	lwz r0, 0(r3)
/* 800E2524 000DE444  54 00 04 1A */	rlwinm r0, r0, 0, 0x10, 0xd
/* 800E2528 000DE448  64 00 00 03 */	oris r0, r0, 3
/* 800E252C 000DE44C  90 03 00 00 */	stw r0, 0(r3)
lbl_800E2530:
/* 800E2530 000DE450  80 83 00 00 */	lwz r4, 0(r3)
/* 800E2534 000DE454  54 E0 99 58 */	rlwinm r0, r7, 0x13, 5, 0xc
/* 800E2538 000DE458  55 06 B0 12 */	slwi r6, r8, 0x16
/* 800E253C 000DE45C  54 84 03 56 */	rlwinm r4, r4, 0, 0xd, 0xb
/* 800E2540 000DE460  7C 80 03 78 */	or r0, r4, r0
/* 800E2544 000DE464  90 03 00 00 */	stw r0, 0(r3)
/* 800E2548 000DE468  38 80 00 61 */	li r4, 0x61
/* 800E254C 000DE46C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E2550 000DE470  80 E3 00 00 */	lwz r7, 0(r3)
/* 800E2554 000DE474  38 00 00 01 */	li r0, 1
/* 800E2558 000DE478  54 E7 02 8E */	rlwinm r7, r7, 0, 0xa, 7
/* 800E255C 000DE47C  7C E6 33 78 */	or r6, r7, r6
/* 800E2560 000DE480  90 C3 00 00 */	stw r6, 0(r3)
/* 800E2564 000DE484  98 85 80 00 */	stb r4, 0xCC008000@l(r5)
/* 800E2568 000DE488  80 8D 97 C8 */	lwz r4, gx@sda21(r13)
/* 800E256C 000DE48C  80 63 00 00 */	lwz r3, 0(r3)
/* 800E2570 000DE490  90 65 80 00 */	stw r3, -0x8000(r5)
/* 800E2574 000DE494  B0 04 00 02 */	sth r0, 2(r4)
/* 800E2578 000DE498  4E 80 00 20 */	blr

.global GXSetTevAlphaOp
GXSetTevAlphaOp:
/* 800E257C 000DE49C  54 63 10 3A */	slwi r3, r3, 2
/* 800E2580 000DE4A0  80 0D 97 C8 */	lwz r0, gx@sda21(r13)
/* 800E2584 000DE4A4  38 63 01 70 */	addi r3, r3, 0x170
/* 800E2588 000DE4A8  7C 60 1A 14 */	add r3, r0, r3
/* 800E258C 000DE4AC  80 03 00 00 */	lwz r0, 0(r3)
/* 800E2590 000DE4B0  2C 04 00 01 */	cmpwi r4, 1
/* 800E2594 000DE4B4  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 800E2598 000DE4B8  50 80 93 5A */	rlwimi r0, r4, 0x12, 0xd, 0xd
/* 800E259C 000DE4BC  90 03 00 00 */	stw r0, 0(r3)
/* 800E25A0 000DE4C0  41 81 00 30 */	bgt lbl_800E25D0
/* 800E25A4 000DE4C4  81 23 00 00 */	lwz r9, 0(r3)
/* 800E25A8 000DE4C8  54 C4 A0 16 */	slwi r4, r6, 0x14
/* 800E25AC 000DE4CC  54 A0 80 1E */	slwi r0, r5, 0x10
/* 800E25B0 000DE4D0  55 25 03 12 */	rlwinm r5, r9, 0, 0xc, 9
/* 800E25B4 000DE4D4  7C A4 23 78 */	or r4, r5, r4
/* 800E25B8 000DE4D8  90 83 00 00 */	stw r4, 0(r3)
/* 800E25BC 000DE4DC  80 83 00 00 */	lwz r4, 0(r3)
/* 800E25C0 000DE4E0  54 84 04 1A */	rlwinm r4, r4, 0, 0x10, 0xd
/* 800E25C4 000DE4E4  7C 80 03 78 */	or r0, r4, r0
/* 800E25C8 000DE4E8  90 03 00 00 */	stw r0, 0(r3)
/* 800E25CC 000DE4EC  48 00 00 24 */	b lbl_800E25F0
lbl_800E25D0:
/* 800E25D0 000DE4F0  80 03 00 00 */	lwz r0, 0(r3)
/* 800E25D4 000DE4F4  54 00 03 12 */	rlwinm r0, r0, 0, 0xc, 9
/* 800E25D8 000DE4F8  50 80 9A 96 */	rlwimi r0, r4, 0x13, 0xa, 0xb
/* 800E25DC 000DE4FC  90 03 00 00 */	stw r0, 0(r3)
/* 800E25E0 000DE500  80 03 00 00 */	lwz r0, 0(r3)
/* 800E25E4 000DE504  54 00 04 1A */	rlwinm r0, r0, 0, 0x10, 0xd
/* 800E25E8 000DE508  64 00 00 03 */	oris r0, r0, 3
/* 800E25EC 000DE50C  90 03 00 00 */	stw r0, 0(r3)
lbl_800E25F0:
/* 800E25F0 000DE510  80 83 00 00 */	lwz r4, 0(r3)
/* 800E25F4 000DE514  54 E0 99 58 */	rlwinm r0, r7, 0x13, 5, 0xc
/* 800E25F8 000DE518  55 06 B0 12 */	slwi r6, r8, 0x16
/* 800E25FC 000DE51C  54 84 03 56 */	rlwinm r4, r4, 0, 0xd, 0xb
/* 800E2600 000DE520  7C 80 03 78 */	or r0, r4, r0
/* 800E2604 000DE524  90 03 00 00 */	stw r0, 0(r3)
/* 800E2608 000DE528  38 80 00 61 */	li r4, 0x61
/* 800E260C 000DE52C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E2610 000DE530  80 E3 00 00 */	lwz r7, 0(r3)
/* 800E2614 000DE534  38 00 00 01 */	li r0, 1
/* 800E2618 000DE538  54 E7 02 8E */	rlwinm r7, r7, 0, 0xa, 7
/* 800E261C 000DE53C  7C E6 33 78 */	or r6, r7, r6
/* 800E2620 000DE540  90 C3 00 00 */	stw r6, 0(r3)
/* 800E2624 000DE544  98 85 80 00 */	stb r4, 0xCC008000@l(r5)
/* 800E2628 000DE548  80 8D 97 C8 */	lwz r4, gx@sda21(r13)
/* 800E262C 000DE54C  80 63 00 00 */	lwz r3, 0(r3)
/* 800E2630 000DE550  90 65 80 00 */	stw r3, -0x8000(r5)
/* 800E2634 000DE554  B0 04 00 02 */	sth r0, 2(r4)
/* 800E2638 000DE558  4E 80 00 20 */	blr

.global GXSetTevColor
GXSetTevColor:
/* 800E263C 000DE55C  88 04 00 03 */	lbz r0, 3(r4)
/* 800E2640 000DE560  54 68 08 3C */	slwi r8, r3, 1
/* 800E2644 000DE564  88 A4 00 00 */	lbz r5, 0(r4)
/* 800E2648 000DE568  38 E8 00 E0 */	addi r7, r8, 0xe0
/* 800E264C 000DE56C  54 09 60 26 */	slwi r9, r0, 0xc
/* 800E2650 000DE570  50 A9 06 3E */	rlwimi r9, r5, 0, 0x18, 0x1f
/* 800E2654 000DE574  89 44 00 02 */	lbz r10, 2(r4)
/* 800E2658 000DE578  88 C4 00 01 */	lbz r6, 1(r4)
/* 800E265C 000DE57C  54 E7 C0 0E */	slwi r7, r7, 0x18
/* 800E2660 000DE580  38 A0 00 61 */	li r5, 0x61
/* 800E2664 000DE584  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E2668 000DE588  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E266C 000DE58C  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800E2670 000DE590  51 27 03 3E */	rlwimi r7, r9, 0, 0xc, 0x1f
/* 800E2674 000DE594  38 08 00 E1 */	addi r0, r8, 0xe1
/* 800E2678 000DE598  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 800E267C 000DE59C  54 C7 60 26 */	slwi r7, r6, 0xc
/* 800E2680 000DE5A0  54 06 C0 0E */	slwi r6, r0, 0x18
/* 800E2684 000DE5A4  51 47 06 3E */	rlwimi r7, r10, 0, 0x18, 0x1f
/* 800E2688 000DE5A8  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E268C 000DE5AC  50 E6 03 3E */	rlwimi r6, r7, 0, 0xc, 0x1f
/* 800E2690 000DE5B0  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E2694 000DE5B4  38 00 00 01 */	li r0, 1
/* 800E2698 000DE5B8  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E269C 000DE5BC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E26A0 000DE5C0  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E26A4 000DE5C4  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E26A8 000DE5C8  B0 03 00 02 */	sth r0, 2(r3)
/* 800E26AC 000DE5CC  4E 80 00 20 */	blr

.global GXSetTevKColor
GXSetTevKColor:
/* 800E26B0 000DE5D0  88 04 00 03 */	lbz r0, 3(r4)
/* 800E26B4 000DE5D4  54 65 08 3C */	slwi r5, r3, 1
/* 800E26B8 000DE5D8  88 C4 00 00 */	lbz r6, 0(r4)
/* 800E26BC 000DE5DC  38 E5 00 E0 */	addi r7, r5, 0xe0
/* 800E26C0 000DE5E0  54 00 60 26 */	slwi r0, r0, 0xc
/* 800E26C4 000DE5E4  50 C0 06 3E */	rlwimi r0, r6, 0, 0x18, 0x1f
/* 800E26C8 000DE5E8  88 C4 00 01 */	lbz r6, 1(r4)
/* 800E26CC 000DE5EC  89 24 00 02 */	lbz r9, 2(r4)
/* 800E26D0 000DE5F0  54 00 03 0E */	rlwinm r0, r0, 0, 0xc, 7
/* 800E26D4 000DE5F4  64 08 00 80 */	oris r8, r0, 0x80
/* 800E26D8 000DE5F8  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E26DC 000DE5FC  54 E7 C0 0E */	slwi r7, r7, 0x18
/* 800E26E0 000DE600  38 00 00 61 */	li r0, 0x61
/* 800E26E4 000DE604  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E26E8 000DE608  54 C6 60 26 */	slwi r6, r6, 0xc
/* 800E26EC 000DE60C  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E26F0 000DE610  51 07 02 3E */	rlwimi r7, r8, 0, 8, 0x1f
/* 800E26F4 000DE614  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 800E26F8 000DE618  51 26 06 3E */	rlwimi r6, r9, 0, 0x18, 0x1f
/* 800E26FC 000DE61C  38 A5 00 E1 */	addi r5, r5, 0xe1
/* 800E2700 000DE620  98 04 80 00 */	stb r0, -0x8000(r4)
/* 800E2704 000DE624  54 C0 03 0E */	rlwinm r0, r6, 0, 0xc, 7
/* 800E2708 000DE628  64 06 00 80 */	oris r6, r0, 0x80
/* 800E270C 000DE62C  54 A0 C0 0E */	slwi r0, r5, 0x18
/* 800E2710 000DE630  50 C0 02 3E */	rlwimi r0, r6, 0, 8, 0x1f
/* 800E2714 000DE634  90 04 80 00 */	stw r0, -0x8000(r4)
/* 800E2718 000DE638  38 00 00 01 */	li r0, 1
/* 800E271C 000DE63C  B0 03 00 02 */	sth r0, 2(r3)
/* 800E2720 000DE640  4E 80 00 20 */	blr

.global GXSetTevKColorSel
GXSetTevKColorSel:
/* 800E2724 000DE644  7C 65 0E 70 */	srawi r5, r3, 1
/* 800E2728 000DE648  80 CD 97 C8 */	lwz r6, gx@sda21(r13)
/* 800E272C 000DE64C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800E2730 000DE650  54 A3 10 3A */	slwi r3, r5, 2
/* 800E2734 000DE654  38 E3 01 B0 */	addi r7, r3, 0x1b0
/* 800E2738 000DE658  7C E6 3A 14 */	add r7, r6, r7
/* 800E273C 000DE65C  41 82 00 1C */	beq lbl_800E2758
/* 800E2740 000DE660  80 67 00 00 */	lwz r3, 0(r7)
/* 800E2744 000DE664  54 80 70 22 */	slwi r0, r4, 0xe
/* 800E2748 000DE668  54 63 04 98 */	rlwinm r3, r3, 0, 0x12, 0xc
/* 800E274C 000DE66C  7C 60 03 78 */	or r0, r3, r0
/* 800E2750 000DE670  90 07 00 00 */	stw r0, 0(r7)
/* 800E2754 000DE674  48 00 00 18 */	b lbl_800E276C
lbl_800E2758:
/* 800E2758 000DE678  80 67 00 00 */	lwz r3, 0(r7)
/* 800E275C 000DE67C  54 80 20 36 */	slwi r0, r4, 4
/* 800E2760 000DE680  54 63 07 2C */	rlwinm r3, r3, 0, 0x1c, 0x16
/* 800E2764 000DE684  7C 60 03 78 */	or r0, r3, r0
/* 800E2768 000DE688  90 07 00 00 */	stw r0, 0(r7)
lbl_800E276C:
/* 800E276C 000DE68C  38 00 00 61 */	li r0, 0x61
/* 800E2770 000DE690  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E2774 000DE694  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E2778 000DE698  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800E277C 000DE69C  38 00 00 01 */	li r0, 1
/* 800E2780 000DE6A0  80 87 00 00 */	lwz r4, 0(r7)
/* 800E2784 000DE6A4  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800E2788 000DE6A8  B0 03 00 02 */	sth r0, 2(r3)
/* 800E278C 000DE6AC  4E 80 00 20 */	blr

.global GXSetTevKAlphaSel
GXSetTevKAlphaSel:
/* 800E2790 000DE6B0  7C 65 0E 70 */	srawi r5, r3, 1
/* 800E2794 000DE6B4  80 CD 97 C8 */	lwz r6, gx@sda21(r13)
/* 800E2798 000DE6B8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800E279C 000DE6BC  54 A3 10 3A */	slwi r3, r5, 2
/* 800E27A0 000DE6C0  38 E3 01 B0 */	addi r7, r3, 0x1b0
/* 800E27A4 000DE6C4  7C E6 3A 14 */	add r7, r6, r7
/* 800E27A8 000DE6C8  41 82 00 1C */	beq lbl_800E27C4
/* 800E27AC 000DE6CC  80 67 00 00 */	lwz r3, 0(r7)
/* 800E27B0 000DE6D0  54 80 98 18 */	slwi r0, r4, 0x13
/* 800E27B4 000DE6D4  54 63 03 4E */	rlwinm r3, r3, 0, 0xd, 7
/* 800E27B8 000DE6D8  7C 60 03 78 */	or r0, r3, r0
/* 800E27BC 000DE6DC  90 07 00 00 */	stw r0, 0(r7)
/* 800E27C0 000DE6E0  48 00 00 18 */	b lbl_800E27D8
lbl_800E27C4:
/* 800E27C4 000DE6E4  80 67 00 00 */	lwz r3, 0(r7)
/* 800E27C8 000DE6E8  54 80 48 2C */	slwi r0, r4, 9
/* 800E27CC 000DE6EC  54 63 05 E2 */	rlwinm r3, r3, 0, 0x17, 0x11
/* 800E27D0 000DE6F0  7C 60 03 78 */	or r0, r3, r0
/* 800E27D4 000DE6F4  90 07 00 00 */	stw r0, 0(r7)
lbl_800E27D8:
/* 800E27D8 000DE6F8  38 00 00 61 */	li r0, 0x61
/* 800E27DC 000DE6FC  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E27E0 000DE700  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E27E4 000DE704  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800E27E8 000DE708  38 00 00 01 */	li r0, 1
/* 800E27EC 000DE70C  80 87 00 00 */	lwz r4, 0(r7)
/* 800E27F0 000DE710  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800E27F4 000DE714  B0 03 00 02 */	sth r0, 2(r3)
/* 800E27F8 000DE718  4E 80 00 20 */	blr

.global GXSetTevSwapMode
GXSetTevSwapMode:
/* 800E27FC 000DE71C  54 63 10 3A */	slwi r3, r3, 2
/* 800E2800 000DE720  80 0D 97 C8 */	lwz r0, gx@sda21(r13)
/* 800E2804 000DE724  38 E3 01 70 */	addi r7, r3, 0x170
/* 800E2808 000DE728  7C E0 3A 14 */	add r7, r0, r7
/* 800E280C 000DE72C  80 07 00 00 */	lwz r0, 0(r7)
/* 800E2810 000DE730  54 A6 10 3A */	slwi r6, r5, 2
/* 800E2814 000DE734  38 60 00 61 */	li r3, 0x61
/* 800E2818 000DE738  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 800E281C 000DE73C  7C 00 23 78 */	or r0, r0, r4
/* 800E2820 000DE740  90 07 00 00 */	stw r0, 0(r7)
/* 800E2824 000DE744  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E2828 000DE748  38 00 00 01 */	li r0, 1
/* 800E282C 000DE74C  80 87 00 00 */	lwz r4, 0(r7)
/* 800E2830 000DE750  54 84 07 B6 */	rlwinm r4, r4, 0, 0x1e, 0x1b
/* 800E2834 000DE754  7C 84 33 78 */	or r4, r4, r6
/* 800E2838 000DE758  90 87 00 00 */	stw r4, 0(r7)
/* 800E283C 000DE75C  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 800E2840 000DE760  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E2844 000DE764  80 87 00 00 */	lwz r4, 0(r7)
/* 800E2848 000DE768  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800E284C 000DE76C  B0 03 00 02 */	sth r0, 2(r3)
/* 800E2850 000DE770  4E 80 00 20 */	blr

.global GXSetTevSwapModeTable
GXSetTevSwapModeTable:
/* 800E2854 000DE774  54 69 08 3C */	slwi r9, r3, 1
/* 800E2858 000DE778  80 0D 97 C8 */	lwz r0, gx@sda21(r13)
/* 800E285C 000DE77C  54 63 18 38 */	slwi r3, r3, 3
/* 800E2860 000DE780  39 63 01 B0 */	addi r11, r3, 0x1b0
/* 800E2864 000DE784  7D 60 5A 14 */	add r11, r0, r11
/* 800E2868 000DE788  81 0B 00 00 */	lwz r8, 0(r11)
/* 800E286C 000DE78C  38 09 00 01 */	addi r0, r9, 1
/* 800E2870 000DE790  54 03 10 3A */	slwi r3, r0, 2
/* 800E2874 000DE794  55 00 00 3A */	rlwinm r0, r8, 0, 0, 0x1d
/* 800E2878 000DE798  7C 00 23 78 */	or r0, r0, r4
/* 800E287C 000DE79C  90 0B 00 00 */	stw r0, 0(r11)
/* 800E2880 000DE7A0  54 A0 10 3A */	slwi r0, r5, 2
/* 800E2884 000DE7A4  39 20 00 61 */	li r9, 0x61
/* 800E2888 000DE7A8  80 8B 00 00 */	lwz r4, 0(r11)
/* 800E288C 000DE7AC  3D 00 CC 01 */	lis r8, 0xCC008000@ha
/* 800E2890 000DE7B0  39 43 01 B0 */	addi r10, r3, 0x1b0
/* 800E2894 000DE7B4  54 83 07 B6 */	rlwinm r3, r4, 0, 0x1e, 0x1b
/* 800E2898 000DE7B8  7C 60 03 78 */	or r0, r3, r0
/* 800E289C 000DE7BC  90 0B 00 00 */	stw r0, 0(r11)
/* 800E28A0 000DE7C0  54 E3 10 3A */	slwi r3, r7, 2
/* 800E28A4 000DE7C4  38 00 00 01 */	li r0, 1
/* 800E28A8 000DE7C8  99 28 80 00 */	stb r9, 0xCC008000@l(r8)
/* 800E28AC 000DE7CC  80 8D 97 C8 */	lwz r4, gx@sda21(r13)
/* 800E28B0 000DE7D0  80 AB 00 00 */	lwz r5, 0(r11)
/* 800E28B4 000DE7D4  7D 44 52 14 */	add r10, r4, r10
/* 800E28B8 000DE7D8  90 A8 80 00 */	stw r5, -0x8000(r8)
/* 800E28BC 000DE7DC  80 8A 00 00 */	lwz r4, 0(r10)
/* 800E28C0 000DE7E0  54 84 00 3A */	rlwinm r4, r4, 0, 0, 0x1d
/* 800E28C4 000DE7E4  7C 84 33 78 */	or r4, r4, r6
/* 800E28C8 000DE7E8  90 8A 00 00 */	stw r4, 0(r10)
/* 800E28CC 000DE7EC  80 8A 00 00 */	lwz r4, 0(r10)
/* 800E28D0 000DE7F0  54 84 07 B6 */	rlwinm r4, r4, 0, 0x1e, 0x1b
/* 800E28D4 000DE7F4  7C 83 1B 78 */	or r3, r4, r3
/* 800E28D8 000DE7F8  90 6A 00 00 */	stw r3, 0(r10)
/* 800E28DC 000DE7FC  99 28 80 00 */	stb r9, -0x8000(r8)
/* 800E28E0 000DE800  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E28E4 000DE804  80 8A 00 00 */	lwz r4, 0(r10)
/* 800E28E8 000DE808  90 88 80 00 */	stw r4, -0x8000(r8)
/* 800E28EC 000DE80C  B0 03 00 02 */	sth r0, 2(r3)
/* 800E28F0 000DE810  4E 80 00 20 */	blr

.global GXSetAlphaCompare
GXSetAlphaCompare:
/* 800E28F4 000DE814  54 E7 44 2E */	rlwinm r7, r7, 8, 0x10, 0x17
/* 800E28F8 000DE818  81 0D 97 C8 */	lwz r8, gx@sda21(r13)
/* 800E28FC 000DE81C  50 87 06 3E */	rlwimi r7, r4, 0, 0x18, 0x1f
/* 800E2900 000DE820  54 60 80 1E */	slwi r0, r3, 0x10
/* 800E2904 000DE824  50 E0 04 3E */	rlwimi r0, r7, 0, 0x10, 0x1f
/* 800E2908 000DE828  54 03 03 52 */	rlwinm r3, r0, 0, 0xd, 9
/* 800E290C 000DE82C  54 C0 98 18 */	slwi r0, r6, 0x13
/* 800E2910 000DE830  7C 60 03 78 */	or r0, r3, r0
/* 800E2914 000DE834  54 03 02 8E */	rlwinm r3, r0, 0, 0xa, 7
/* 800E2918 000DE838  54 A0 B0 12 */	slwi r0, r5, 0x16
/* 800E291C 000DE83C  7C 60 03 78 */	or r0, r3, r0
/* 800E2920 000DE840  54 04 02 3E */	clrlwi r4, r0, 8
/* 800E2924 000DE844  38 00 00 61 */	li r0, 0x61
/* 800E2928 000DE848  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E292C 000DE84C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E2930 000DE850  64 84 F3 00 */	oris r4, r4, 0xf300
/* 800E2934 000DE854  38 00 00 01 */	li r0, 1
/* 800E2938 000DE858  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800E293C 000DE85C  B0 08 00 02 */	sth r0, 2(r8)
/* 800E2940 000DE860  4E 80 00 20 */	blr

.global GXSetZTexture
GXSetZTexture:
/* 800E2944 000DE864  2C 04 00 13 */	cmpwi r4, 0x13
/* 800E2948 000DE868  54 A0 02 3E */	clrlwi r0, r5, 8
/* 800E294C 000DE86C  64 07 F4 00 */	oris r7, r0, 0xf400
/* 800E2950 000DE870  41 82 00 28 */	beq lbl_800E2978
/* 800E2954 000DE874  40 80 00 10 */	bge lbl_800E2964
/* 800E2958 000DE878  2C 04 00 11 */	cmpwi r4, 0x11
/* 800E295C 000DE87C  41 82 00 14 */	beq lbl_800E2970
/* 800E2960 000DE880  48 00 00 28 */	b lbl_800E2988
lbl_800E2964:
/* 800E2964 000DE884  2C 04 00 16 */	cmpwi r4, 0x16
/* 800E2968 000DE888  41 82 00 18 */	beq lbl_800E2980
/* 800E296C 000DE88C  48 00 00 1C */	b lbl_800E2988
lbl_800E2970:
/* 800E2970 000DE890  38 C0 00 00 */	li r6, 0
/* 800E2974 000DE894  48 00 00 18 */	b lbl_800E298C
lbl_800E2978:
/* 800E2978 000DE898  38 C0 00 01 */	li r6, 1
/* 800E297C 000DE89C  48 00 00 10 */	b lbl_800E298C
lbl_800E2980:
/* 800E2980 000DE8A0  38 C0 00 02 */	li r6, 2
/* 800E2984 000DE8A4  48 00 00 08 */	b lbl_800E298C
lbl_800E2988:
/* 800E2988 000DE8A8  38 C0 00 02 */	li r6, 2
lbl_800E298C:
/* 800E298C 000DE8AC  38 00 00 61 */	li r0, 0x61
/* 800E2990 000DE8B0  80 8D 97 C8 */	lwz r4, gx@sda21(r13)
/* 800E2994 000DE8B4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E2998 000DE8B8  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800E299C 000DE8BC  54 C6 07 B6 */	rlwinm r6, r6, 0, 0x1e, 0x1b
/* 800E29A0 000DE8C0  54 63 10 3A */	slwi r3, r3, 2
/* 800E29A4 000DE8C4  90 E5 80 00 */	stw r7, -0x8000(r5)
/* 800E29A8 000DE8C8  7C C3 1B 78 */	or r3, r6, r3
/* 800E29AC 000DE8CC  54 63 02 3E */	clrlwi r3, r3, 8
/* 800E29B0 000DE8D0  98 05 80 00 */	stb r0, -0x8000(r5)
/* 800E29B4 000DE8D4  64 63 F5 00 */	oris r3, r3, 0xf500
/* 800E29B8 000DE8D8  38 00 00 01 */	li r0, 1
/* 800E29BC 000DE8DC  90 65 80 00 */	stw r3, -0x8000(r5)
/* 800E29C0 000DE8E0  B0 04 00 02 */	sth r0, 2(r4)
/* 800E29C4 000DE8E4  4E 80 00 20 */	blr

.global GXSetTevOrder
GXSetTevOrder:
/* 800E29C8 000DE8E8  7C 67 0E 70 */	srawi r7, r3, 1
/* 800E29CC 000DE8EC  81 2D 97 C8 */	lwz r9, gx@sda21(r13)
/* 800E29D0 000DE8F0  54 AA 06 2C */	rlwinm r10, r5, 0, 0x18, 0x16
/* 800E29D4 000DE8F4  7C E7 01 94 */	addze r7, r7
/* 800E29D8 000DE8F8  54 60 10 3A */	slwi r0, r3, 2
/* 800E29DC 000DE8FC  7D 09 02 14 */	add r8, r9, r0
/* 800E29E0 000DE900  54 E7 10 3A */	slwi r7, r7, 2
/* 800E29E4 000DE904  90 A8 04 9C */	stw r5, 0x49c(r8)
/* 800E29E8 000DE908  38 E7 01 00 */	addi r7, r7, 0x100
/* 800E29EC 000DE90C  28 0A 00 08 */	cmplwi r10, 8
/* 800E29F0 000DE910  38 0A 00 00 */	addi r0, r10, 0
/* 800E29F4 000DE914  7C E9 3A 14 */	add r7, r9, r7
/* 800E29F8 000DE918  41 80 00 0C */	blt lbl_800E2A04
/* 800E29FC 000DE91C  39 20 00 00 */	li r9, 0
/* 800E2A00 000DE920  48 00 00 08 */	b lbl_800E2A08
lbl_800E2A04:
/* 800E2A04 000DE924  7C 09 03 78 */	mr r9, r0
lbl_800E2A08:
/* 800E2A08 000DE928  2C 04 00 08 */	cmpwi r4, 8
/* 800E2A0C 000DE92C  41 80 00 08 */	blt lbl_800E2A14
/* 800E2A10 000DE930  38 80 00 00 */	li r4, 0
lbl_800E2A14:
/* 800E2A14 000DE934  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800E2A18 000DE938  41 82 00 94 */	beq lbl_800E2AAC
/* 800E2A1C 000DE93C  81 07 00 00 */	lwz r8, 0(r7)
/* 800E2A20 000DE940  55 23 60 26 */	slwi r3, r9, 0xc
/* 800E2A24 000DE944  54 80 78 20 */	slwi r0, r4, 0xf
/* 800E2A28 000DE948  55 04 05 20 */	rlwinm r4, r8, 0, 0x14, 0x10
/* 800E2A2C 000DE94C  7C 83 1B 78 */	or r3, r4, r3
/* 800E2A30 000DE950  90 67 00 00 */	stw r3, 0(r7)
/* 800E2A34 000DE954  2C 06 00 FF */	cmpwi r6, 0xff
/* 800E2A38 000DE958  80 67 00 00 */	lwz r3, 0(r7)
/* 800E2A3C 000DE95C  54 63 04 5A */	rlwinm r3, r3, 0, 0x11, 0xd
/* 800E2A40 000DE960  7C 60 03 78 */	or r0, r3, r0
/* 800E2A44 000DE964  90 07 00 00 */	stw r0, 0(r7)
/* 800E2A48 000DE968  40 82 00 0C */	bne lbl_800E2A54
/* 800E2A4C 000DE96C  38 00 00 07 */	li r0, 7
/* 800E2A50 000DE970  48 00 00 18 */	b lbl_800E2A68
lbl_800E2A54:
/* 800E2A54 000DE974  3C 60 80 1F */	lis r3, lbl_801E9198@ha
/* 800E2A58 000DE978  54 C4 10 3A */	slwi r4, r6, 2
/* 800E2A5C 000DE97C  38 03 91 98 */	addi r0, r3, lbl_801E9198@l
/* 800E2A60 000DE980  7C 60 22 14 */	add r3, r0, r4
/* 800E2A64 000DE984  80 03 00 00 */	lwz r0, 0(r3)
lbl_800E2A68:
/* 800E2A68 000DE988  80 67 00 00 */	lwz r3, 0(r7)
/* 800E2A6C 000DE98C  54 00 98 18 */	slwi r0, r0, 0x13
/* 800E2A70 000DE990  2C 05 00 FF */	cmpwi r5, 0xff
/* 800E2A74 000DE994  54 63 03 52 */	rlwinm r3, r3, 0, 0xd, 9
/* 800E2A78 000DE998  7C 60 03 78 */	or r0, r3, r0
/* 800E2A7C 000DE99C  90 07 00 00 */	stw r0, 0(r7)
/* 800E2A80 000DE9A0  38 80 00 00 */	li r4, 0
/* 800E2A84 000DE9A4  41 82 00 10 */	beq lbl_800E2A94
/* 800E2A88 000DE9A8  54 A0 05 EF */	rlwinm. r0, r5, 0, 0x17, 0x17
/* 800E2A8C 000DE9AC  40 82 00 08 */	bne lbl_800E2A94
/* 800E2A90 000DE9B0  38 80 00 01 */	li r4, 1
lbl_800E2A94:
/* 800E2A94 000DE9B4  80 67 00 00 */	lwz r3, 0(r7)
/* 800E2A98 000DE9B8  54 80 90 1A */	slwi r0, r4, 0x12
/* 800E2A9C 000DE9BC  54 63 03 98 */	rlwinm r3, r3, 0, 0xe, 0xc
/* 800E2AA0 000DE9C0  7C 60 03 78 */	or r0, r3, r0
/* 800E2AA4 000DE9C4  90 07 00 00 */	stw r0, 0(r7)
/* 800E2AA8 000DE9C8  48 00 00 8C */	b lbl_800E2B34
lbl_800E2AAC:
/* 800E2AAC 000DE9CC  80 67 00 00 */	lwz r3, 0(r7)
/* 800E2AB0 000DE9D0  54 80 18 38 */	slwi r0, r4, 3
/* 800E2AB4 000DE9D4  2C 06 00 FF */	cmpwi r6, 0xff
/* 800E2AB8 000DE9D8  54 63 00 38 */	rlwinm r3, r3, 0, 0, 0x1c
/* 800E2ABC 000DE9DC  7C 63 4B 78 */	or r3, r3, r9
/* 800E2AC0 000DE9E0  90 67 00 00 */	stw r3, 0(r7)
/* 800E2AC4 000DE9E4  80 67 00 00 */	lwz r3, 0(r7)
/* 800E2AC8 000DE9E8  54 63 07 72 */	rlwinm r3, r3, 0, 0x1d, 0x19
/* 800E2ACC 000DE9EC  7C 60 03 78 */	or r0, r3, r0
/* 800E2AD0 000DE9F0  90 07 00 00 */	stw r0, 0(r7)
/* 800E2AD4 000DE9F4  40 82 00 0C */	bne lbl_800E2AE0
/* 800E2AD8 000DE9F8  38 00 00 07 */	li r0, 7
/* 800E2ADC 000DE9FC  48 00 00 18 */	b lbl_800E2AF4
lbl_800E2AE0:
/* 800E2AE0 000DEA00  3C 60 80 1F */	lis r3, lbl_801E9198@ha
/* 800E2AE4 000DEA04  54 C4 10 3A */	slwi r4, r6, 2
/* 800E2AE8 000DEA08  38 03 91 98 */	addi r0, r3, lbl_801E9198@l
/* 800E2AEC 000DEA0C  7C 60 22 14 */	add r3, r0, r4
/* 800E2AF0 000DEA10  80 03 00 00 */	lwz r0, 0(r3)
lbl_800E2AF4:
/* 800E2AF4 000DEA14  80 67 00 00 */	lwz r3, 0(r7)
/* 800E2AF8 000DEA18  54 00 38 30 */	slwi r0, r0, 7
/* 800E2AFC 000DEA1C  2C 05 00 FF */	cmpwi r5, 0xff
/* 800E2B00 000DEA20  54 63 06 6A */	rlwinm r3, r3, 0, 0x19, 0x15
/* 800E2B04 000DEA24  7C 60 03 78 */	or r0, r3, r0
/* 800E2B08 000DEA28  90 07 00 00 */	stw r0, 0(r7)
/* 800E2B0C 000DEA2C  38 80 00 00 */	li r4, 0
/* 800E2B10 000DEA30  41 82 00 10 */	beq lbl_800E2B20
/* 800E2B14 000DEA34  54 A0 05 EF */	rlwinm. r0, r5, 0, 0x17, 0x17
/* 800E2B18 000DEA38  40 82 00 08 */	bne lbl_800E2B20
/* 800E2B1C 000DEA3C  38 80 00 01 */	li r4, 1
lbl_800E2B20:
/* 800E2B20 000DEA40  80 67 00 00 */	lwz r3, 0(r7)
/* 800E2B24 000DEA44  54 80 30 32 */	slwi r0, r4, 6
/* 800E2B28 000DEA48  54 63 06 B0 */	rlwinm r3, r3, 0, 0x1a, 0x18
/* 800E2B2C 000DEA4C  7C 60 03 78 */	or r0, r3, r0
/* 800E2B30 000DEA50  90 07 00 00 */	stw r0, 0(r7)
lbl_800E2B34:
/* 800E2B34 000DEA54  38 00 00 61 */	li r0, 0x61
/* 800E2B38 000DEA58  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E2B3C 000DEA5C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E2B40 000DEA60  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800E2B44 000DEA64  38 00 00 01 */	li r0, 1
/* 800E2B48 000DEA68  80 87 00 00 */	lwz r4, 0(r7)
/* 800E2B4C 000DEA6C  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800E2B50 000DEA70  B0 03 00 02 */	sth r0, 2(r3)
/* 800E2B54 000DEA74  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E2B58 000DEA78  80 03 04 F0 */	lwz r0, 0x4f0(r3)
/* 800E2B5C 000DEA7C  60 00 00 01 */	ori r0, r0, 1
/* 800E2B60 000DEA80  90 03 04 F0 */	stw r0, 0x4f0(r3)
/* 800E2B64 000DEA84  4E 80 00 20 */	blr

.global GXSetNumTevStages
GXSetNumTevStages:
/* 800E2B68 000DEA88  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800E2B6C 000DEA8C  80 8D 97 C8 */	lwz r4, gx@sda21(r13)
/* 800E2B70 000DEA90  38 03 FF FF */	addi r0, r3, -1
/* 800E2B74 000DEA94  84 64 02 04 */	lwzu r3, 0x204(r4)
/* 800E2B78 000DEA98  54 00 50 2A */	slwi r0, r0, 0xa
/* 800E2B7C 000DEA9C  54 63 05 A2 */	rlwinm r3, r3, 0, 0x16, 0x11
/* 800E2B80 000DEAA0  7C 60 03 78 */	or r0, r3, r0
/* 800E2B84 000DEAA4  90 04 00 00 */	stw r0, 0(r4)
/* 800E2B88 000DEAA8  80 6D 97 C8 */	lwz r3, gx@sda21(r13)
/* 800E2B8C 000DEAAC  80 03 04 F0 */	lwz r0, 0x4f0(r3)
/* 800E2B90 000DEAB0  60 00 00 04 */	ori r0, r0, 4
/* 800E2B94 000DEAB4  90 03 04 F0 */	stw r0, 0x4f0(r3)
/* 800E2B98 000DEAB8  4E 80 00 20 */	blr

.section .data

.global lbl_801E9198
lbl_801E9198:
	# ROM: 0x1E6198
	.4byte 0
	.byte 0x00, 0x00, 0x00, 0x01
	.4byte 0
	.byte 0x00, 0x00, 0x00, 0x01
	.4byte 0
	.byte 0x00, 0x00, 0x00, 0x01
	.byte 0x00, 0x00, 0x00, 0x07
	.byte 0x00, 0x00, 0x00, 0x05
	.byte 0x00, 0x00, 0x00, 0x06
	.4byte 0