.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel PlayerFallToGoal
/* 1A2174 80273894 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 1A2178 80273898 AFB00018 */  sw        $s0, 0x18($sp)
/* 1A217C 8027389C 3C10800E */  lui       $s0, %hi(gBattleStatus+0xD8)
/* 1A2180 802738A0 8E10C148 */  lw        $s0, %lo(gBattleStatus+0xD8)($s0)
/* 1A2184 802738A4 AFB20020 */  sw        $s2, 0x20($sp)
/* 1A2188 802738A8 0080902D */  daddu     $s2, $a0, $zero
/* 1A218C 802738AC AFBF0024 */  sw        $ra, 0x24($sp)
/* 1A2190 802738B0 AFB1001C */  sw        $s1, 0x1c($sp)
/* 1A2194 802738B4 F7BE0050 */  sdc1      $f30, 0x50($sp)
/* 1A2198 802738B8 F7BC0048 */  sdc1      $f28, 0x48($sp)
/* 1A219C 802738BC F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 1A21A0 802738C0 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 1A21A4 802738C4 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 1A21A8 802738C8 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 1A21AC 802738CC 8E43000C */  lw        $v1, 0xc($s2)
/* 1A21B0 802738D0 10A00002 */  beqz      $a1, .L802738DC
/* 1A21B4 802738D4 2611000C */   addiu    $s1, $s0, 0xc
/* 1A21B8 802738D8 AE400070 */  sw        $zero, 0x70($s2)
.L802738DC:
/* 1A21BC 802738DC 8E420070 */  lw        $v0, 0x70($s2)
/* 1A21C0 802738E0 14400046 */  bnez      $v0, .L802739FC
/* 1A21C4 802738E4 00000000 */   nop
/* 1A21C8 802738E8 8C650000 */  lw        $a1, ($v1)
/* 1A21CC 802738EC 0C0B1EAF */  jal       evt_get_variable
/* 1A21D0 802738F0 0240202D */   daddu    $a0, $s2, $zero
/* 1A21D4 802738F4 C6000148 */  lwc1      $f0, 0x148($s0)
/* 1A21D8 802738F8 C61A0018 */  lwc1      $f26, 0x18($s0)
/* 1A21DC 802738FC C61C0020 */  lwc1      $f28, 0x20($s0)
/* 1A21E0 80273900 C614014C */  lwc1      $f20, 0x14c($s0)
/* 1A21E4 80273904 C618001C */  lwc1      $f24, 0x1c($s0)
/* 1A21E8 80273908 A6020070 */  sh        $v0, 0x70($s0)
/* 1A21EC 8027390C E6000010 */  swc1      $f0, 0x10($s0)
/* 1A21F0 80273910 46000786 */  mov.s     $f30, $f0
/* 1A21F4 80273914 4406D000 */  mfc1      $a2, $f26
/* 1A21F8 80273918 4407E000 */  mfc1      $a3, $f28
/* 1A21FC 8027391C C6000144 */  lwc1      $f0, 0x144($s0)
/* 1A2200 80273920 4600A386 */  mov.s     $f14, $f20
/* 1A2204 80273924 E6140014 */  swc1      $f20, 0x14($s0)
/* 1A2208 80273928 E600000C */  swc1      $f0, 0xc($s0)
/* 1A220C 8027392C 46000586 */  mov.s     $f22, $f0
/* 1A2210 80273930 0C00A720 */  jal       atan2
/* 1A2214 80273934 4600B306 */   mov.s    $f12, $f22
/* 1A2218 80273938 4600B306 */  mov.s     $f12, $f22
/* 1A221C 8027393C 4600A386 */  mov.s     $f14, $f20
/* 1A2220 80273940 4406D000 */  mfc1      $a2, $f26
/* 1A2224 80273944 4407E000 */  mfc1      $a3, $f28
/* 1A2228 80273948 461EC781 */  sub.s     $f30, $f24, $f30
/* 1A222C 8027394C 0C00A7B5 */  jal       dist2D
/* 1A2230 80273950 E6000054 */   swc1     $f0, 0x54($s0)
/* 1A2234 80273954 86020070 */  lh        $v0, 0x70($s0)
/* 1A2238 80273958 46000086 */  mov.s     $f2, $f0
/* 1A223C 8027395C 14400007 */  bnez      $v0, .L8027397C
/* 1A2240 80273960 E6020058 */   swc1     $f2, 0x58($s0)
/* 1A2244 80273964 C600004C */  lwc1      $f0, 0x4c($s0)
/* 1A2248 80273968 46001003 */  div.s     $f0, $f2, $f0
/* 1A224C 8027396C 4600018D */  trunc.w.s $f6, $f0
/* 1A2250 80273970 44023000 */  mfc1      $v0, $f6
/* 1A2254 80273974 0809CE64 */  j         .L80273990
/* 1A2258 80273978 A6020070 */   sh       $v0, 0x70($s0)
.L8027397C:
/* 1A225C 8027397C 44820000 */  mtc1      $v0, $f0
/* 1A2260 80273980 00000000 */  nop
/* 1A2264 80273984 46800020 */  cvt.s.w   $f0, $f0
/* 1A2268 80273988 46001003 */  div.s     $f0, $f2, $f0
/* 1A226C 8027398C E600004C */  swc1      $f0, 0x4c($s0)
.L80273990:
/* 1A2270 80273990 86230064 */  lh        $v1, 0x64($s1)
/* 1A2274 80273994 3C013FE0 */  lui       $at, 0x3fe0
/* 1A2278 80273998 44810800 */  mtc1      $at, $f1
/* 1A227C 8027399C 44800000 */  mtc1      $zero, $f0
/* 1A2280 802739A0 00031023 */  negu      $v0, $v1
/* 1A2284 802739A4 44821000 */  mtc1      $v0, $f2
/* 1A2288 802739A8 00000000 */  nop
/* 1A228C 802739AC 468010A1 */  cvt.d.w   $f2, $f2
/* 1A2290 802739B0 46201082 */  mul.d     $f2, $f2, $f0
/* 1A2294 802739B4 00000000 */  nop
/* 1A2298 802739B8 0000202D */  daddu     $a0, $zero, $zero
/* 1A229C 802739BC AE200044 */  sw        $zero, 0x44($s1)
/* 1A22A0 802739C0 C6240044 */  lwc1      $f4, 0x44($s1)
/* 1A22A4 802739C4 44830000 */  mtc1      $v1, $f0
/* 1A22A8 802739C8 00000000 */  nop
/* 1A22AC 802739CC 46800020 */  cvt.s.w   $f0, $f0
/* 1A22B0 802739D0 4600F003 */  div.s     $f0, $f30, $f0
/* 1A22B4 802739D4 46040001 */  sub.s     $f0, $f0, $f4
/* 1A22B8 802739D8 0080282D */  daddu     $a1, $a0, $zero
/* 1A22BC 802739DC 8E260058 */  lw        $a2, 0x58($s1)
/* 1A22C0 802739E0 46000021 */  cvt.d.s   $f0, $f0
/* 1A22C4 802739E4 46220003 */  div.d     $f0, $f0, $f2
/* 1A22C8 802739E8 46200020 */  cvt.s.d   $f0, $f0
/* 1A22CC 802739EC 0C098F3F */  jal       set_animation
/* 1A22D0 802739F0 E620003C */   swc1     $f0, 0x3c($s1)
/* 1A22D4 802739F4 24020001 */  addiu     $v0, $zero, 1
/* 1A22D8 802739F8 AE420070 */  sw        $v0, 0x70($s2)
.L802739FC:
/* 1A22DC 802739FC C6220044 */  lwc1      $f2, 0x44($s1)
/* 1A22E0 80273A00 44800000 */  mtc1      $zero, $f0
/* 1A22E4 80273A04 00000000 */  nop
/* 1A22E8 80273A08 4600103C */  c.lt.s    $f2, $f0
/* 1A22EC 80273A0C 00000000 */  nop
/* 1A22F0 80273A10 45000004 */  bc1f      .L80273A24
/* 1A22F4 80273A14 0000202D */   daddu    $a0, $zero, $zero
/* 1A22F8 80273A18 8E26005C */  lw        $a2, 0x5c($s1)
/* 1A22FC 80273A1C 0C098F3F */  jal       set_animation
/* 1A2300 80273A20 0080282D */   daddu    $a1, $a0, $zero
.L80273A24:
/* 1A2304 80273A24 C6240004 */  lwc1      $f4, 4($s1)
/* 1A2308 80273A28 C6200044 */  lwc1      $f0, 0x44($s1)
/* 1A230C 80273A2C 8E250040 */  lw        $a1, 0x40($s1)
/* 1A2310 80273A30 46002100 */  add.s     $f4, $f4, $f0
/* 1A2314 80273A34 C622003C */  lwc1      $f2, 0x3c($s1)
/* 1A2318 80273A38 8E260048 */  lw        $a2, 0x48($s1)
/* 1A231C 80273A3C 46020001 */  sub.s     $f0, $f0, $f2
/* 1A2320 80273A40 0220202D */  daddu     $a0, $s1, $zero
/* 1A2324 80273A44 E6240004 */  swc1      $f4, 4($s1)
/* 1A2328 80273A48 0C09904A */  jal       add_xz_vec3f
/* 1A232C 80273A4C E6200044 */   swc1     $f0, 0x44($s1)
/* 1A2330 80273A50 C6200000 */  lwc1      $f0, ($s1)
/* 1A2334 80273A54 E6000144 */  swc1      $f0, 0x144($s0)
/* 1A2338 80273A58 C6200004 */  lwc1      $f0, 4($s1)
/* 1A233C 80273A5C E6000148 */  swc1      $f0, 0x148($s0)
/* 1A2340 80273A60 C6200008 */  lwc1      $f0, 8($s1)
/* 1A2344 80273A64 E600014C */  swc1      $f0, 0x14c($s0)
/* 1A2348 80273A68 96220064 */  lhu       $v0, 0x64($s1)
/* 1A234C 80273A6C 2442FFFF */  addiu     $v0, $v0, -1
/* 1A2350 80273A70 A6220064 */  sh        $v0, 0x64($s1)
/* 1A2354 80273A74 00021400 */  sll       $v0, $v0, 0x10
/* 1A2358 80273A78 04410016 */  bgez      $v0, .L80273AD4
/* 1A235C 80273A7C 0000102D */   daddu    $v0, $zero, $zero
/* 1A2360 80273A80 C620000C */  lwc1      $f0, 0xc($s1)
/* 1A2364 80273A84 C602018C */  lwc1      $f2, 0x18c($s0)
/* 1A2368 80273A88 E6000144 */  swc1      $f0, 0x144($s0)
/* 1A236C 80273A8C C6200010 */  lwc1      $f0, 0x10($s1)
/* 1A2370 80273A90 E6000148 */  swc1      $f0, 0x148($s0)
/* 1A2374 80273A94 C6200014 */  lwc1      $f0, 0x14($s1)
/* 1A2378 80273A98 E600014C */  swc1      $f0, 0x14c($s0)
/* 1A237C 80273A9C E7A20010 */  swc1      $f2, 0x10($sp)
/* 1A2380 80273AA0 8E050144 */  lw        $a1, 0x144($s0)
/* 1A2384 80273AA4 8E060148 */  lw        $a2, 0x148($s0)
/* 1A2388 80273AA8 8E07014C */  lw        $a3, 0x14c($s0)
/* 1A238C 80273AAC 0C0990BC */  jal       play_movement_dust_effects
/* 1A2390 80273AB0 24040002 */   addiu    $a0, $zero, 2
/* 1A2394 80273AB4 C600014C */  lwc1      $f0, 0x14c($s0)
/* 1A2398 80273AB8 24040148 */  addiu     $a0, $zero, 0x148
/* 1A239C 80273ABC E7A00010 */  swc1      $f0, 0x10($sp)
/* 1A23A0 80273AC0 8E060144 */  lw        $a2, 0x144($s0)
/* 1A23A4 80273AC4 8E070148 */  lw        $a3, 0x148($s0)
/* 1A23A8 80273AC8 0C052757 */  jal       sfx_play_sound_at_position
/* 1A23AC 80273ACC 0000282D */   daddu    $a1, $zero, $zero
/* 1A23B0 80273AD0 24020001 */  addiu     $v0, $zero, 1
.L80273AD4:
/* 1A23B4 80273AD4 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1A23B8 80273AD8 8FB20020 */  lw        $s2, 0x20($sp)
/* 1A23BC 80273ADC 8FB1001C */  lw        $s1, 0x1c($sp)
/* 1A23C0 80273AE0 8FB00018 */  lw        $s0, 0x18($sp)
/* 1A23C4 80273AE4 D7BE0050 */  ldc1      $f30, 0x50($sp)
/* 1A23C8 80273AE8 D7BC0048 */  ldc1      $f28, 0x48($sp)
/* 1A23CC 80273AEC D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 1A23D0 80273AF0 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 1A23D4 80273AF4 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 1A23D8 80273AF8 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 1A23DC 80273AFC 03E00008 */  jr        $ra
/* 1A23E0 80273B00 27BD0058 */   addiu    $sp, $sp, 0x58
