#include "flo_22.h"
#include "message_ids.h"
#include "sprite/npc/bzzap.h"
#include "sprite/npc/dayzee.h"

enum {
    NPC_BZZAP,
    NPC_DAYZEE,
};

EntryList N(entryList) = {
    { -230.0f, 0.0f, 0.0f, 90.0f },
};

MapConfig N(config) = {
    .main = &N(main),
    .entryList = &N(entryList),
    .entryCount = ENTRY_COUNT(N(entryList)),
    .background = &gBackgroundImage,
    .tattle = { MSG_flo_22_tattle },
};

EvtSource N(802402E0) = SCRIPT({
    match EVT_STORY_PROGRESS {
        < STORY_CH6_DESTROYED_PUFF_PUFF_MACHINE {
            SetMusicTrack(0, SONG_FLOWER_FIELDS_CLOUDY, 0, 8);
        } else {
            SetMusicTrack(0, SONG_FLOWER_FIELDS_SUNNY, 0, 8);
        }
    }
});

EvtSource N(exitWalk_80240350) = EXIT_WALK_SCRIPT(60,  0, "flo_03",  1);

EvtSource N(802403AC) = SCRIPT({
    bind N(exitWalk_80240350) TRIGGER_FLOOR_ABOVE 0;
});

EvtSource N(main) = SCRIPT({
    EVT_WORLD_LOCATION = LOCATION_FLOWER_FIELDS;
    SetSpriteShading(-1);
    SetCamLeadPlayer(0, 0);
    SetCamPerspective(0, 3, 25, 16, 4096);
    SetCamBGColor(0, 0, 0, 0);
    SetCamEnabled(0, 1);
    MakeNpcs(0, N(npcGroupList_80240DE4));
    spawn N(80241F6C);
    spawn N(80241528);
    GetEntryID(EVT_VAR(0));
    ModifyColliderFlags(0, 1, 0x7FFFFE00);
    EVT_VAR(0) = N(802403AC);
    spawn EnterWalk;
    spawn N(80240E24);
    await N(802402E0);
    if (EVT_STORY_PROGRESS >= STORY_CH6_DESTROYED_PUFF_PUFF_MACHINE) {
        N(func_80240000_CEC240)();
    }
});

static s32 N(pad_518)[] = {
    0x00000000, 0x00000000,
};

NpcSettings N(npcSettings_80240520) = {
    .height = 24,
    .radius = 24,
    .level = 99,
};

EvtSource N(idle_8024054C) = SCRIPT({
    EVT_MAP_VAR(10) = 0;
    loop {
        match EVT_MAP_VAR(10) {
            == 0 {}
            == 1 {
                SetPlayerAnimation(0x1002E);
                EVT_MAP_VAR(10) = 0;
                StartBattle();
            }
        }
        sleep 1;
    }
});

EvtSource N(defeat_802405E4) = SCRIPT({
    GetBattleOutcome(EVT_VAR(0));
    match EVT_VAR(0) {
        == 0 {
            spawn {
                sleep 25;
                SetNpcPos(NPC_SELF, 0, -1000, 0);
                SetNpcFlagBits(NPC_SELF, ((0x00000002)), FALSE);
            }
            DoNpcDefeat();
        }
        == 1 {
            SetNpcPos(NPC_SELF, 0, -1000, 0);
        }
        == 2 {
            SetNpcAnimation(NPC_SELF, NPC_ANIM_bzzap_Palette_00_Anim_1);
            SetNpcPos(NPC_SELF, 30, 60, 0);
            sleep 10;
            SetNpcJumpscale(NPC_SELF, 0);
            NpcJump0(NPC_SELF, 30, 0, 0, 15);
            SetNpcPos(NPC_SELF, 0, -1000, 0);
        }
    }
});

EvtSource N(init_80240740) = SCRIPT({
    BindNpcIdle(NPC_SELF, N(idle_8024054C));
    BindNpcDefeat(NPC_SELF, N(defeat_802405E4));
});

EvtSource N(idle_80240778) = SCRIPT({
    EVT_MAP_VAR(11) = 0;
    loop {
        match EVT_MAP_VAR(11) {
            == 0 {}
            == 1 {
                SetPlayerAnimation(0x1002E);
                EVT_MAP_VAR(11) = 0;
                StartBattle();
            }
        }
        sleep 1;
    }
});

EvtSource N(defeat_80240810) = SCRIPT({
    GetBattleOutcome(EVT_VAR(0));
    match EVT_VAR(0) {
        == 0 {
            spawn {
                sleep 25;
                SetNpcPos(NPC_SELF, 0, -1000, 0);
                SetNpcFlagBits(NPC_SELF, ((0x00000002)), FALSE);
            }
            DoNpcDefeat();
        }
        == 1 {
            SetNpcPos(NPC_SELF, 0, -1000, 0);
        }
        == 3 {
            SetNpcAnimation(NPC_SELF, NPC_ANIM_dayzee_Palette_00_Anim_1);
            sleep 10;
            SetNpcJumpscale(NPC_SELF, 2.0);
            NpcJump0(NPC_SELF, 30, 0, 0, 15);
            SetNpcPos(NPC_SELF, 0, -1000, 0);
        }
        == 2 {
            SetNpcAnimation(NPC_SELF, NPC_ANIM_dayzee_Palette_00_Anim_1);
            sleep 10;
            SetNpcJumpscale(NPC_SELF, 2.0);
            NpcJump0(NPC_SELF, 30, 0, 0, 15);
            SetNpcPos(NPC_SELF, 0, -1000, 0);
        }
    }
});

EvtSource N(init_802409CC) = SCRIPT({
    BindNpcIdle(NPC_SELF, N(idle_80240778));
    BindNpcDefeat(NPC_SELF, N(defeat_80240810));
});

StaticNpc N(npcGroup_80240A04) = {
    .id = NPC_BZZAP,
    .settings = &N(npcSettings_80240520),
    .pos = { 0.0f, -1000.0f, 0.0f },
    .flags = NPC_FLAG_4 | NPC_FLAG_100 | NPC_FLAG_GRAVITY | NPC_FLAG_LOCK_ANIMS | NPC_FLAG_NO_Y_MOVEMENT,
    .init = &N(init_80240740),
    .yaw = 270,
    .dropFlags = 0x80,
    .heartDrops = NO_DROPS,
    .flowerDrops = NO_DROPS,
    .animations = {
        NPC_ANIM_bzzap_Palette_00_Anim_2,
        NPC_ANIM_bzzap_Palette_00_Anim_2,
        NPC_ANIM_bzzap_Palette_00_Anim_3,
        NPC_ANIM_bzzap_Palette_00_Anim_3,
        NPC_ANIM_bzzap_Palette_00_Anim_1,
        NPC_ANIM_bzzap_Palette_00_Anim_2,
        NPC_ANIM_bzzap_Palette_00_Anim_6,
        NPC_ANIM_bzzap_Palette_00_Anim_6,
        NPC_ANIM_bzzap_Palette_00_Anim_4,
        NPC_ANIM_bzzap_Palette_00_Anim_2,
        NPC_ANIM_bzzap_Palette_00_Anim_1,
        NPC_ANIM_bzzap_Palette_00_Anim_1,
        NPC_ANIM_bzzap_Palette_00_Anim_1,
        NPC_ANIM_bzzap_Palette_00_Anim_1,
        NPC_ANIM_bzzap_Palette_00_Anim_1,
        NPC_ANIM_bzzap_Palette_00_Anim_1,
    },
};

StaticNpc N(npcGroup_80240BF4) = {
    .id = NPC_DAYZEE,
    .settings = &N(npcSettings_80240520),
    .pos = { 0.0f, -1000.0f, 0.0f },
    .flags = NPC_FLAG_4 | NPC_FLAG_100 | NPC_FLAG_GRAVITY | NPC_FLAG_LOCK_ANIMS | NPC_FLAG_NO_Y_MOVEMENT,
    .init = &N(init_802409CC),
    .yaw = 270,
    .dropFlags = 0x80,
    .itemDropChance = 15,
    .itemDrops = {
        { ITEM_MAPLE_SYRUP, 6, 0 },
        { ITEM_HONEY_SYRUP, 4, 0 },
    },
    .heartDrops = STANDARD_HEART_DROPS(2),
    .flowerDrops = STANDARD_FLOWER_DROPS(4),
    .maxCoinBonus = 3,
    .animations = {
        NPC_ANIM_dayzee_Palette_00_Anim_1,
        NPC_ANIM_dayzee_Palette_00_Anim_2,
        NPC_ANIM_dayzee_Palette_00_Anim_3,
        NPC_ANIM_dayzee_Palette_00_Anim_3,
        NPC_ANIM_dayzee_Palette_00_Anim_1,
        NPC_ANIM_dayzee_Palette_00_Anim_1,
        NPC_ANIM_dayzee_Palette_00_Anim_8,
        NPC_ANIM_dayzee_Palette_00_Anim_8,
        NPC_ANIM_dayzee_Palette_00_Anim_6,
        NPC_ANIM_dayzee_Palette_00_Anim_7,
        NPC_ANIM_dayzee_Palette_00_Anim_1,
        NPC_ANIM_dayzee_Palette_00_Anim_1,
        NPC_ANIM_dayzee_Palette_00_Anim_1,
        NPC_ANIM_dayzee_Palette_00_Anim_1,
        NPC_ANIM_dayzee_Palette_00_Anim_1,
        NPC_ANIM_dayzee_Palette_00_Anim_1,
    },
    .unk_1E0 = { 00, 00, 00, 03, 00, 00, 00, 00},
};

NpcGroupList N(npcGroupList_80240DE4) = {
    NPC_GROUP(N(npcGroup_80240A04), BATTLE_ID(24, 23, 0, 3)),
    NPC_GROUP(N(npcGroup_80240BF4), BATTLE_ID(24, 15, 0, 2)),
    {},
};

static s32 N(pad_E08)[] = {
    0x00000000, 0x00000000,
};

s32 N(itemList_80240E10)[] = {
    ITEM_RED_BERRY,
    ITEM_BLUE_BERRY,
    ITEM_YELLOW_BERRY,
    ITEM_BUBBLE_BERRY,
    ITEM_NONE,
};

EvtSource N(80240E24) = SCRIPT({
    DisablePlayerInput(TRUE);
    sleep 20;
    ShowMessageAtScreenPos(MESSAGE_ID(0x11, 0x00DB), 300, 120);
    sleep 10;
    DisablePlayerInput(FALSE);
});

EvtSource N(80240E84) = SCRIPT({
    SetPlayerAnimation(0x6000E);
    spawn {
        GetPlayerPos(EVT_VAR(2), EVT_VAR(3), EVT_VAR(4));
        EVT_VAR(6) = 35;
        EVT_VAR(5) = 5;
        MakeItemEntity(EVT_VAR(8), EVT_VAR(2), EVT_VAR(6), 0, 1, 0);
        EVT_VAR(7) = EVT_VAR(0);
        MakeLerp(EVT_VAR(2), 35, 20, 5);
        loop {
            UpdateLerp();
            SetItemPos(EVT_VAR(7), EVT_VAR(0), EVT_VAR(6), 0);
            EVT_VAR(6) += EVT_VAR(5);
            EVT_VAR(5) += -1;
            sleep 1;
            if (EVT_VAR(1) == 0) {
                break loop;
            }
        }
        RemoveItemEntity(EVT_VAR(7));
    }
    sleep 10;
    PlaySoundAt(0x302, 0, 35, 0, 0);
    sleep 5;
    SetPlayerAnimation(ANIM_10002);
    sleep 10;
});

EvtSource N(80241028) = SCRIPT({
    DisablePlayerInput(TRUE);
    DisablePlayerInput(FALSE);
    ShowConsumableChoicePopup();
    CloseChoicePopup();
    DisablePlayerInput(TRUE);
    EVT_VAR(8) = EVT_VAR(0);
    match EVT_VAR(8) {
        <= -1 {}
        <= 0 {
            ShowMessageAtScreenPos(MESSAGE_ID(0x1D, 0x015C), 160, 40);
        }
        == 158 {
            await N(80240E84);
            RemoveItemAt(EVT_VAR(1));
            if (EVT_SAVE_FLAG(1395) == 0) {
                ShowMessageAtWorldPos(MESSAGE_ID(0x11, 0x00DD), 35, 35, 0);
                EVT_SAVE_FLAG(1395) = 1;
                MakeItemEntity(ITEM_FLOWER_SAVER_B, -35, 0, 0, 0, EVT_SAVE_FLAG(1392));
                EVT_VAR(7) = EVT_VAR(0);
                SetNpcFlagBits(NPC_BZZAP, ((0x00000002)), TRUE);
                SetNpcFlagBits(NPC_BZZAP, ((NPC_FLAG_HAS_SHADOW)), FALSE);
                SetNpcPos(NPC_BZZAP, 35, 0, 0);
                SetNpcJumpscale(NPC_BZZAP, 1.0);
                spawn {
                    NpcJump0(NPC_BZZAP, -53, 0, 0, 25);
                    NpcJump0(NPC_BZZAP, -73, 0, 0, 15);
                    NpcJump0(NPC_BZZAP, -83, 0, 0, 8);
                }
                loop 53 {
                    GetNpcPos(NPC_BZZAP, EVT_VAR(1), EVT_VAR(2), EVT_VAR(3));
                    SetItemPos(EVT_VAR(7), EVT_VAR(1), EVT_VAR(2), EVT_VAR(3));
                    sleep 1;
                }
                SetNpcPos(NPC_BZZAP, 0, -1000, 0);
                SetNpcFlagBits(NPC_BZZAP, ((0x00000002)), FALSE);
                SetNpcFlagBits(NPC_BZZAP, ((NPC_FLAG_HAS_SHADOW)), TRUE);
            } else {
                ShowMessageAtWorldPos(MESSAGE_ID(0x11, 0x00DE), 35, 35, 0);
            }
        } else {
            await N(80240E84);
            RemoveItemAt(EVT_VAR(1));
            ShowMessageAtWorldPos(MESSAGE_ID(0x11, 0x00DC), 35, 35, 0);
            RandInt(1, EVT_VAR(1));
            if (EVT_VAR(1) == 0) {
                SetNpcJumpscale(NPC_BZZAP, 0.0);
                NpcFacePlayer(NPC_BZZAP, 0);
                sleep 1;
                SetNpcPos(NPC_BZZAP, 30, 0, 0);
                SetNpcAnimation(NPC_BZZAP, NPC_ANIM_bzzap_Palette_00_Anim_1);
                NpcJump0(NPC_BZZAP, 30, 60, 0, 20);
                sleep 10;
                SetNpcAnimation(NPC_BZZAP, NPC_ANIM_bzzap_Palette_00_Anim_4);
                GetPlayerPos(EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
                EVT_VAR(1) += 20;
                NpcJump0(NPC_BZZAP, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), 5);
                EVT_MAP_VAR(10) = 1;
            } else {
                SetNpcPos(NPC_DAYZEE, 30, 0, 0);
                SetNpcAnimation(NPC_DAYZEE, NPC_ANIM_dayzee_Palette_00_Anim_E);
                GetPlayerPos(EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
                EVT_VAR(1) += 20;
                SetNpcJumpscale(NPC_DAYZEE, 2.0);
                NpcJump0(NPC_DAYZEE, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), 20);
                EVT_MAP_VAR(11) = 1;
            }
        }
    }
    DisablePlayerInput(FALSE);
});

EvtSource N(80241528) = SCRIPT({
    bind_padlock N(80241028) TRIGGER_WALL_PRESS_A 9 N(itemList_80240E10);
    if (EVT_SAVE_FLAG(1395) == 1) {
        MakeItemEntity(ITEM_FLOWER_SAVER_B, -83, 0, 0, 0, EVT_SAVE_FLAG(1392));
    }
});

static s32 N(pad_1594)[] = {
    0x00000000, 0x00000000, 0x00000000,
};

void playFX_82();

ApiStatus N(func_80240000_CEC240)(Evt* script, s32 isInitialCall) {
    playFX_82(1, 0, 0, 0, 0, 0);
    return ApiStatus_DONE2;
}
