.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A96DC_42684C
/* 42684C 802A96DC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 426850 802A96E0 AFB1001C */  sw        $s1, 0x1c($sp)
/* 426854 802A96E4 3C11802A */  lui       $s1, %hi(gActionCommandStatus)
/* 426858 802A96E8 2631FBE0 */  addiu     $s1, $s1, %lo(gActionCommandStatus)
/* 42685C 802A96EC AFBF0020 */  sw        $ra, 0x20($sp)
/* 426860 802A96F0 AFB00018 */  sw        $s0, 0x18($sp)
/* 426864 802A96F4 0C0511EA */  jal       draw_hud_element_clipped
/* 426868 802A96F8 8E240004 */   lw       $a0, 4($s1)
/* 42686C 802A96FC 8E300008 */  lw        $s0, 8($s1)
/* 426870 802A9700 0C0511EA */  jal       draw_hud_element_clipped
/* 426874 802A9704 0200202D */   daddu    $a0, $s0, $zero
/* 426878 802A9708 0200202D */  daddu     $a0, $s0, $zero
/* 42687C 802A970C 27A50010 */  addiu     $a1, $sp, 0x10
/* 426880 802A9710 0C05126B */  jal       get_hud_element_render_pos
/* 426884 802A9714 27A60014 */   addiu    $a2, $sp, 0x14
/* 426888 802A9718 86220068 */  lh        $v0, 0x68($s1)
/* 42688C 802A971C 14400011 */  bnez      $v0, .L802A9764
/* 426890 802A9720 3C0451EB */   lui      $a0, 0x51eb
/* 426894 802A9724 96230044 */  lhu       $v1, 0x44($s1)
/* 426898 802A9728 3484851F */  ori       $a0, $a0, 0x851f
/* 42689C 802A972C 00031C00 */  sll       $v1, $v1, 0x10
/* 4268A0 802A9730 00031403 */  sra       $v0, $v1, 0x10
/* 4268A4 802A9734 00440018 */  mult      $v0, $a0
/* 4268A8 802A9738 8FA50014 */  lw        $a1, 0x14($sp)
/* 4268AC 802A973C 00031FC3 */  sra       $v1, $v1, 0x1f
/* 4268B0 802A9740 8FA40010 */  lw        $a0, 0x10($sp)
/* 4268B4 802A9744 00003810 */  mfhi      $a3
/* 4268B8 802A9748 00073143 */  sra       $a2, $a3, 5
/* 4268BC 802A974C 00C33023 */  subu      $a2, $a2, $v1
/* 4268C0 802A9750 00063400 */  sll       $a2, $a2, 0x10
/* 4268C4 802A9754 0C09A1DC */  jal       func_80268770
/* 4268C8 802A9758 00063403 */   sra      $a2, $a2, 0x10
/* 4268CC 802A975C 080AA5E7 */  j         .L802A979C
/* 4268D0 802A9760 00000000 */   nop
.L802A9764:
/* 4268D4 802A9764 96230044 */  lhu       $v1, 0x44($s1)
/* 4268D8 802A9768 3484851F */  ori       $a0, $a0, 0x851f
/* 4268DC 802A976C 00031C00 */  sll       $v1, $v1, 0x10
/* 4268E0 802A9770 00031403 */  sra       $v0, $v1, 0x10
/* 4268E4 802A9774 00440018 */  mult      $v0, $a0
/* 4268E8 802A9778 8FA50014 */  lw        $a1, 0x14($sp)
/* 4268EC 802A977C 00031FC3 */  sra       $v1, $v1, 0x1f
/* 4268F0 802A9780 8FA40010 */  lw        $a0, 0x10($sp)
/* 4268F4 802A9784 00003810 */  mfhi      $a3
/* 4268F8 802A9788 00073143 */  sra       $a2, $a3, 5
/* 4268FC 802A978C 00C33023 */  subu      $a2, $a2, $v1
/* 426900 802A9790 00063400 */  sll       $a2, $a2, 0x10
/* 426904 802A9794 0C09A203 */  jal       func_8026880C
/* 426908 802A9798 00063403 */   sra      $a2, $a2, 0x10
.L802A979C:
/* 42690C 802A979C 8E24000C */  lw        $a0, 0xc($s1)
/* 426910 802A97A0 0C0511EA */  jal       draw_hud_element_clipped
/* 426914 802A97A4 00000000 */   nop
/* 426918 802A97A8 8FBF0020 */  lw        $ra, 0x20($sp)
/* 42691C 802A97AC 8FB1001C */  lw        $s1, 0x1c($sp)
/* 426920 802A97B0 8FB00018 */  lw        $s0, 0x18($sp)
/* 426924 802A97B4 03E00008 */  jr        $ra
/* 426928 802A97B8 27BD0028 */   addiu    $sp, $sp, 0x28
