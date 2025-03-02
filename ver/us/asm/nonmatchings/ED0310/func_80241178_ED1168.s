.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241178_ED1168
/* ED1168 80241178 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* ED116C 8024117C AFB20030 */  sw        $s2, 0x30($sp)
/* ED1170 80241180 0080902D */  daddu     $s2, $a0, $zero
/* ED1174 80241184 AFBF0038 */  sw        $ra, 0x38($sp)
/* ED1178 80241188 AFB30034 */  sw        $s3, 0x34($sp)
/* ED117C 8024118C AFB1002C */  sw        $s1, 0x2c($sp)
/* ED1180 80241190 AFB00028 */  sw        $s0, 0x28($sp)
/* ED1184 80241194 F7B60048 */  sdc1      $f22, 0x48($sp)
/* ED1188 80241198 F7B40040 */  sdc1      $f20, 0x40($sp)
/* ED118C 8024119C 8E510148 */  lw        $s1, 0x148($s2)
/* ED1190 802411A0 86240008 */  lh        $a0, 8($s1)
/* ED1194 802411A4 0C00F92F */  jal       dead_get_npc_unsafe
/* ED1198 802411A8 00A0982D */   daddu    $s3, $a1, $zero
/* ED119C 802411AC 0040802D */  daddu     $s0, $v0, $zero
/* ED11A0 802411B0 0200202D */  daddu     $a0, $s0, $zero
/* ED11A4 802411B4 C6220088 */  lwc1      $f2, 0x88($s1)
/* ED11A8 802411B8 468010A0 */  cvt.s.w   $f2, $f2
/* ED11AC 802411BC 460010A1 */  cvt.d.s   $f2, $f2
/* ED11B0 802411C0 C604001C */  lwc1      $f4, 0x1c($s0)
/* ED11B4 802411C4 C6000014 */  lwc1      $f0, 0x14($s0)
/* ED11B8 802411C8 8E050018 */  lw        $a1, 0x18($s0)
/* ED11BC 802411CC 46002100 */  add.s     $f4, $f4, $f0
/* ED11C0 802411D0 8E06000C */  lw        $a2, 0xc($s0)
/* ED11C4 802411D4 C6200078 */  lwc1      $f0, 0x78($s1)
/* ED11C8 802411D8 46800020 */  cvt.s.w   $f0, $f0
/* ED11CC 802411DC E604001C */  swc1      $f4, 0x1c($s0)
/* ED11D0 802411E0 3C014059 */  lui       $at, 0x4059
/* ED11D4 802411E4 44812800 */  mtc1      $at, $f5
/* ED11D8 802411E8 44802000 */  mtc1      $zero, $f4
/* ED11DC 802411EC 46000021 */  cvt.d.s   $f0, $f0
/* ED11E0 802411F0 46240003 */  div.d     $f0, $f0, $f4
/* ED11E4 802411F4 46200520 */  cvt.s.d   $f20, $f0
/* ED11E8 802411F8 46241083 */  div.d     $f2, $f2, $f4
/* ED11EC 802411FC 0C00F909 */  jal       func_8003E424
/* ED11F0 80241200 462015A0 */   cvt.s.d  $f22, $f2
/* ED11F4 80241204 C604001C */  lwc1      $f4, 0x1c($s0)
/* ED11F8 80241208 44801000 */  mtc1      $zero, $f2
/* ED11FC 8024120C 44801800 */  mtc1      $zero, $f3
/* ED1200 80241210 46002021 */  cvt.d.s   $f0, $f4
/* ED1204 80241214 4620103E */  c.le.d    $f2, $f0
/* ED1208 80241218 00000000 */  nop
/* ED120C 8024121C 45000030 */  bc1f      .L802412E0
/* ED1210 80241220 00000000 */   nop
/* ED1214 80241224 C600003C */  lwc1      $f0, 0x3c($s0)
/* ED1218 80241228 46040000 */  add.s     $f0, $f0, $f4
/* ED121C 8024122C E600003C */  swc1      $f0, 0x3c($s0)
/* ED1220 80241230 8E2200CC */  lw        $v0, 0xcc($s1)
/* ED1224 80241234 8C420024 */  lw        $v0, 0x24($v0)
/* ED1228 80241238 AE020028 */  sw        $v0, 0x28($s0)
/* ED122C 8024123C A2200007 */  sb        $zero, 7($s1)
/* ED1230 80241240 8E020000 */  lw        $v0, ($s0)
/* ED1234 80241244 30420008 */  andi      $v0, $v0, 8
/* ED1238 80241248 14400011 */  bnez      $v0, .L80241290
/* ED123C 8024124C 0000102D */   daddu    $v0, $zero, $zero
/* ED1240 80241250 27A50018 */  addiu     $a1, $sp, 0x18
/* ED1244 80241254 27A6001C */  addiu     $a2, $sp, 0x1c
/* ED1248 80241258 C6000038 */  lwc1      $f0, 0x38($s0)
/* ED124C 8024125C C602003C */  lwc1      $f2, 0x3c($s0)
/* ED1250 80241260 C6040040 */  lwc1      $f4, 0x40($s0)
/* ED1254 80241264 3C01447A */  lui       $at, 0x447a
/* ED1258 80241268 44813000 */  mtc1      $at, $f6
/* ED125C 8024126C 27A20024 */  addiu     $v0, $sp, 0x24
/* ED1260 80241270 E7A00018 */  swc1      $f0, 0x18($sp)
/* ED1264 80241274 E7A2001C */  swc1      $f2, 0x1c($sp)
/* ED1268 80241278 E7A40020 */  swc1      $f4, 0x20($sp)
/* ED126C 8024127C E7A60024 */  swc1      $f6, 0x24($sp)
/* ED1270 80241280 AFA20010 */  sw        $v0, 0x10($sp)
/* ED1274 80241284 8E040080 */  lw        $a0, 0x80($s0)
/* ED1278 80241288 0C03908F */  jal       func_800E423C
/* ED127C 8024128C 27A70020 */   addiu    $a3, $sp, 0x20
.L80241290:
/* ED1280 80241290 1040000B */  beqz      $v0, .L802412C0
/* ED1284 80241294 00000000 */   nop
/* ED1288 80241298 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* ED128C 8024129C 46140080 */  add.s     $f2, $f0, $f20
/* ED1290 802412A0 C600003C */  lwc1      $f0, 0x3c($s0)
/* ED1294 802412A4 4600103E */  c.le.s    $f2, $f0
/* ED1298 802412A8 00000000 */  nop
/* ED129C 802412AC 4500008D */  bc1f      .L802414E4
/* ED12A0 802412B0 00000000 */   nop
/* ED12A4 802412B4 E602003C */  swc1      $f2, 0x3c($s0)
/* ED12A8 802412B8 08090539 */  j         .L802414E4
/* ED12AC 802412BC AE400070 */   sw       $zero, 0x70($s2)
.L802412C0:
/* ED12B0 802412C0 C602003C */  lwc1      $f2, 0x3c($s0)
/* ED12B4 802412C4 C6000064 */  lwc1      $f0, 0x64($s0)
/* ED12B8 802412C8 4602003E */  c.le.s    $f0, $f2
/* ED12BC 802412CC 00000000 */  nop
/* ED12C0 802412D0 45030084 */  bc1tl     .L802414E4
/* ED12C4 802412D4 AE400070 */   sw       $zero, 0x70($s2)
/* ED12C8 802412D8 08090539 */  j         .L802414E4
/* ED12CC 802412DC 00000000 */   nop
.L802412E0:
/* ED12D0 802412E0 4622003C */  c.lt.d    $f0, $f2
/* ED12D4 802412E4 00000000 */  nop
/* ED12D8 802412E8 4500007E */  bc1f      .L802414E4
/* ED12DC 802412EC 00000000 */   nop
/* ED12E0 802412F0 9602008E */  lhu       $v0, 0x8e($s0)
/* ED12E4 802412F4 24420001 */  addiu     $v0, $v0, 1
/* ED12E8 802412F8 A602008E */  sh        $v0, 0x8e($s0)
/* ED12EC 802412FC 00021400 */  sll       $v0, $v0, 0x10
/* ED12F0 80241300 8E630020 */  lw        $v1, 0x20($s3)
/* ED12F4 80241304 00021403 */  sra       $v0, $v0, 0x10
/* ED12F8 80241308 0043102A */  slt       $v0, $v0, $v1
/* ED12FC 8024130C 14400026 */  bnez      $v0, .L802413A8
/* ED1300 80241310 00000000 */   nop
/* ED1304 80241314 C60C0038 */  lwc1      $f12, 0x38($s0)
/* ED1308 80241318 C60E0040 */  lwc1      $f14, 0x40($s0)
/* ED130C 8024131C 3C028010 */  lui       $v0, %hi(dead_gPlayerStatusPtr)
/* ED1310 80241320 8C42FC90 */  lw        $v0, %lo(dead_gPlayerStatusPtr)($v0)
/* ED1314 80241324 A600008E */  sh        $zero, 0x8e($s0)
/* ED1318 80241328 8C460028 */  lw        $a2, 0x28($v0)
/* ED131C 8024132C 0C00ABDC */  jal       fio_validate_header_checksums
/* ED1320 80241330 8C470030 */   lw       $a3, 0x30($v0)
/* ED1324 80241334 46000506 */  mov.s     $f20, $f0
/* ED1328 80241338 C60C000C */  lwc1      $f12, 0xc($s0)
/* ED132C 8024133C 0C00ABC6 */  jal       func_8002AF18
/* ED1330 80241340 4600A386 */   mov.s    $f14, $f20
/* ED1334 80241344 46000086 */  mov.s     $f2, $f0
/* ED1338 80241348 8E62001C */  lw        $v0, 0x1c($s3)
/* ED133C 8024134C 46001005 */  abs.s     $f0, $f2
/* ED1340 80241350 44822000 */  mtc1      $v0, $f4
/* ED1344 80241354 00000000 */  nop
/* ED1348 80241358 46802120 */  cvt.s.w   $f4, $f4
/* ED134C 8024135C 4600203C */  c.lt.s    $f4, $f0
/* ED1350 80241360 00000000 */  nop
/* ED1354 80241364 4500000D */  bc1f      .L8024139C
/* ED1358 80241368 00000000 */   nop
/* ED135C 8024136C 44800000 */  mtc1      $zero, $f0
/* ED1360 80241370 C614000C */  lwc1      $f20, 0xc($s0)
/* ED1364 80241374 4600103C */  c.lt.s    $f2, $f0
/* ED1368 80241378 00000000 */  nop
/* ED136C 8024137C 45000006 */  bc1f      .L80241398
/* ED1370 80241380 00021023 */   negu     $v0, $v0
/* ED1374 80241384 44820000 */  mtc1      $v0, $f0
/* ED1378 80241388 00000000 */  nop
/* ED137C 8024138C 46800020 */  cvt.s.w   $f0, $f0
/* ED1380 80241390 080904E7 */  j         .L8024139C
/* ED1384 80241394 4600A500 */   add.s    $f20, $f20, $f0
.L80241398:
/* ED1388 80241398 4604A500 */  add.s     $f20, $f20, $f4
.L8024139C:
/* ED138C 8024139C 0C00AB85 */  jal       dead_clamp_angle
/* ED1390 802413A0 4600A306 */   mov.s    $f12, $f20
/* ED1394 802413A4 E600000C */  swc1      $f0, 0xc($s0)
.L802413A8:
/* ED1398 802413A8 8E020000 */  lw        $v0, ($s0)
/* ED139C 802413AC 30420008 */  andi      $v0, $v0, 8
/* ED13A0 802413B0 1040000A */  beqz      $v0, .L802413DC
/* ED13A4 802413B4 27A50018 */   addiu    $a1, $sp, 0x18
/* ED13A8 802413B8 C602003C */  lwc1      $f2, 0x3c($s0)
/* ED13AC 802413BC C600001C */  lwc1      $f0, 0x1c($s0)
/* ED13B0 802413C0 46001080 */  add.s     $f2, $f2, $f0
/* ED13B4 802413C4 4616103C */  c.lt.s    $f2, $f22
/* ED13B8 802413C8 00000000 */  nop
/* ED13BC 802413CC 45020045 */  bc1fl     .L802414E4
/* ED13C0 802413D0 E602003C */   swc1     $f2, 0x3c($s0)
/* ED13C4 802413D4 08090538 */  j         .L802414E0
/* ED13C8 802413D8 E616003C */   swc1     $f22, 0x3c($s0)
.L802413DC:
/* ED13CC 802413DC C6000038 */  lwc1      $f0, 0x38($s0)
/* ED13D0 802413E0 27A6001C */  addiu     $a2, $sp, 0x1c
/* ED13D4 802413E4 E7A00018 */  swc1      $f0, 0x18($sp)
/* ED13D8 802413E8 860200A8 */  lh        $v0, 0xa8($s0)
/* ED13DC 802413EC C600001C */  lwc1      $f0, 0x1c($s0)
/* ED13E0 802413F0 C604003C */  lwc1      $f4, 0x3c($s0)
/* ED13E4 802413F4 44821000 */  mtc1      $v0, $f2
/* ED13E8 802413F8 00000000 */  nop
/* ED13EC 802413FC 468010A0 */  cvt.s.w   $f2, $f2
/* ED13F0 80241400 46000005 */  abs.s     $f0, $f0
/* ED13F4 80241404 46020000 */  add.s     $f0, $f0, $f2
/* ED13F8 80241408 C6060040 */  lwc1      $f6, 0x40($s0)
/* ED13FC 8024140C 27A20024 */  addiu     $v0, $sp, 0x24
/* ED1400 80241410 46022100 */  add.s     $f4, $f4, $f2
/* ED1404 80241414 3C014024 */  lui       $at, 0x4024
/* ED1408 80241418 44811800 */  mtc1      $at, $f3
/* ED140C 8024141C 44801000 */  mtc1      $zero, $f2
/* ED1410 80241420 46000021 */  cvt.d.s   $f0, $f0
/* ED1414 80241424 46220000 */  add.d     $f0, $f0, $f2
/* ED1418 80241428 E7A60020 */  swc1      $f6, 0x20($sp)
/* ED141C 8024142C E7A4001C */  swc1      $f4, 0x1c($sp)
/* ED1420 80241430 46200020 */  cvt.s.d   $f0, $f0
/* ED1424 80241434 E7A00024 */  swc1      $f0, 0x24($sp)
/* ED1428 80241438 AFA20010 */  sw        $v0, 0x10($sp)
/* ED142C 8024143C 8E040080 */  lw        $a0, 0x80($s0)
/* ED1430 80241440 0C03908F */  jal       func_800E423C
/* ED1434 80241444 27A70020 */   addiu    $a3, $sp, 0x20
/* ED1438 80241448 10400015 */  beqz      $v0, .L802414A0
/* ED143C 8024144C 00000000 */   nop
/* ED1440 80241450 860200A8 */  lh        $v0, 0xa8($s0)
/* ED1444 80241454 C604001C */  lwc1      $f4, 0x1c($s0)
/* ED1448 80241458 44820000 */  mtc1      $v0, $f0
/* ED144C 8024145C 00000000 */  nop
/* ED1450 80241460 46800020 */  cvt.s.w   $f0, $f0
/* ED1454 80241464 46002085 */  abs.s     $f2, $f4
/* ED1458 80241468 46020000 */  add.s     $f0, $f0, $f2
/* ED145C 8024146C C7A20024 */  lwc1      $f2, 0x24($sp)
/* ED1460 80241470 4600103E */  c.le.s    $f2, $f0
/* ED1464 80241474 00000000 */  nop
/* ED1468 80241478 45000005 */  bc1f      .L80241490
/* ED146C 8024147C 00000000 */   nop
/* ED1470 80241480 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* ED1474 80241484 AE00001C */  sw        $zero, 0x1c($s0)
/* ED1478 80241488 08090539 */  j         .L802414E4
/* ED147C 8024148C E600003C */   swc1     $f0, 0x3c($s0)
.L80241490:
/* ED1480 80241490 C600003C */  lwc1      $f0, 0x3c($s0)
/* ED1484 80241494 46040000 */  add.s     $f0, $f0, $f4
/* ED1488 80241498 08090539 */  j         .L802414E4
/* ED148C 8024149C E600003C */   swc1     $f0, 0x3c($s0)
.L802414A0:
/* ED1490 802414A0 C606003C */  lwc1      $f6, 0x3c($s0)
/* ED1494 802414A4 860200A8 */  lh        $v0, 0xa8($s0)
/* ED1498 802414A8 46163081 */  sub.s     $f2, $f6, $f22
/* ED149C 802414AC 44820000 */  mtc1      $v0, $f0
/* ED14A0 802414B0 00000000 */  nop
/* ED14A4 802414B4 46800020 */  cvt.s.w   $f0, $f0
/* ED14A8 802414B8 46001080 */  add.s     $f2, $f2, $f0
/* ED14AC 802414BC C604001C */  lwc1      $f4, 0x1c($s0)
/* ED14B0 802414C0 46002005 */  abs.s     $f0, $f4
/* ED14B4 802414C4 4602003C */  c.lt.s    $f0, $f2
/* ED14B8 802414C8 00000000 */  nop
/* ED14BC 802414CC 45020005 */  bc1fl     .L802414E4
/* ED14C0 802414D0 AE00001C */   sw       $zero, 0x1c($s0)
/* ED14C4 802414D4 46043000 */  add.s     $f0, $f6, $f4
/* ED14C8 802414D8 08090539 */  j         .L802414E4
/* ED14CC 802414DC E600003C */   swc1     $f0, 0x3c($s0)
.L802414E0:
/* ED14D0 802414E0 AE00001C */  sw        $zero, 0x1c($s0)
.L802414E4:
/* ED14D4 802414E4 8FBF0038 */  lw        $ra, 0x38($sp)
/* ED14D8 802414E8 8FB30034 */  lw        $s3, 0x34($sp)
/* ED14DC 802414EC 8FB20030 */  lw        $s2, 0x30($sp)
/* ED14E0 802414F0 8FB1002C */  lw        $s1, 0x2c($sp)
/* ED14E4 802414F4 8FB00028 */  lw        $s0, 0x28($sp)
/* ED14E8 802414F8 D7B60048 */  ldc1      $f22, 0x48($sp)
/* ED14EC 802414FC D7B40040 */  ldc1      $f20, 0x40($sp)
/* ED14F0 80241500 03E00008 */  jr        $ra
/* ED14F4 80241504 27BD0050 */   addiu    $sp, $sp, 0x50
