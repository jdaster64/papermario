.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80263914
/* 1921F4 80263914 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 1921F8 80263918 AFBE0030 */  sw        $fp, 0x30($sp)
/* 1921FC 8026391C 3C1E8011 */  lui       $fp, %hi(gPlayerData)
/* 192200 80263920 27DEF290 */  addiu     $fp, $fp, %lo(gPlayerData)
/* 192204 80263924 AFB10014 */  sw        $s1, 0x14($sp)
/* 192208 80263928 24110017 */  addiu     $s1, $zero, 0x17
/* 19220C 8026392C AFB40020 */  sw        $s4, 0x20($sp)
/* 192210 80263930 3C14800E */  lui       $s4, %hi(gBattleStatus)
/* 192214 80263934 2694C070 */  addiu     $s4, $s4, %lo(gBattleStatus)
/* 192218 80263938 02911021 */  addu      $v0, $s4, $s1
/* 19221C 8026393C AFBF0034 */  sw        $ra, 0x34($sp)
/* 192220 80263940 AFB7002C */  sw        $s7, 0x2c($sp)
/* 192224 80263944 AFB60028 */  sw        $s6, 0x28($sp)
/* 192228 80263948 AFB50024 */  sw        $s5, 0x24($sp)
/* 19222C 8026394C AFB3001C */  sw        $s3, 0x1c($sp)
/* 192230 80263950 AFB20018 */  sw        $s2, 0x18($sp)
/* 192234 80263954 AFB00010 */  sw        $s0, 0x10($sp)
/* 192238 80263958 8E9700D8 */  lw        $s7, 0xd8($s4)
/* 19223C 8026395C 8E9500DC */  lw        $s5, 0xdc($s4)
.L80263960:
/* 192240 80263960 A04001DE */  sb        $zero, 0x1de($v0)
/* 192244 80263964 2631FFFF */  addiu     $s1, $s1, -1
/* 192248 80263968 0621FFFD */  bgez      $s1, .L80263960
/* 19224C 8026396C 2442FFFF */   addiu    $v0, $v0, -1
/* 192250 80263970 8EA20008 */  lw        $v0, 8($s5)
/* 192254 80263974 24110001 */  addiu     $s1, $zero, 1
/* 192258 80263978 90420006 */  lbu       $v0, 6($v0)
/* 19225C 8026397C 83C30012 */  lb        $v1, 0x12($fp)
/* 192260 80263980 24420002 */  addiu     $v0, $v0, 2
/* 192264 80263984 A282020E */  sb        $v0, 0x20e($s4)
/* 192268 80263988 02231004 */  sllv      $v0, $v1, $s1
/* 19226C 8026398C 00431021 */  addu      $v0, $v0, $v1
/* 192270 80263990 02221004 */  sllv      $v0, $v0, $s1
/* 192274 80263994 2442007D */  addiu     $v0, $v0, 0x7d
/* 192278 80263998 8EA30008 */  lw        $v1, 8($s5)
/* 19227C 8026399C 9284020E */  lbu       $a0, 0x20e($s4)
/* 192280 802639A0 90630006 */  lbu       $v1, 6($v1)
/* 192284 802639A4 0224202A */  slt       $a0, $s1, $a0
/* 192288 802639A8 00621821 */  addu      $v1, $v1, $v0
/* 19228C 802639AC 1080000E */  beqz      $a0, .L802639E8
/* 192290 802639B0 A28301DE */   sb       $v1, 0x1de($s4)
.L802639B4:
/* 192294 802639B4 83C30012 */  lb        $v1, 0x12($fp)
/* 192298 802639B8 02912021 */  addu      $a0, $s4, $s1
/* 19229C 802639BC 00031040 */  sll       $v0, $v1, 1
/* 1922A0 802639C0 00431021 */  addu      $v0, $v0, $v1
/* 1922A4 802639C4 00021040 */  sll       $v0, $v0, 1
/* 1922A8 802639C8 2442007F */  addiu     $v0, $v0, 0x7f
/* 1922AC 802639CC 00511021 */  addu      $v0, $v0, $s1
/* 1922B0 802639D0 A08201DE */  sb        $v0, 0x1de($a0)
/* 1922B4 802639D4 9282020E */  lbu       $v0, 0x20e($s4)
/* 1922B8 802639D8 26310001 */  addiu     $s1, $s1, 1
/* 1922BC 802639DC 0222102A */  slt       $v0, $s1, $v0
/* 1922C0 802639E0 1440FFF4 */  bnez      $v0, .L802639B4
/* 1922C4 802639E4 00000000 */   nop
.L802639E8:
/* 1922C8 802639E8 0000882D */  daddu     $s1, $zero, $zero
/* 1922CC 802639EC 9282020E */  lbu       $v0, 0x20e($s4)
/* 1922D0 802639F0 10400037 */  beqz      $v0, .L80263AD0
/* 1922D4 802639F4 0220B02D */   daddu    $s6, $s1, $zero
/* 1922D8 802639F8 0280902D */  daddu     $s2, $s4, $zero
.L802639FC:
/* 1922DC 802639FC 924301DE */  lbu       $v1, 0x1de($s2)
/* 1922E0 80263A00 3C068009 */  lui       $a2, %hi(D_8008F060)
/* 1922E4 80263A04 24C6F060 */  addiu     $a2, $a2, %lo(D_8008F060)
/* 1922E8 80263A08 00031080 */  sll       $v0, $v1, 2
/* 1922EC 80263A0C 00431021 */  addu      $v0, $v0, $v1
/* 1922F0 80263A10 00021080 */  sll       $v0, $v0, 2
/* 1922F4 80263A14 00469821 */  addu      $s3, $v0, $a2
/* 1922F8 80263A18 82700011 */  lb        $s0, 0x11($s3)
/* 1922FC 80263A1C 1200000B */  beqz      $s0, .L80263A4C
/* 192300 80263A20 02E0202D */   daddu    $a0, $s7, $zero
/* 192304 80263A24 0C099CAB */  jal       player_team_is_ability_active
/* 192308 80263A28 24050018 */   addiu    $a1, $zero, 0x18
/* 19230C 80263A2C 02028023 */  subu      $s0, $s0, $v0
/* 192310 80263A30 02E0202D */  daddu     $a0, $s7, $zero
/* 192314 80263A34 0C099CAB */  jal       player_team_is_ability_active
/* 192318 80263A38 24050026 */   addiu    $a1, $zero, 0x26
/* 19231C 80263A3C 00021040 */  sll       $v0, $v0, 1
/* 192320 80263A40 02028023 */  subu      $s0, $s0, $v0
/* 192324 80263A44 5A000001 */  blezl     $s0, .L80263A4C
/* 192328 80263A48 24100001 */   addiu    $s0, $zero, 1
.L80263A4C:
/* 19232C 80263A4C 24020005 */  addiu     $v0, $zero, 5
/* 192330 80263A50 A2820178 */  sb        $v0, 0x178($s4)
/* 192334 80263A54 8EA20008 */  lw        $v0, 8($s5)
/* 192338 80263A58 90420006 */  lbu       $v0, 6($v0)
/* 19233C 80263A5C A682017A */  sh        $v0, 0x17a($s4)
/* 192340 80263A60 8E620004 */  lw        $v0, 4($s3)
/* 192344 80263A64 02A0202D */  daddu     $a0, $s5, $zero
/* 192348 80263A68 0C098C0B */  jal       player_create_target_list
/* 19234C 80263A6C AE820184 */   sw       $v0, 0x184($s4)
/* 192350 80263A70 82A2040C */  lb        $v0, 0x40c($s5)
/* 192354 80263A74 10400006 */  beqz      $v0, .L80263A90
/* 192358 80263A78 2402FFFE */   addiu    $v0, $zero, -2
/* 19235C 80263A7C 24160001 */  addiu     $s6, $zero, 1
/* 192360 80263A80 A25601F6 */  sb        $s6, 0x1f6($s2)
/* 192364 80263A84 82A2040C */  lb        $v0, 0x40c($s5)
/* 192368 80263A88 14400002 */  bnez      $v0, .L80263A94
/* 19236C 80263A8C 2402FFFE */   addiu    $v0, $zero, -2
.L80263A90:
/* 192370 80263A90 A24201F6 */  sb        $v0, 0x1f6($s2)
.L80263A94:
/* 192374 80263A94 83C20005 */  lb        $v0, 5($fp)
/* 192378 80263A98 0050102A */  slt       $v0, $v0, $s0
/* 19237C 80263A9C 54400001 */  bnel      $v0, $zero, .L80263AA4
/* 192380 80263AA0 A24001F6 */   sb       $zero, 0x1f6($s2)
.L80263AA4:
/* 192384 80263AA4 3C02800E */  lui       $v0, %hi(gBattleStatus+0x4)
/* 192388 80263AA8 8C42C074 */  lw        $v0, %lo(gBattleStatus+0x4)($v0)
/* 19238C 80263AAC 30421000 */  andi      $v0, $v0, 0x1000
/* 192390 80263AB0 10400002 */  beqz      $v0, .L80263ABC
/* 192394 80263AB4 2402FFFF */   addiu    $v0, $zero, -1
/* 192398 80263AB8 A24201F6 */  sb        $v0, 0x1f6($s2)
.L80263ABC:
/* 19239C 80263ABC 9282020E */  lbu       $v0, 0x20e($s4)
/* 1923A0 80263AC0 26310001 */  addiu     $s1, $s1, 1
/* 1923A4 80263AC4 0222102A */  slt       $v0, $s1, $v0
/* 1923A8 80263AC8 1440FFCC */  bnez      $v0, .L802639FC
/* 1923AC 80263ACC 26520001 */   addiu    $s2, $s2, 1
.L80263AD0:
/* 1923B0 80263AD0 16C00002 */  bnez      $s6, .L80263ADC
/* 1923B4 80263AD4 24020001 */   addiu    $v0, $zero, 1
/* 1923B8 80263AD8 2402FFFF */  addiu     $v0, $zero, -1
.L80263ADC:
/* 1923BC 80263ADC A2820080 */  sb        $v0, 0x80($s4)
/* 1923C0 80263AE0 8FBF0034 */  lw        $ra, 0x34($sp)
/* 1923C4 80263AE4 8FBE0030 */  lw        $fp, 0x30($sp)
/* 1923C8 80263AE8 8FB7002C */  lw        $s7, 0x2c($sp)
/* 1923CC 80263AEC 8FB60028 */  lw        $s6, 0x28($sp)
/* 1923D0 80263AF0 8FB50024 */  lw        $s5, 0x24($sp)
/* 1923D4 80263AF4 8FB40020 */  lw        $s4, 0x20($sp)
/* 1923D8 80263AF8 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1923DC 80263AFC 8FB20018 */  lw        $s2, 0x18($sp)
/* 1923E0 80263B00 8FB10014 */  lw        $s1, 0x14($sp)
/* 1923E4 80263B04 8FB00010 */  lw        $s0, 0x10($sp)
/* 1923E8 80263B08 03E00008 */  jr        $ra
/* 1923EC 80263B0C 27BD0038 */   addiu    $sp, $sp, 0x38
