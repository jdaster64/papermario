.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802185A8_6493B8
/* 6493B8 802185A8 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 6493BC 802185AC AFB10014 */  sw        $s1, 0x14($sp)
/* 6493C0 802185B0 0080882D */  daddu     $s1, $a0, $zero
/* 6493C4 802185B4 AFBF0018 */  sw        $ra, 0x18($sp)
/* 6493C8 802185B8 AFB00010 */  sw        $s0, 0x10($sp)
/* 6493CC 802185BC 8E30000C */  lw        $s0, 0xc($s1)
/* 6493D0 802185C0 8E050000 */  lw        $a1, ($s0)
/* 6493D4 802185C4 0C0B1EAF */  jal       evt_get_variable
/* 6493D8 802185C8 26100004 */   addiu    $s0, $s0, 4
/* 6493DC 802185CC 0040202D */  daddu     $a0, $v0, $zero
/* 6493E0 802185D0 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 6493E4 802185D4 14820002 */  bne       $a0, $v0, .L802185E0
/* 6493E8 802185D8 00000000 */   nop
/* 6493EC 802185DC 8E240148 */  lw        $a0, 0x148($s1)
.L802185E0:
/* 6493F0 802185E0 0C09A75B */  jal       get_actor
/* 6493F4 802185E4 00000000 */   nop
/* 6493F8 802185E8 0040202D */  daddu     $a0, $v0, $zero
/* 6493FC 802185EC 90830136 */  lbu       $v1, 0x136($a0)
/* 649400 802185F0 24020047 */  addiu     $v0, $zero, 0x47
/* 649404 802185F4 1062000B */  beq       $v1, $v0, .L80218624
/* 649408 802185F8 0062102A */   slt      $v0, $v1, $v0
/* 64940C 802185FC 54400011 */  bnel      $v0, $zero, .L80218644
/* 649410 80218600 0220202D */   daddu    $a0, $s1, $zero
/* 649414 80218604 28620065 */  slti      $v0, $v1, 0x65
/* 649418 80218608 1040000D */  beqz      $v0, .L80218640
/* 64941C 8021860C 2862004D */   slti     $v0, $v1, 0x4d
/* 649420 80218610 1440000C */  bnez      $v0, .L80218644
/* 649424 80218614 0220202D */   daddu    $a0, $s1, $zero
/* 649428 80218618 8E050000 */  lw        $a1, ($s0)
/* 64942C 8021861C 08086193 */  j         .L8021864C
/* 649430 80218620 2406FFFF */   addiu    $a2, $zero, -1
.L80218624:
/* 649434 80218624 8C8300A8 */  lw        $v1, 0xa8($a0)
/* 649438 80218628 24020001 */  addiu     $v0, $zero, 1
/* 64943C 8021862C 14620005 */  bne       $v1, $v0, .L80218644
/* 649440 80218630 0220202D */   daddu    $a0, $s1, $zero
/* 649444 80218634 8E050000 */  lw        $a1, ($s0)
/* 649448 80218638 08086193 */  j         .L8021864C
/* 64944C 8021863C 2406FFFF */   addiu    $a2, $zero, -1
.L80218640:
/* 649450 80218640 0220202D */  daddu     $a0, $s1, $zero
.L80218644:
/* 649454 80218644 8E050000 */  lw        $a1, ($s0)
/* 649458 80218648 0000302D */  daddu     $a2, $zero, $zero
.L8021864C:
/* 64945C 8021864C 0C0B2026 */  jal       evt_set_variable
/* 649460 80218650 00000000 */   nop
/* 649464 80218654 8FBF0018 */  lw        $ra, 0x18($sp)
/* 649468 80218658 8FB10014 */  lw        $s1, 0x14($sp)
/* 64946C 8021865C 8FB00010 */  lw        $s0, 0x10($sp)
/* 649470 80218660 24020002 */  addiu     $v0, $zero, 2
/* 649474 80218664 03E00008 */  jr        $ra
/* 649478 80218668 27BD0020 */   addiu    $sp, $sp, 0x20
/* 64947C 8021866C 00000000 */  nop
