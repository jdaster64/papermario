.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel D_80244F88_EC7188
.ascii "cccc\n"

glabel D_80244F90_EC7190
.double 0.2

glabel D_80244F98_EC7198
.ascii "touch_choro\n"

.section .text

glabel func_80240158_EC2358
/* EC2358 80240158 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* EC235C 8024015C AFBF0020 */  sw        $ra, 0x20($sp)
/* EC2360 80240160 AFB1001C */  sw        $s1, 0x1c($sp)
/* EC2364 80240164 AFB00018 */  sw        $s0, 0x18($sp)
/* EC2368 80240168 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* EC236C 8024016C F7B80038 */  sdc1      $f24, 0x38($sp)
/* EC2370 80240170 F7B60030 */  sdc1      $f22, 0x30($sp)
/* EC2374 80240174 F7B40028 */  sdc1      $f20, 0x28($sp)
/* EC2378 80240178 8C910148 */  lw        $s1, 0x148($a0)
/* EC237C 8024017C 0C00F92F */  jal       dead_get_npc_unsafe
/* EC2380 80240180 86240008 */   lh       $a0, 8($s1)
/* EC2384 80240184 3C038011 */  lui       $v1, %hi(D_80117578)
/* EC2388 80240188 24637578 */  addiu     $v1, $v1, %lo(D_80117578)
/* EC238C 8024018C 0040802D */  daddu     $s0, $v0, $zero
/* EC2390 80240190 3C01C352 */  lui       $at, 0xc352
/* EC2394 80240194 4481B000 */  mtc1      $at, $f22
/* EC2398 80240198 3C01C337 */  lui       $at, 0xc337
/* EC239C 8024019C 4481C000 */  mtc1      $at, $f24
/* EC23A0 802401A0 8C660028 */  lw        $a2, 0x28($v1)
/* EC23A4 802401A4 8C670030 */  lw        $a3, 0x30($v1)
/* EC23A8 802401A8 3C014334 */  lui       $at, 0x4334
/* EC23AC 802401AC 4481D000 */  mtc1      $at, $f26
/* EC23B0 802401B0 4600B306 */  mov.s     $f12, $f22
/* EC23B4 802401B4 0C00ABDC */  jal       fio_validate_header_checksums
/* EC23B8 802401B8 4600C386 */   mov.s    $f14, $f24
/* EC23BC 802401BC 0C00AB85 */  jal       dead_clamp_angle
/* EC23C0 802401C0 461A0300 */   add.s    $f12, $f0, $f26
/* EC23C4 802401C4 27A40010 */  addiu     $a0, $sp, 0x10
/* EC23C8 802401C8 3C064238 */  lui       $a2, 0x4238
/* EC23CC 802401CC 44070000 */  mfc1      $a3, $f0
/* EC23D0 802401D0 27A50014 */  addiu     $a1, $sp, 0x14
/* EC23D4 802401D4 E7B60010 */  swc1      $f22, 0x10($sp)
/* EC23D8 802401D8 0C00ACA3 */  jal       func_8002B28C
/* EC23DC 802401DC E7B80014 */   swc1     $f24, 0x14($sp)
/* EC23E0 802401E0 C60C0038 */  lwc1      $f12, 0x38($s0)
/* EC23E4 802401E4 C60E0040 */  lwc1      $f14, 0x40($s0)
/* EC23E8 802401E8 8FA60010 */  lw        $a2, 0x10($sp)
/* EC23EC 802401EC 0C00AC71 */  jal       func_8002B1C4
/* EC23F0 802401F0 8FA70014 */   lw       $a3, 0x14($sp)
/* EC23F4 802401F4 3C014000 */  lui       $at, 0x4000
/* EC23F8 802401F8 44811800 */  mtc1      $at, $f3
/* EC23FC 802401FC 44801000 */  mtc1      $zero, $f2
/* EC2400 80240200 46000121 */  cvt.d.s   $f4, $f0
/* EC2404 80240204 4624103C */  c.lt.d    $f2, $f4
/* EC2408 80240208 00000000 */  nop
/* EC240C 8024020C 45000058 */  bc1f      .L80240370
/* EC2410 80240210 4600B306 */   mov.s    $f12, $f22
/* EC2414 80240214 8E060038 */  lw        $a2, 0x38($s0)
/* EC2418 80240218 8E070040 */  lw        $a3, 0x40($s0)
/* EC241C 8024021C 0C00ABDC */  jal       fio_validate_header_checksums
/* EC2420 80240220 4600C386 */   mov.s    $f14, $f24
/* EC2424 80240224 0C00AB85 */  jal       dead_clamp_angle
/* EC2428 80240228 46000306 */   mov.s    $f12, $f0
/* EC242C 8024022C 4600B306 */  mov.s     $f12, $f22
/* EC2430 80240230 4600C386 */  mov.s     $f14, $f24
/* EC2434 80240234 8FA60010 */  lw        $a2, 0x10($sp)
/* EC2438 80240238 8FA70014 */  lw        $a3, 0x14($sp)
/* EC243C 8024023C 0C00ABDC */  jal       fio_validate_header_checksums
/* EC2440 80240240 46000506 */   mov.s    $f20, $f0
/* EC2444 80240244 0C00AB85 */  jal       dead_clamp_angle
/* EC2448 80240248 46000306 */   mov.s    $f12, $f0
/* EC244C 8024024C 4600A101 */  sub.s     $f4, $f20, $f0
/* EC2450 80240250 4600218D */  trunc.w.s $f6, $f4
/* EC2454 80240254 44023000 */  mfc1      $v0, $f6
/* EC2458 80240258 00000000 */  nop
/* EC245C 8024025C 04420001 */  bltzl     $v0, .L80240264
/* EC2460 80240260 00021023 */   negu     $v0, $v0
.L80240264:
/* EC2464 80240264 28420015 */  slti      $v0, $v0, 0x15
/* EC2468 80240268 14400032 */  bnez      $v0, .L80240334
/* EC246C 8024026C 00000000 */   nop
/* EC2470 80240270 4604D03E */  c.le.s    $f26, $f4
/* EC2474 80240274 00000000 */  nop
/* EC2478 80240278 45000005 */  bc1f      .L80240290
/* EC247C 8024027C 46002086 */   mov.s    $f2, $f4
/* EC2480 80240280 3C0143B4 */  lui       $at, 0x43b4
/* EC2484 80240284 44810000 */  mtc1      $at, $f0
/* EC2488 80240288 00000000 */  nop
/* EC248C 8024028C 46002081 */  sub.s     $f2, $f4, $f0
.L80240290:
/* EC2490 80240290 3C01C334 */  lui       $at, 0xc334
/* EC2494 80240294 44810000 */  mtc1      $at, $f0
/* EC2498 80240298 00000000 */  nop
/* EC249C 8024029C 4600103E */  c.le.s    $f2, $f0
/* EC24A0 802402A0 00000000 */  nop
/* EC24A4 802402A4 45000005 */  bc1f      .L802402BC
/* EC24A8 802402A8 00000000 */   nop
/* EC24AC 802402AC 3C0143B4 */  lui       $at, 0x43b4
/* EC24B0 802402B0 44810000 */  mtc1      $at, $f0
/* EC24B4 802402B4 00000000 */  nop
/* EC24B8 802402B8 46001080 */  add.s     $f2, $f2, $f0
.L802402BC:
/* EC24BC 802402BC 46022032 */  c.eq.s    $f4, $f2
/* EC24C0 802402C0 00000000 */  nop
/* EC24C4 802402C4 45000018 */  bc1f      .L80240328
/* EC24C8 802402C8 00000000 */   nop
/* EC24CC 802402CC 44800000 */  mtc1      $zero, $f0
/* EC24D0 802402D0 E7B60010 */  swc1      $f22, 0x10($sp)
/* EC24D4 802402D4 4604003E */  c.le.s    $f0, $f4
/* EC24D8 802402D8 00000000 */  nop
/* EC24DC 802402DC 45000005 */  bc1f      .L802402F4
/* EC24E0 802402E0 E7B80014 */   swc1     $f24, 0x14($sp)
/* EC24E4 802402E4 3C0141A0 */  lui       $at, 0x41a0
/* EC24E8 802402E8 44816000 */  mtc1      $at, $f12
/* EC24EC 802402EC 080900C1 */  j         .L80240304
/* EC24F0 802402F0 460CA301 */   sub.s    $f12, $f20, $f12
.L802402F4:
/* EC24F4 802402F4 3C0141A0 */  lui       $at, 0x41a0
/* EC24F8 802402F8 44816000 */  mtc1      $at, $f12
/* EC24FC 802402FC 00000000 */  nop
/* EC2500 80240300 460CA300 */  add.s     $f12, $f20, $f12
.L80240304:
/* EC2504 80240304 0C00AB85 */  jal       dead_clamp_angle
/* EC2508 80240308 00000000 */   nop
/* EC250C 8024030C 27A40010 */  addiu     $a0, $sp, 0x10
/* EC2510 80240310 3C064238 */  lui       $a2, 0x4238
/* EC2514 80240314 44070000 */  mfc1      $a3, $f0
/* EC2518 80240318 0C00ACA3 */  jal       func_8002B28C
/* EC251C 8024031C 27A50014 */   addiu    $a1, $sp, 0x14
/* EC2520 80240320 080900CD */  j         .L80240334
/* EC2524 80240324 00000000 */   nop
.L80240328:
/* EC2528 80240328 3C048024 */  lui       $a0, %hi(D_80244F88_EC7188)
/* EC252C 8024032C 0C00973F */  jal       osSyncPrintf
/* EC2530 80240330 24844F88 */   addiu    $a0, $a0, %lo(D_80244F88_EC7188)
.L80240334:
/* EC2534 80240334 C60C0038 */  lwc1      $f12, 0x38($s0)
/* EC2538 80240338 C60E0040 */  lwc1      $f14, 0x40($s0)
/* EC253C 8024033C 8FA60010 */  lw        $a2, 0x10($sp)
/* EC2540 80240340 8E2200CC */  lw        $v0, 0xcc($s1)
/* EC2544 80240344 8FA70014 */  lw        $a3, 0x14($sp)
/* EC2548 80240348 8C420008 */  lw        $v0, 8($v0)
/* EC254C 8024034C 0C00ABDC */  jal       fio_validate_header_checksums
/* EC2550 80240350 AE020028 */   sw       $v0, 0x28($s0)
/* EC2554 80240354 3C054000 */  lui       $a1, 0x4000
/* EC2558 80240358 44060000 */  mfc1      $a2, $f0
/* EC255C 8024035C 0200202D */  daddu     $a0, $s0, $zero
/* EC2560 80240360 0C00F909 */  jal       func_8003E424
/* EC2564 80240364 AC86000C */   sw       $a2, 0xc($a0)
/* EC2568 80240368 080900F7 */  j         .L802403DC
/* EC256C 8024036C 00000000 */   nop
.L80240370:
/* EC2570 80240370 3C018024 */  lui       $at, %hi(D_80244F90_EC7190)
/* EC2574 80240374 D4204F90 */  ldc1      $f0, %lo(D_80244F90_EC7190)($at)
/* EC2578 80240378 4624003C */  c.lt.d    $f0, $f4
/* EC257C 8024037C 00000000 */  nop
/* EC2580 80240380 4500000F */  bc1f      .L802403C0
/* EC2584 80240384 00000000 */   nop
/* EC2588 80240388 C60C0038 */  lwc1      $f12, 0x38($s0)
/* EC258C 8024038C C60E0040 */  lwc1      $f14, 0x40($s0)
/* EC2590 80240390 8FA60010 */  lw        $a2, 0x10($sp)
/* EC2594 80240394 0C00ABDC */  jal       fio_validate_header_checksums
/* EC2598 80240398 8FA70014 */   lw       $a3, 0x14($sp)
/* EC259C 8024039C C7A20010 */  lwc1      $f2, 0x10($sp)
/* EC25A0 802403A0 C7A40014 */  lwc1      $f4, 0x14($sp)
/* EC25A4 802403A4 E600000C */  swc1      $f0, 0xc($s0)
/* EC25A8 802403A8 E6020038 */  swc1      $f2, 0x38($s0)
/* EC25AC 802403AC E6040040 */  swc1      $f4, 0x40($s0)
/* EC25B0 802403B0 8E2200CC */  lw        $v0, 0xcc($s1)
/* EC25B4 802403B4 8C420004 */  lw        $v0, 4($v0)
/* EC25B8 802403B8 080900F7 */  j         .L802403DC
/* EC25BC 802403BC AE020028 */   sw       $v0, 0x28($s0)
.L802403C0:
/* EC25C0 802403C0 C7A00010 */  lwc1      $f0, 0x10($sp)
/* EC25C4 802403C4 C7A20014 */  lwc1      $f2, 0x14($sp)
/* EC25C8 802403C8 E6000038 */  swc1      $f0, 0x38($s0)
/* EC25CC 802403CC E6020040 */  swc1      $f2, 0x40($s0)
/* EC25D0 802403D0 8E2200CC */  lw        $v0, 0xcc($s1)
/* EC25D4 802403D4 8C420000 */  lw        $v0, ($v0)
/* EC25D8 802403D8 AE020028 */  sw        $v0, 0x28($s0)
.L802403DC:
/* EC25DC 802403DC 8FBF0020 */  lw        $ra, 0x20($sp)
/* EC25E0 802403E0 8FB1001C */  lw        $s1, 0x1c($sp)
/* EC25E4 802403E4 8FB00018 */  lw        $s0, 0x18($sp)
/* EC25E8 802403E8 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* EC25EC 802403EC D7B80038 */  ldc1      $f24, 0x38($sp)
/* EC25F0 802403F0 D7B60030 */  ldc1      $f22, 0x30($sp)
/* EC25F4 802403F4 D7B40028 */  ldc1      $f20, 0x28($sp)
/* EC25F8 802403F8 0000102D */  daddu     $v0, $zero, $zero
/* EC25FC 802403FC 03E00008 */  jr        $ra
/* EC2600 80240400 27BD0048 */   addiu    $sp, $sp, 0x48
/* EC2604 80240404 00000000 */  nop
/* EC2608 80240408 00000000 */  nop
/* EC260C 8024040C 00000000 */  nop
