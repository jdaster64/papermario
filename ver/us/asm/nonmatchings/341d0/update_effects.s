.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel update_effects
/* 35150 80059D50 3C02800A */  lui       $v0, %hi(gOverrideFlags)
/* 35154 80059D54 8C42A650 */  lw        $v0, %lo(gOverrideFlags)($v0)
/* 35158 80059D58 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 3515C 80059D5C AFBF0020 */  sw        $ra, 0x20($sp)
/* 35160 80059D60 AFB3001C */  sw        $s3, 0x1c($sp)
/* 35164 80059D64 AFB20018 */  sw        $s2, 0x18($sp)
/* 35168 80059D68 AFB10014 */  sw        $s1, 0x14($sp)
/* 3516C 80059D6C 30420C00 */  andi      $v0, $v0, 0xc00
/* 35170 80059D70 14400059 */  bnez      $v0, .L80059ED8
/* 35174 80059D74 AFB00010 */   sw       $s0, 0x10($sp)
/* 35178 80059D78 0000902D */  daddu     $s2, $zero, $zero
/* 3517C 80059D7C 3C10800A */  lui       $s0, %hi(gEffectGraphicsData)
/* 35180 80059D80 26104000 */  addiu     $s0, $s0, %lo(gEffectGraphicsData)
/* 35184 80059D84 24040003 */  addiu     $a0, $zero, 3
.L80059D88:
/* 35188 80059D88 8E030000 */  lw        $v1, ($s0)
/* 3518C 80059D8C 30620001 */  andi      $v0, $v1, 1
/* 35190 80059D90 10400007 */  beqz      $v0, .L80059DB0
/* 35194 80059D94 26520001 */   addiu    $s2, $s2, 1
/* 35198 80059D98 30620002 */  andi      $v0, $v1, 2
/* 3519C 80059D9C 14400004 */  bnez      $v0, .L80059DB0
/* 351A0 80059DA0 00000000 */   nop
/* 351A4 80059DA4 34620002 */  ori       $v0, $v1, 2
/* 351A8 80059DA8 AE020000 */  sw        $v0, ($s0)
/* 351AC 80059DAC AE04000C */  sw        $a0, 0xc($s0)
.L80059DB0:
/* 351B0 80059DB0 2A42000F */  slti      $v0, $s2, 0xf
/* 351B4 80059DB4 1440FFF4 */  bnez      $v0, .L80059D88
/* 351B8 80059DB8 26100020 */   addiu    $s0, $s0, 0x20
/* 351BC 80059DBC 0000902D */  daddu     $s2, $zero, $zero
/* 351C0 80059DC0 2413FFFD */  addiu     $s3, $zero, -3
/* 351C4 80059DC4 3C11800B */  lui       $s1, %hi(gEffectInstances)
/* 351C8 80059DC8 26314398 */  addiu     $s1, $s1, %lo(gEffectInstances)
.L80059DCC:
/* 351CC 80059DCC 8E300000 */  lw        $s0, ($s1)
/* 351D0 80059DD0 52000020 */  beql      $s0, $zero, .L80059E54
/* 351D4 80059DD4 26520001 */   addiu    $s2, $s2, 1
/* 351D8 80059DD8 8E020000 */  lw        $v0, ($s0)
/* 351DC 80059DDC 30420001 */  andi      $v0, $v0, 1
/* 351E0 80059DE0 5040001C */  beql      $v0, $zero, .L80059E54
/* 351E4 80059DE4 26520001 */   addiu    $s2, $s2, 1
/* 351E8 80059DE8 8E030010 */  lw        $v1, 0x10($s0)
/* 351EC 80059DEC 8C620000 */  lw        $v0, ($v1)
/* 351F0 80059DF0 3C048007 */  lui       $a0, %hi(gGameStatusPtr)
/* 351F4 80059DF4 8C84419C */  lw        $a0, %lo(gGameStatusPtr)($a0)
/* 351F8 80059DF8 00531024 */  and       $v0, $v0, $s3
/* 351FC 80059DFC AC620000 */  sw        $v0, ($v1)
/* 35200 80059E00 80820070 */  lb        $v0, 0x70($a0)
/* 35204 80059E04 10400007 */  beqz      $v0, .L80059E24
/* 35208 80059E08 00000000 */   nop
/* 3520C 80059E0C 8E020000 */  lw        $v0, ($s0)
/* 35210 80059E10 30420004 */  andi      $v0, $v0, 4
/* 35214 80059E14 5040000F */  beql      $v0, $zero, .L80059E54
/* 35218 80059E18 26520001 */   addiu    $s2, $s2, 1
/* 3521C 80059E1C 0801678D */  j         .L80059E34
/* 35220 80059E20 00000000 */   nop
.L80059E24:
/* 35224 80059E24 8E020000 */  lw        $v0, ($s0)
/* 35228 80059E28 30420004 */  andi      $v0, $v0, 4
/* 3522C 80059E2C 54400009 */  bnel      $v0, $zero, .L80059E54
/* 35230 80059E30 26520001 */   addiu    $s2, $s2, 1
.L80059E34:
/* 35234 80059E34 8E020010 */  lw        $v0, 0x10($s0)
/* 35238 80059E38 8C420010 */  lw        $v0, 0x10($v0)
/* 3523C 80059E3C 0040F809 */  jalr      $v0
/* 35240 80059E40 0200202D */   daddu    $a0, $s0, $zero
/* 35244 80059E44 8E020000 */  lw        $v0, ($s0)
/* 35248 80059E48 34420008 */  ori       $v0, $v0, 8
/* 3524C 80059E4C AE020000 */  sw        $v0, ($s0)
/* 35250 80059E50 26520001 */  addiu     $s2, $s2, 1
.L80059E54:
/* 35254 80059E54 2A420060 */  slti      $v0, $s2, 0x60
/* 35258 80059E58 1440FFDC */  bnez      $v0, .L80059DCC
/* 3525C 80059E5C 26310004 */   addiu    $s1, $s1, 4
/* 35260 80059E60 0000902D */  daddu     $s2, $zero, $zero
/* 35264 80059E64 3C10800A */  lui       $s0, %hi(gEffectGraphicsData)
/* 35268 80059E68 26104000 */  addiu     $s0, $s0, %lo(gEffectGraphicsData)
/* 3526C 80059E6C 2611001C */  addiu     $s1, $s0, 0x1c
.L80059E70:
/* 35270 80059E70 8E030000 */  lw        $v1, ($s0)
/* 35274 80059E74 30620001 */  andi      $v0, $v1, 1
/* 35278 80059E78 50400013 */  beql      $v0, $zero, .L80059EC8
/* 3527C 80059E7C 26520001 */   addiu    $s2, $s2, 1
/* 35280 80059E80 30620002 */  andi      $v0, $v1, 2
/* 35284 80059E84 50400010 */  beql      $v0, $zero, .L80059EC8
/* 35288 80059E88 26520001 */   addiu    $s2, $s2, 1
/* 3528C 80059E8C 8E22FFF0 */  lw        $v0, -0x10($s1)
/* 35290 80059E90 10400003 */  beqz      $v0, .L80059EA0
/* 35294 80059E94 2442FFFF */   addiu    $v0, $v0, -1
/* 35298 80059E98 080167B1 */  j         .L80059EC4
/* 3529C 80059E9C AE22FFF0 */   sw       $v0, -0x10($s1)
.L80059EA0:
/* 352A0 80059EA0 8E240000 */  lw        $a0, ($s1)
/* 352A4 80059EA4 50800005 */  beql      $a0, $zero, .L80059EBC
/* 352A8 80059EA8 AE000000 */   sw       $zero, ($s0)
/* 352AC 80059EAC 0C00AB1E */  jal       general_heap_free
/* 352B0 80059EB0 00000000 */   nop
/* 352B4 80059EB4 AE200000 */  sw        $zero, ($s1)
/* 352B8 80059EB8 AE000000 */  sw        $zero, ($s0)
.L80059EBC:
/* 352BC 80059EBC 0C019A48 */  jal       osUnmapTLB
/* 352C0 80059EC0 0240202D */   daddu    $a0, $s2, $zero
.L80059EC4:
/* 352C4 80059EC4 26520001 */  addiu     $s2, $s2, 1
.L80059EC8:
/* 352C8 80059EC8 26310020 */  addiu     $s1, $s1, 0x20
/* 352CC 80059ECC 2A42000F */  slti      $v0, $s2, 0xf
/* 352D0 80059ED0 1440FFE7 */  bnez      $v0, .L80059E70
/* 352D4 80059ED4 26100020 */   addiu    $s0, $s0, 0x20
.L80059ED8:
/* 352D8 80059ED8 8FBF0020 */  lw        $ra, 0x20($sp)
/* 352DC 80059EDC 8FB3001C */  lw        $s3, 0x1c($sp)
/* 352E0 80059EE0 8FB20018 */  lw        $s2, 0x18($sp)
/* 352E4 80059EE4 8FB10014 */  lw        $s1, 0x14($sp)
/* 352E8 80059EE8 8FB00010 */  lw        $s0, 0x10($sp)
/* 352EC 80059EEC 03E00008 */  jr        $ra
/* 352F0 80059EF0 27BD0028 */   addiu    $sp, $sp, 0x28
