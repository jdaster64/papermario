.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_59_main
/* 377070 E0076000 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 377074 E0076004 F7B60040 */  sdc1      $f22, 0x40($sp)
/* 377078 E0076008 4485B000 */  mtc1      $a1, $f22
/* 37707C E007600C F7B80048 */  sdc1      $f24, 0x48($sp)
/* 377080 E0076010 4486C000 */  mtc1      $a2, $f24
/* 377084 E0076014 AFB00028 */  sw        $s0, 0x28($sp)
/* 377088 E0076018 0080802D */  daddu     $s0, $a0, $zero
/* 37708C E007601C F7BA0050 */  sdc1      $f26, 0x50($sp)
/* 377090 E0076020 4487D000 */  mtc1      $a3, $f26
/* 377094 E0076024 27A40010 */  addiu     $a0, $sp, 0x10
/* 377098 E0076028 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 37709C E007602C C7B40068 */  lwc1      $f20, 0x68($sp)
/* 3770A0 E0076030 3C02E007 */  lui       $v0, %hi(func_E0076370)
/* 3770A4 E0076034 24426370 */  addiu     $v0, $v0, %lo(func_E0076370)
/* 3770A8 E0076038 AFA20018 */  sw        $v0, 0x18($sp)
/* 3770AC E007603C 3C02E007 */  lui       $v0, %hi(func_E0076378)
/* 3770B0 E0076040 24426378 */  addiu     $v0, $v0, %lo(func_E0076378)
/* 3770B4 E0076044 AFA2001C */  sw        $v0, 0x1c($sp)
/* 3770B8 E0076048 3C02E007 */  lui       $v0, %hi(func_E0076808)
/* 3770BC E007604C 24426808 */  addiu     $v0, $v0, %lo(func_E0076808)
/* 3770C0 E0076050 AFA20020 */  sw        $v0, 0x20($sp)
/* 3770C4 E0076054 2402003B */  addiu     $v0, $zero, 0x3b
/* 3770C8 E0076058 AFBF0030 */  sw        $ra, 0x30($sp)
/* 3770CC E007605C AFB1002C */  sw        $s1, 0x2c($sp)
/* 3770D0 E0076060 AFA00010 */  sw        $zero, 0x10($sp)
/* 3770D4 E0076064 AFA00024 */  sw        $zero, 0x24($sp)
/* 3770D8 E0076068 0C080124 */  jal       func_E0200490
/* 3770DC E007606C AFA20014 */   sw       $v0, 0x14($sp)
/* 3770E0 E0076070 24040070 */  addiu     $a0, $zero, 0x70
/* 3770E4 E0076074 24030001 */  addiu     $v1, $zero, 1
/* 3770E8 E0076078 0040882D */  daddu     $s1, $v0, $zero
/* 3770EC E007607C 0C08012C */  jal       func_E02004B0
/* 3770F0 E0076080 AE230008 */   sw       $v1, 8($s1)
/* 3770F4 E0076084 0040182D */  daddu     $v1, $v0, $zero
/* 3770F8 E0076088 14600003 */  bnez      $v1, .LE0076098
/* 3770FC E007608C AE22000C */   sw       $v0, 0xc($s1)
.LE0076090:
/* 377100 E0076090 0801D824 */  j         .LE0076090
/* 377104 E0076094 00000000 */   nop
.LE0076098:
/* 377108 E0076098 AC600064 */  sw        $zero, 0x64($v1)
/* 37710C E007609C C46A0064 */  lwc1      $f10, 0x64($v1)
/* 377110 E00760A0 24020064 */  addiu     $v0, $zero, 0x64
/* 377114 E00760A4 AC62002C */  sw        $v0, 0x2c($v1)
/* 377118 E00760A8 24020001 */  addiu     $v0, $zero, 1
/* 37711C E00760AC AC700000 */  sw        $s0, ($v1)
/* 377120 E00760B0 AC600030 */  sw        $zero, 0x30($v1)
/* 377124 E00760B4 AC600028 */  sw        $zero, 0x28($v1)
/* 377128 E00760B8 E4760004 */  swc1      $f22, 4($v1)
/* 37712C E00760BC E4780008 */  swc1      $f24, 8($v1)
/* 377130 E00760C0 E47A000C */  swc1      $f26, 0xc($v1)
/* 377134 E00760C4 E46A0040 */  swc1      $f10, 0x40($v1)
/* 377138 E00760C8 E46A0034 */  swc1      $f10, 0x34($v1)
/* 37713C E00760CC E46A0058 */  swc1      $f10, 0x58($v1)
/* 377140 E00760D0 12020033 */  beq       $s0, $v0, .LE00761A0
/* 377144 E00760D4 E46A004C */   swc1     $f10, 0x4c($v1)
/* 377148 E00760D8 2A020002 */  slti      $v0, $s0, 2
/* 37714C E00760DC 10400005 */  beqz      $v0, .LE00760F4
/* 377150 E00760E0 24020002 */   addiu    $v0, $zero, 2
/* 377154 E00760E4 12000007 */  beqz      $s0, .LE0076104
/* 377158 E00760E8 2402004B */   addiu    $v0, $zero, 0x4b
/* 37715C E00760EC 0801D8A4 */  j         .LE0076290
/* 377160 E00760F0 00000000 */   nop
.LE00760F4:
/* 377164 E00760F4 12020045 */  beq       $s0, $v0, .LE007620C
/* 377168 E00760F8 24020019 */   addiu    $v0, $zero, 0x19
/* 37716C E00760FC 0801D8A4 */  j         .LE0076290
/* 377170 E0076100 00000000 */   nop
.LE0076104:
/* 377174 E0076104 A0620068 */  sb        $v0, 0x68($v1)
/* 377178 E0076108 A0620069 */  sb        $v0, 0x69($v1)
/* 37717C E007610C A062006A */  sb        $v0, 0x6a($v1)
/* 377180 E0076110 240200FF */  addiu     $v0, $zero, 0xff
/* 377184 E0076114 4600A021 */  cvt.d.s   $f0, $f20
/* 377188 E0076118 3C01E007 */  lui       $at, %hi(D_E0076EE0)
/* 37718C E007611C D4226EE0 */  ldc1      $f2, %lo(D_E0076EE0)($at)
/* 377190 E0076120 3C01BF66 */  lui       $at, 0xbf66
/* 377194 E0076124 34216666 */  ori       $at, $at, 0x6666
/* 377198 E0076128 44813000 */  mtc1      $at, $f6
/* 37719C E007612C 3C013D23 */  lui       $at, 0x3d23
/* 3771A0 E0076130 3421D70A */  ori       $at, $at, 0xd70a
/* 3771A4 E0076134 44812000 */  mtc1      $at, $f4
/* 3771A8 E0076138 3C013F66 */  lui       $at, 0x3f66
/* 3771AC E007613C 34216666 */  ori       $at, $at, 0x6666
/* 3771B0 E0076140 44814000 */  mtc1      $at, $f8
/* 3771B4 E0076144 46220082 */  mul.d     $f2, $f0, $f2
/* 3771B8 E0076148 00000000 */  nop
/* 3771BC E007614C A062006B */  sb        $v0, 0x6b($v1)
/* 3771C0 E0076150 240200F7 */  addiu     $v0, $zero, 0xf7
/* 3771C4 E0076154 A062006C */  sb        $v0, 0x6c($v1)
/* 3771C8 E0076158 2402009B */  addiu     $v0, $zero, 0x9b
/* 3771CC E007615C A062006D */  sb        $v0, 0x6d($v1)
/* 3771D0 E0076160 A060006E */  sb        $zero, 0x6e($v1)
/* 3771D4 E0076164 E4740024 */  swc1      $f20, 0x24($v1)
/* 3771D8 E0076168 46200000 */  add.d     $f0, $f0, $f0
/* 3771DC E007616C E4660038 */  swc1      $f6, 0x38($v1)
/* 3771E0 E0076170 E4640044 */  swc1      $f4, 0x44($v1)
/* 3771E4 E0076174 E464003C */  swc1      $f4, 0x3c($v1)
/* 3771E8 E0076178 E4680048 */  swc1      $f8, 0x48($v1)
/* 3771EC E007617C E4660050 */  swc1      $f6, 0x50($v1)
/* 3771F0 E0076180 E464005C */  swc1      $f4, 0x5c($v1)
/* 3771F4 E0076184 E4640054 */  swc1      $f4, 0x54($v1)
/* 3771F8 E0076188 E4680060 */  swc1      $f8, 0x60($v1)
/* 3771FC E007618C 46200020 */  cvt.s.d   $f0, $f0
/* 377200 E0076190 E460001C */  swc1      $f0, 0x1c($v1)
/* 377204 E0076194 462010A0 */  cvt.s.d   $f2, $f2
/* 377208 E0076198 0801D8CB */  j         .LE007632C
/* 37720C E007619C E4620020 */   swc1     $f2, 0x20($v1)
.LE00761A0:
/* 377210 E00761A0 3C013D23 */  lui       $at, 0x3d23
/* 377214 E00761A4 3421D70A */  ori       $at, $at, 0xd70a
/* 377218 E00761A8 44810000 */  mtc1      $at, $f0
/* 37721C E00761AC 3C013F66 */  lui       $at, 0x3f66
/* 377220 E00761B0 34216666 */  ori       $at, $at, 0x6666
/* 377224 E00761B4 44811000 */  mtc1      $at, $f2
/* 377228 E00761B8 2402004B */  addiu     $v0, $zero, 0x4b
/* 37722C E00761BC A0620068 */  sb        $v0, 0x68($v1)
/* 377230 E00761C0 A0620069 */  sb        $v0, 0x69($v1)
/* 377234 E00761C4 A062006A */  sb        $v0, 0x6a($v1)
/* 377238 E00761C8 240200FF */  addiu     $v0, $zero, 0xff
/* 37723C E00761CC A062006B */  sb        $v0, 0x6b($v1)
/* 377240 E00761D0 A060006C */  sb        $zero, 0x6c($v1)
/* 377244 E00761D4 A060006D */  sb        $zero, 0x6d($v1)
/* 377248 E00761D8 A060006E */  sb        $zero, 0x6e($v1)
/* 37724C E00761DC E474001C */  swc1      $f20, 0x1c($v1)
/* 377250 E00761E0 E4740020 */  swc1      $f20, 0x20($v1)
/* 377254 E00761E4 E4740024 */  swc1      $f20, 0x24($v1)
/* 377258 E00761E8 E46A0038 */  swc1      $f10, 0x38($v1)
/* 37725C E00761EC E46A0050 */  swc1      $f10, 0x50($v1)
/* 377260 E00761F0 E4600044 */  swc1      $f0, 0x44($v1)
/* 377264 E00761F4 E460003C */  swc1      $f0, 0x3c($v1)
/* 377268 E00761F8 E4620048 */  swc1      $f2, 0x48($v1)
/* 37726C E00761FC E460005C */  swc1      $f0, 0x5c($v1)
/* 377270 E0076200 E4600054 */  swc1      $f0, 0x54($v1)
/* 377274 E0076204 0801D8CB */  j         .LE007632C
/* 377278 E0076208 E4620060 */   swc1     $f2, 0x60($v1)
.LE007620C:
/* 37727C E007620C 3C013D23 */  lui       $at, 0x3d23
/* 377280 E0076210 3421D70A */  ori       $at, $at, 0xd70a
/* 377284 E0076214 44810000 */  mtc1      $at, $f0
/* 377288 E0076218 3C013E4C */  lui       $at, 0x3e4c
/* 37728C E007621C 3421CCCD */  ori       $at, $at, 0xcccd
/* 377290 E0076220 44811000 */  mtc1      $at, $f2
/* 377294 E0076224 3C013FA6 */  lui       $at, 0x3fa6
/* 377298 E0076228 34216666 */  ori       $at, $at, 0x6666
/* 37729C E007622C 44812000 */  mtc1      $at, $f4
/* 3772A0 E0076230 3C013E23 */  lui       $at, 0x3e23
/* 3772A4 E0076234 3421D70A */  ori       $at, $at, 0xd70a
/* 3772A8 E0076238 44813000 */  mtc1      $at, $f6
/* 3772AC E007623C 3C013F85 */  lui       $at, 0x3f85
/* 3772B0 E0076240 34211EB8 */  ori       $at, $at, 0x1eb8
/* 3772B4 E0076244 44814000 */  mtc1      $at, $f8
/* 3772B8 E0076248 A0620068 */  sb        $v0, 0x68($v1)
/* 3772BC E007624C 24020079 */  addiu     $v0, $zero, 0x79
/* 3772C0 E0076250 A0620069 */  sb        $v0, 0x69($v1)
/* 3772C4 E0076254 2402008E */  addiu     $v0, $zero, 0x8e
/* 3772C8 E0076258 A062006A */  sb        $v0, 0x6a($v1)
/* 3772CC E007625C 24020022 */  addiu     $v0, $zero, 0x22
/* 3772D0 E0076260 A062006B */  sb        $v0, 0x6b($v1)
/* 3772D4 E0076264 240200FF */  addiu     $v0, $zero, 0xff
/* 3772D8 E0076268 A062006D */  sb        $v0, 0x6d($v1)
/* 3772DC E007626C 24020051 */  addiu     $v0, $zero, 0x51
/* 3772E0 E0076270 A060006C */  sb        $zero, 0x6c($v1)
/* 3772E4 E0076274 A062006E */  sb        $v0, 0x6e($v1)
/* 3772E8 E0076278 E474001C */  swc1      $f20, 0x1c($v1)
/* 3772EC E007627C E4740020 */  swc1      $f20, 0x20($v1)
/* 3772F0 E0076280 E4740024 */  swc1      $f20, 0x24($v1)
/* 3772F4 E0076284 E46A0038 */  swc1      $f10, 0x38($v1)
/* 3772F8 E0076288 0801D8C5 */  j         .LE0076314
/* 3772FC E007628C E46A0050 */   swc1     $f10, 0x50($v1)
.LE0076290:
/* 377300 E0076290 3C013D23 */  lui       $at, 0x3d23
/* 377304 E0076294 3421D70A */  ori       $at, $at, 0xd70a
/* 377308 E0076298 44810000 */  mtc1      $at, $f0
/* 37730C E007629C 3C013DCC */  lui       $at, 0x3dcc
/* 377310 E00762A0 3421CCCD */  ori       $at, $at, 0xcccd
/* 377314 E00762A4 44811000 */  mtc1      $at, $f2
/* 377318 E00762A8 3C013FD9 */  lui       $at, 0x3fd9
/* 37731C E00762AC 3421999A */  ori       $at, $at, 0x999a
/* 377320 E00762B0 44812000 */  mtc1      $at, $f4
/* 377324 E00762B4 3C013DA3 */  lui       $at, 0x3da3
/* 377328 E00762B8 3421D70A */  ori       $at, $at, 0xd70a
/* 37732C E00762BC 44813000 */  mtc1      $at, $f6
/* 377330 E00762C0 3C013FAE */  lui       $at, 0x3fae
/* 377334 E00762C4 3421147B */  ori       $at, $at, 0x147b
/* 377338 E00762C8 44814000 */  mtc1      $at, $f8
/* 37733C E00762CC 240200B3 */  addiu     $v0, $zero, 0xb3
/* 377340 E00762D0 A0620068 */  sb        $v0, 0x68($v1)
/* 377344 E00762D4 240200A9 */  addiu     $v0, $zero, 0xa9
/* 377348 E00762D8 A0620069 */  sb        $v0, 0x69($v1)
/* 37734C E00762DC 24020055 */  addiu     $v0, $zero, 0x55
/* 377350 E00762E0 A062006A */  sb        $v0, 0x6a($v1)
/* 377354 E00762E4 24020022 */  addiu     $v0, $zero, 0x22
/* 377358 E00762E8 A062006B */  sb        $v0, 0x6b($v1)
/* 37735C E00762EC 240200FF */  addiu     $v0, $zero, 0xff
/* 377360 E00762F0 A062006D */  sb        $v0, 0x6d($v1)
/* 377364 E00762F4 2402003F */  addiu     $v0, $zero, 0x3f
/* 377368 E00762F8 A060006C */  sb        $zero, 0x6c($v1)
/* 37736C E00762FC A062006E */  sb        $v0, 0x6e($v1)
/* 377370 E0076300 E474001C */  swc1      $f20, 0x1c($v1)
/* 377374 E0076304 E4740020 */  swc1      $f20, 0x20($v1)
/* 377378 E0076308 E4740024 */  swc1      $f20, 0x24($v1)
/* 37737C E007630C AC600038 */  sw        $zero, 0x38($v1)
/* 377380 E0076310 AC600050 */  sw        $zero, 0x50($v1)
.LE0076314:
/* 377384 E0076314 E4600044 */  swc1      $f0, 0x44($v1)
/* 377388 E0076318 E462003C */  swc1      $f2, 0x3c($v1)
/* 37738C E007631C E4640048 */  swc1      $f4, 0x48($v1)
/* 377390 E0076320 E460005C */  swc1      $f0, 0x5c($v1)
/* 377394 E0076324 E4660054 */  swc1      $f6, 0x54($v1)
/* 377398 E0076328 E4680060 */  swc1      $f8, 0x60($v1)
.LE007632C:
/* 37739C E007632C C4600004 */  lwc1      $f0, 4($v1)
/* 3773A0 E0076330 C4620008 */  lwc1      $f2, 8($v1)
/* 3773A4 E0076334 C464000C */  lwc1      $f4, 0xc($v1)
/* 3773A8 E0076338 E4600010 */  swc1      $f0, 0x10($v1)
/* 3773AC E007633C E4620014 */  swc1      $f2, 0x14($v1)
/* 3773B0 E0076340 E4640018 */  swc1      $f4, 0x18($v1)
/* 3773B4 E0076344 8FA2006C */  lw        $v0, 0x6c($sp)
/* 3773B8 E0076348 AC510000 */  sw        $s1, ($v0)
/* 3773BC E007634C 8FBF0030 */  lw        $ra, 0x30($sp)
/* 3773C0 E0076350 8FB1002C */  lw        $s1, 0x2c($sp)
/* 3773C4 E0076354 8FB00028 */  lw        $s0, 0x28($sp)
/* 3773C8 E0076358 D7BA0050 */  ldc1      $f26, 0x50($sp)
/* 3773CC E007635C D7B80048 */  ldc1      $f24, 0x48($sp)
/* 3773D0 E0076360 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 3773D4 E0076364 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 3773D8 E0076368 03E00008 */  jr        $ra
/* 3773DC E007636C 27BD0058 */   addiu    $sp, $sp, 0x58
