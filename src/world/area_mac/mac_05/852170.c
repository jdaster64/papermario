#include "mac_05.h"

static char* N(exit_str_0) = "mac_04";
static char* N(exit_str_1) = "kgr_01";

#define UNK_ALPHA_FUNC_NPC 6

#include "world/common/UnkTexturePanFunc.inc.c"

#include "world/common/UnkTexturePanFunc2.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_8024030C_85247C);

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_8024047C_8525EC);

#include "world/common/UnkNpcAIFunc24.inc.c"

#include "world/common/UnkFunc13.inc.c"

#include "world/common/UnkNpcAIFunc1.inc.c"

#include "world/common/UnkFunc14.inc.c"

#include "world/common/UnkNpcAIFunc25.inc.c"

#include "world/common/NpcJumpFunc2.inc.c"

#include "world/common/NpcJumpFunc.inc.c"

#include "world/common/UnkNpcAIFunc13.inc.c"

#include "world/common/UnkFunc15.inc.c"

#include "world/common/UnkNpcDurationFlagFunc.inc.c"

#include "world/common/UnkFunc16.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80241024_853194);
/*
ApiStatus N(func_80241024_853194)(Evt* script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);
    Bytecode* args = script->ptrReadPos;
    EnemyTerritoryThing territory;
    EnemyTerritoryThing* territoryPtr = &territory;
    NpcAISettings* npcAISettings = (NpcAISettings*)evt_get_variable(script, *args++);
    f32 posX, posY, posZ, posW;

    territory.unk_00 = 0;
    territory.shape = enemy->territory->patrol.detectShape;
    territory.pointX = enemy->territory->patrol.detect.x;
    territory.pointZ = enemy->territory->patrol.detect.z;
    territory.sizeX = enemy->territory->patrol.detectSizeX;
    territory.sizeZ = enemy->territory->patrol.detectSizeZ;
    territory.unk_18 = 65.0f;
    territory.unk_1C = 0;

    if (isInitialCall || enemy->unk_B0 & 4) {
        script->functionTemp[0] = 0;
        npc->duration = 0;
        npc->currentAnim = enemy->animList[0];
        npc->flags &= ~0x800;
        if (!enemy->territory->patrol.isFlying) {
            npc->flags = (npc->flags | 0x200) & ~8;
        } else {
            npc->flags = (npc->flags & ~0x200) | 8;
        }

        if (enemy->unk_B0 & 4) {
            script->functionTemp[0] = 99;
            script->functionTemp[1] = 0;
            enemy->unk_B0 &= ~4;
        } else if (enemy->flags & 0x40000000) {
            script->functionTemp[0] = 12;
            enemy->flags &= ~0x40000000;
        }

        posX = npc->pos.x;
        posY = npc->pos.y + npc->collisionHeight;
        posZ = npc->pos.z;
        posW = 100.0f;

        if (npc_raycast_down_sides(npc->unk_80, &posX, &posY, &posZ, &posW)) {
            npc->pos.y = posY;
        }
    }

    switch (script->functionTemp[0]) {
        case 0:
#include "world/common/UnkNpcAIFunc24.inc.c"
        case 1:
            N(func_802405E8_852758)(script, npcAISettings, territoryPtr);
            break;
        case 2:
            N(UnkNpcAIFunc1)(script, npcAISettings, territoryPtr);
        case 3:
            N(func_80240950_852AC0)(script, npcAISettings, territoryPtr);
            break;
        case 4:
#include "world/common/UnkNpcAIFunc25.inc.c"
            break;
        case 10:
            N(NpcJumpFunc2)(script, npcAISettings, territoryPtr);
        case 11:
            N(NpcJumpFunc)(script, npcAISettings, territoryPtr);
            break;
        case 12:
            N(UnkNpcAIFunc13)(script, npcAISettings, territoryPtr);
        case 13:
            N(func_80240DDC_852F4C)(script, npcAISettings, territoryPtr);
            break;
        case 14:
            N(UnkNpcDurationFlagFunc)(script, npcAISettings, territoryPtr);
            break;
        case 15:
            N(func_80240F64_8530D4)(script, npcAISettings, territoryPtr);
            break;
        case 99:
            func_8004A73C(script);
    }
    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80241320_853490);
/*
ApiStatus N(func_80241320_853490)(Evt* script, s32 isInitialCall) {
    s32 i;

    if (N(D_802450B0_857220) == NULL) {
        N(D_802450B0_857220) = heap_malloc(16 * sizeof(s32));
        for (i = 0; i < 16; i++) {
            N(D_802450B0_857220)[i] = script->varTable[i];
        }
    } else {
        for (i = 0; i < 16; i++) {
            script->varTable[i] = N(D_802450B0_857220)[i];
        }
        heap_free(N(D_802450B0_857220));
        N(D_802450B0_857220) = NULL;
    }
    return ApiStatus_DONE2;
}
*/

#include "world/common/GetItemName.inc.c"

#include "world/common/Set80151310.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_8024145C_8535CC);
/*
ApiStatus N(func_8024145C_8535CC)(Evt *script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemyID;
    u16 phi_s0 = evt_get_variable(script, EVT_SAVE_FLAG(1768));
    u16 phi_s7 = evt_get_variable(script, EVT_SAVE_FLAG(1769));
    u16 temp_s6 = evt_get_variable(script, EVT_SAVE_VAR(350));
    u16 phi_s5 = evt_get_variable(script, EVT_SAVE_VAR(351));
    s32 var;
    s32 i;

    s32 test2;
    u16 temp_s3 = (enemy->varTable[0] & 0xFF0000) >> 16;
    u16 sp_10 = (enemy->varTable[0] & 0xFF0000) >> 16;
    u16 temp_s2 = (enemy->varTable[0] & 0xFF00) >> 8;
    u16 sp_1e = (enemy->varTable[0] & 0xFF) >> 0;
    s32 temp_v0;
    s32 temp_s0_2;

    if (temp_s3 != temp_s6) {
        phi_s7 = 0;
        phi_s0 = 0;
    }

    if (phi_s0 == 0) {
        if (rand_int(100) < 30) {
            phi_s5 = rand_int(temp_s2 - 1);
            temp_s6 = temp_s3;
            evt_set_variable(script, EVT_SAVE_VAR(350), temp_s6);
            evt_set_variable(script, EVT_SAVE_VAR(351), phi_s5);
            phi_s0 = 1;
        }
    }

    evt_set_variable(script, EVT_SAVE_FLAG(1768), phi_s0);
    evt_set_variable(script, EVT_SAVE_FLAG(1769), phi_s7);
    temp_s0_2 = evt_get_variable(NULL, EVT_SAVE_VAR(352));
    temp_v0 = evt_get_variable(NULL, EVT_STORY_PROGRESS);

    for (i = 0; i < 8; i++) {
        if (temp_v0 < (*(N(quizRequirements) + i)).unk_00) {
            break;
        }
    }

    temp_v0 = temp_s0_2 < (*(N(quizRequirements) + i)).unk_04;
    test2 = var = temp_v0;

    if ((((sp_10 == temp_s6) && (sp_1e == phi_s5) && (phi_s7 == 0) && test2)) ||
        ((gGameStatusPtr->unk_75 != 0) && var)) {
        script->varTable[0] = 1;
    } else {
        kill_enemy(enemy);
        script->varTable[0] = 0;
    }

    return ApiStatus_DONE2;
}
*/

#include "world/common/UnkFunc31.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80241A0C_853B7C);
/*
ApiStatus N(func_80241A0C_853B7C)(Evt *script, s32 isInitialCall) {
    PlayerData* playerData = &gPlayerData;
    u16 quizzesAnswered = gPlayerData.quizzesAnswered;

    if (quizzesAnswered < 0x3E7) {
        playerData->quizzesAnswered++;
    }

    if (script->varTable[0] == N(quizAnswers)[evt_get_variable(NULL, EVT_SAVE_VAR(352))]) {
        script->varTable[0] = 1;
        playerData->quizzesCorrect++;
    } else {
        script->varTable[0] = 0;
    }

    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80241A90_853C00);
/*
ApiStatus N(func_80241A90_853C00)(Evt *script, s32 isInitialCall) {
    EffectInstanceDataThing* effectPtr;

    if (isInitialCall) {
        Effect** effect = &D_8024DFE0;

        *effect = playFX_4E(0, evt_get_variable(script, EVT_ARRAY(1)), evt_get_variable(script, EVT_ARRAY(2)), evt_get_variable(script, EVT_ARRAY(3)));
        D_8024DFE4 = playFX_54(0, evt_get_variable(script, EVT_ARRAY(1)), evt_get_variable(script, EVT_ARRAY(2)), evt_get_variable(script, EVT_ARRAY(3)));
        D_8024DFE8 = playFX_80(0, evt_get_variable(script, EVT_ARRAY(1)), evt_get_variable(script, EVT_ARRAY(2)), evt_get_variable(script, EVT_ARRAY(3)), 1.0f, 0);

        effectPtr = (*effect)->unk_0C;
        effectPtr->unk_18 = 0;
        effectPtr->unk_20 = 0;
        effectPtr->unk_24.s = 0;
        effectPtr->unk_28 = 0;
        effectPtr->unk_1C = 0;
    }

    effectPtr = D_8024DFE0->unk_0C;

    effectPtr->unk_20 += 10;
    effectPtr->unk_28 += 10;
    effectPtr->unk_24.s += 10;
    effectPtr->unk_18 += 10;
    effectPtr->unk_1C += 10;
    if (effectPtr->unk_18 >= 255) {
        effectPtr->unk_18 = 255;
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80241CA8_853E18);
/*
ApiStatus N(func_80241CA8_853E18)(Evt *script, s32 isInitialCall) {
    EffectInstanceDataThing* effectPtr;

    if (isInitialCall) {
        D_8024DFE4->flags |= 0x10;
        D_8024DFE8->flags |= 0x10;
    }

    effectPtr = D_8024DFE0->unk_0C;
    effectPtr->unk_18 -= 10;
    effectPtr->unk_20 -= 10;
    effectPtr->unk_24.s -= 10;
    effectPtr->unk_28 -= 10;
    effectPtr->unk_1C -= 10;

    if (effectPtr->unk_18 <= 0) {
        effectPtr->unk_18 = 0;
        remove_effect(D_8024DFE0, effectPtr);
        free_generic_entity(D_8024DFC0);
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80241D5C_853ECC);
/*
ApiStatus N(func_80241D5C_853ECC)(Evt *script, s32 isInitialCall) {
    D_8024DFE0->unk_0C->unk_34 = evt_get_variable(script, *script->ptrReadPos);
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80241D90_853F00);
/*
ApiStatus N(func_80241D90_853F00)(Evt *script, s32 isInitialCall) {
    s32 var = evt_get_variable(script, *script->ptrReadPos);
    EffectInstanceDataThing* effectPtr = D_8024DFE0->unk_0C;

    switch (var) {
        case 0:
            effectPtr->unk_38 = 0xC0;
            break;
        case 1:
            effectPtr->unk_38 = 0x80;
            break;
        case 2:
            effectPtr->unk_38 = 0x40;
            break;
        default:
            effectPtr->unk_38 = 0;
            break;
    }

    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80241E10_853F80);
/*
ApiStatus N(func_80241E10_853F80)(Evt *script, s32 isInitialCall) {
    D_8024DFE8->unk_0C->unk_1C = 0;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80241E28_853F98);
/*
ApiStatus N(func_80241E28_853F98)(Evt *script, s32 isInitialCall) {
    D_8024DFE8->unk_0C->unk_1C = 1;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80241E44_853FB4);
/*
ApiStatus N(func_80241E44_853FB4)(Evt *script, s32 isInitialCall) {
    D_8024DFE8->unk_0C->unk_1C = 2;
    return ApiStatus_DONE2;
}
*/

#include "world/common/GetGameStatus75.inc.c"

#include "world/common/SetCamVfov.inc.c"

#include "world/common/GetCamVfov.inc.c"

#include "world/common/UnkCameraFunc.inc.c"

#include "world/common/UnkRotatePlayer.inc.c"

#include "world/common/UnkPartnerFuncs.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80242318_854488);
/*
void N(func_80242318_854488)(void) {
    s32 var = evt_get_variable(NULL, D_8024DFD8);

    if (var == 1) {
        playFX_50(0, 0, 0, 0);
    } else if (var == 2) {
        playFX_50(1, 0, 0, 0);
    }
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80242384_8544F4);
/*
ApiStatus N(func_80242384_8544F4)(Evt *script, s32 isInitialCall) {
    D_8024DFC0 = create_generic_entity_frontUI(NULL, N(func_80242468_95D668));
    return ApiStatus_DONE2;
}
*/

#include "world/common/GetNpcCollisionHeight.inc.c"

#include "world/common/AddPlayerHandsOffset.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_802425E0_854750);
/*
ApiStatus N(func_802425E0_854750)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    if (isInitialCall) {
        N(D_802476D8_859848) = FALSE;
    }

    if (N(D_802476D8_859848)) {
        N(D_802476D8_859848) = FALSE;
        evt_set_variable(script, *args, N(D_802476DC_85984C));
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80242634_8547A4);
/*
ApiStatus N(func_80242634_8547A4)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    N(D_802476DC_85984C) = evt_get_variable(script, *args);
    N(D_802476D8_859848) = TRUE;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_8024266C_8547DC);
/*
ApiStatus N(func_8024266C_8547DC)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* ptr = evt_get_variable(script, *args);
    s32 i;

    if (ptr != NULL) {
        for (i = 0; ptr[i] != 0; i++) {
            N(D_80244A20)[i] = ptr[i];
        }
        N(D_80244A20)[i] = 0;
    } else {
        for (i = 0; i < 0x70; i++) {
            N(D_80244A20)[i] = i + 16;
            N(D_80244A20)[112] = 0;
        }
    }
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80242708_854878);
/*
ApiStatus N(func_80242708_854878)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* ptr = evt_get_variable(script, *args);
    s32 i;

    if (ptr != NULL) {
        for (i = 0; ptr[i] != 0; i++) {
            N(D_80244A20)[i] = ptr[i];
        }
        N(D_80244A20)[i] = 0;
    } else {
        for (i = 0; i < 0x70; i++) {
            N(D_80244A20)[i] = i + 16;
            N(D_80244A20)[112] = 0;
        }
    }
    return ApiStatus_DONE2;
}
*/

#include "world/common/SetManyVars.inc.c"

#include "world/common/UnkYawFunc.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80242A20_854B90);
/*
ApiStatus N(func_80242A20_854B90)(Evt *script, s32 isInitialCall) {
    Npc *npc = get_npc_unsafe(script->varTable[2]);

    D_8024E1B4 = npc->currentAnim;
    npc->currentAnim = script->varTable[4];
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80242A64_854BD4);
/*
ApiStatus N(func_80242A64_854BD4)(Evt *script, s32 isInitialCall) {
    get_npc_unsafe(script->varTable[2])->currentAnim = D_8024E1B4;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80242A90_854C00);

static char* N(exit_str_2) = "mac_06";

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80242C78_854DE8);

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80242E84_854FF4);

#include "world/common/GetFloorCollider.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_802430B4_855224);

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_802431B0_855320);

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80243254_8553C4);

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_8024335C_8554CC);

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_80243380_8554F0);

INCLUDE_ASM(s32, "world/area_mac/mac_05/852170", func_802433BC_85552C);
