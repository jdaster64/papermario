.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024004C_99523C
/* 99523C 8024004C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 995240 80240050 AFB20020 */  sw        $s2, 0x20($sp)
/* 995244 80240054 0080902D */  daddu     $s2, $a0, $zero
/* 995248 80240058 AFBF0024 */  sw        $ra, 0x24($sp)
/* 99524C 8024005C AFB1001C */  sw        $s1, 0x1c($sp)
/* 995250 80240060 AFB00018 */  sw        $s0, 0x18($sp)
/* 995254 80240064 10A0004A */  beqz      $a1, .L80240190
/* 995258 80240068 8E51000C */   lw       $s1, 0xc($s2)
/* 99525C 8024006C 0C00AB39 */  jal       heap_malloc
/* 995260 80240070 24040058 */   addiu    $a0, $zero, 0x58
/* 995264 80240074 0000202D */  daddu     $a0, $zero, $zero
/* 995268 80240078 3C05FD05 */  lui       $a1, 0xfd05
/* 99526C 8024007C 34A50F81 */  ori       $a1, $a1, 0xf81
/* 995270 80240080 0040802D */  daddu     $s0, $v0, $zero
/* 995274 80240084 0200302D */  daddu     $a2, $s0, $zero
/* 995278 80240088 0C0B2026 */  jal       evt_set_variable
/* 99527C 8024008C AE500084 */   sw       $s0, 0x84($s2)
/* 995280 80240090 8E250000 */  lw        $a1, ($s1)
/* 995284 80240094 26310004 */  addiu     $s1, $s1, 4
/* 995288 80240098 0C0B1EAF */  jal       evt_get_variable
/* 99528C 8024009C 0240202D */   daddu    $a0, $s2, $zero
/* 995290 802400A0 AE020038 */  sw        $v0, 0x38($s0)
/* 995294 802400A4 8E250000 */  lw        $a1, ($s1)
/* 995298 802400A8 26310004 */  addiu     $s1, $s1, 4
/* 99529C 802400AC 0C0B1EAF */  jal       evt_get_variable
/* 9952A0 802400B0 0240202D */   daddu    $a0, $s2, $zero
/* 9952A4 802400B4 AE02003C */  sw        $v0, 0x3c($s0)
/* 9952A8 802400B8 8E250000 */  lw        $a1, ($s1)
/* 9952AC 802400BC 26310004 */  addiu     $s1, $s1, 4
/* 9952B0 802400C0 0C0B210B */  jal       evt_get_float_variable
/* 9952B4 802400C4 0240202D */   daddu    $a0, $s2, $zero
/* 9952B8 802400C8 E600000C */  swc1      $f0, 0xc($s0)
/* 9952BC 802400CC 8E250000 */  lw        $a1, ($s1)
/* 9952C0 802400D0 26310004 */  addiu     $s1, $s1, 4
/* 9952C4 802400D4 0C0B210B */  jal       evt_get_float_variable
/* 9952C8 802400D8 0240202D */   daddu    $a0, $s2, $zero
/* 9952CC 802400DC E6000010 */  swc1      $f0, 0x10($s0)
/* 9952D0 802400E0 8E250000 */  lw        $a1, ($s1)
/* 9952D4 802400E4 26310004 */  addiu     $s1, $s1, 4
/* 9952D8 802400E8 0C0B210B */  jal       evt_get_float_variable
/* 9952DC 802400EC 0240202D */   daddu    $a0, $s2, $zero
/* 9952E0 802400F0 E6000014 */  swc1      $f0, 0x14($s0)
/* 9952E4 802400F4 8E250000 */  lw        $a1, ($s1)
/* 9952E8 802400F8 26310004 */  addiu     $s1, $s1, 4
/* 9952EC 802400FC 0C0B210B */  jal       evt_get_float_variable
/* 9952F0 80240100 0240202D */   daddu    $a0, $s2, $zero
/* 9952F4 80240104 E6000018 */  swc1      $f0, 0x18($s0)
/* 9952F8 80240108 8E250000 */  lw        $a1, ($s1)
/* 9952FC 8024010C 26310004 */  addiu     $s1, $s1, 4
/* 995300 80240110 0C0B210B */  jal       evt_get_float_variable
/* 995304 80240114 0240202D */   daddu    $a0, $s2, $zero
/* 995308 80240118 E600001C */  swc1      $f0, 0x1c($s0)
/* 99530C 8024011C 8E250000 */  lw        $a1, ($s1)
/* 995310 80240120 26310004 */  addiu     $s1, $s1, 4
/* 995314 80240124 0C0B210B */  jal       evt_get_float_variable
/* 995318 80240128 0240202D */   daddu    $a0, $s2, $zero
/* 99531C 8024012C E6000020 */  swc1      $f0, 0x20($s0)
/* 995320 80240130 8E250000 */  lw        $a1, ($s1)
/* 995324 80240134 26310004 */  addiu     $s1, $s1, 4
/* 995328 80240138 0C0B210B */  jal       evt_get_float_variable
/* 99532C 8024013C 0240202D */   daddu    $a0, $s2, $zero
/* 995330 80240140 E6000024 */  swc1      $f0, 0x24($s0)
/* 995334 80240144 8E250000 */  lw        $a1, ($s1)
/* 995338 80240148 0C0B210B */  jal       evt_get_float_variable
/* 99533C 8024014C 0240202D */   daddu    $a0, $s2, $zero
/* 995340 80240150 3C013F80 */  lui       $at, 0x3f80
/* 995344 80240154 44811000 */  mtc1      $at, $f2
/* 995348 80240158 E6000028 */  swc1      $f0, 0x28($s0)
/* 99534C 8024015C AFA00014 */  sw        $zero, 0x14($sp)
/* 995350 80240160 E7A20010 */  swc1      $f2, 0x10($sp)
/* 995354 80240164 8E05000C */  lw        $a1, 0xc($s0)
/* 995358 80240168 8E060010 */  lw        $a2, 0x10($s0)
/* 99535C 8024016C 8E070014 */  lw        $a3, 0x14($s0)
/* 995360 80240170 0C01CA6C */  jal       playFX_83
/* 995364 80240174 24040002 */   addiu    $a0, $zero, 2
/* 995368 80240178 AE020050 */  sw        $v0, 0x50($s0)
/* 99536C 8024017C A600004E */  sh        $zero, 0x4e($s0)
/* 995370 80240180 A6000048 */  sh        $zero, 0x48($s0)
/* 995374 80240184 A600004A */  sh        $zero, 0x4a($s0)
/* 995378 80240188 A6000044 */  sh        $zero, 0x44($s0)
/* 99537C 8024018C A6000046 */  sh        $zero, 0x46($s0)
.L80240190:
/* 995380 80240190 8FBF0024 */  lw        $ra, 0x24($sp)
/* 995384 80240194 8FB20020 */  lw        $s2, 0x20($sp)
/* 995388 80240198 8FB1001C */  lw        $s1, 0x1c($sp)
/* 99538C 8024019C 8FB00018 */  lw        $s0, 0x18($sp)
/* 995390 802401A0 24020002 */  addiu     $v0, $zero, 2
/* 995394 802401A4 03E00008 */  jr        $ra
/* 995398 802401A8 27BD0028 */   addiu    $sp, $sp, 0x28
