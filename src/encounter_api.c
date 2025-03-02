#include "common.h"
#include "map.h"
#include "effects.h"

ApiStatus SetEncounterStatusFlags(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    EncounterStatus* currentEncounter = &gCurrentEncounter;
    s32 a0 = *args++;

    if (evt_get_variable(script, *args)) {
        currentEncounter->flags |= a0;
    } else {
        currentEncounter->flags &= ~a0;
    }

    return ApiStatus_DONE2;
}

ApiStatus IsStartingConversation(Evt* script, s32 isInitialCall) {
    Bytecode arg1 = *script->ptrReadPos;

    evt_set_variable(script, arg1, is_starting_conversation());
    return ApiStatus_DONE2;
}

ApiStatus func_80044238(Evt* script, s32 isInitialCall) {
    func_80072BCC(evt_get_variable(script, *script->ptrReadPos));
    return ApiStatus_DONE2;
}

ApiStatus LoadDemoBattle(Evt* script, s32 isInitialCall) {
    load_demo_battle(evt_get_variable(script, *script->ptrReadPos));
    return ApiStatus_DONE2;
}

ApiStatus func_80044290(Evt* script, s32 isInitialCall) {
    return ApiStatus_DONE2;
}

ApiStatus MakeNpcs(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    if (isInitialCall) {
        script->functionTemp[0] = 0;
    }

    switch (script->functionTemp[0]) {
        case 0:
            make_npcs(evt_get_variable(script, *args++), gGameStatusPtr->mapID, evt_get_variable(script, *args++));
            script->functionTemp[0] = 1;
            break;
        case 1:
            if (gGameState != script->functionTemp[0]) {
                return ApiStatus_DONE2;
            }
    }

    return ApiStatus_BLOCK;
}

INCLUDE_ASM(s32, "encounter_api", RemoveNpc, Evt* script, s32 isInitialCall);

INCLUDE_ASM(s32, "encounter_api", RemoveEncounter, Evt* script, s32 isInitialCall);

ApiStatus GetBattleOutcome(Evt* script, s32 isInitialCall) {
    evt_set_variable(script, *script->ptrReadPos, gCurrentEncounter.battleOutcome);
    return ApiStatus_DONE2;
}

ApiStatus func_800445A8(Evt* script, s32 isInitialCall) {
    evt_set_variable(script, *script->ptrReadPos, script->owner1.enemy->unk_C4);
    return ApiStatus_DONE2;
}

ApiStatus func_800445D4(Evt* script, s32 isInitialCall) {
    evt_set_variable(script, *script->ptrReadPos, script->owner1.enemy->unk_C8);
    return ApiStatus_DONE2;
}

ApiStatus GetOwnerEncounterTrigger(Evt* script, s32 isInitialCall) {
    evt_set_variable(script, *script->ptrReadPos, script->owner1.enemy->encountered);
    return ApiStatus_DONE2;
}

ApiStatus DoNpcDefeat(Evt* script, s32 isInitialCall) {
    Enemy* owner = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(owner->npcID);
    Evt* newScript;

    kill_script(script);
    npc->currentAnim.w = owner->animList[6];
    newScript = start_script(&SCRIPT_NpcDefeat, 10, 0);
    owner->defeatScript = newScript;
    owner->defeatScriptID = newScript->id;
    newScript->owner1.enemy = owner;
    newScript->owner2.npcID = owner->npcID;
    newScript->groupFlags = owner->scriptGroup;

    return ApiStatus_FINISH;
}

INCLUDE_ASM(s32, "encounter_api", start_battle);

ApiStatus StartBattle(Evt* script, s32 isInitialCall) {
    start_battle(script, -1);
    return ApiStatus_DONE1;
}

ApiStatus StartBattleWith(Evt* script, s32 isInitialCall) {
    start_battle(script, evt_get_variable(script, *script->ptrReadPos));
    return ApiStatus_DONE1;
}

INCLUDE_ASM(s32, "encounter_api", StartBossBattle, Evt* script, s32 isInitialCall);

ApiStatus SetBattleMusic(Evt* script, s32 isInitialCall) {
    Bytecode songID = evt_get_variable(script, *script->ptrReadPos);
    EncounterStatus* currentEncounter = &gCurrentEncounter;

    currentEncounter->allowFleeing = 1;
    currentEncounter->songID = songID;
    currentEncounter->unk_18 = -1;
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "encounter_api", BindNpcAI, Evt* script, s32 isInitialCall);

ApiStatus BindNpcIdle(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* owner = script->owner1.enemy;
    NpcID npcID = evt_get_variable(script, *args++);
    Bytecode* aiBytecode = (Bytecode*)evt_get_variable(script, *args);

    if (npcID == NPC_SELF) {
        npcID = owner->npcID;
    }

    owner = get_enemy(npcID);
    owner->aiBytecode = aiBytecode;

    return ApiStatus_DONE2;
}

ApiStatus RestartNpcAI(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    NpcID npcId = evt_get_variable(script, *args++);
    Evt* newScript;
    s32 groupFlags;

    if (npcId == NPC_SELF) {
        npcId = npc->npcID;
    }

    npc = get_enemy(npcId);

    if (npc->flags & 1) {
        groupFlags = 10;
    } else {
        groupFlags = 11;
    }

    if (npc->aiScript != NULL) {
        kill_script_by_ID(npc->aiScriptID);
    }

    npc->unk_C8 = 100;
    newScript = start_script(npc->aiBytecode, 10, 0);
    npc->aiScript = newScript;
    npc->aiScriptID = newScript->id;
    newScript->owner1.enemy = npc;
    newScript->owner2.npc = script->owner2.npc;
    newScript->groupFlags = groupFlags;

    return ApiStatus_DONE2;
}

ApiStatus EnableNpcAI(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    NpcID npcId = evt_get_variable(script, *args++);
    s32 var2 = evt_get_variable(script, *args);

    if (npcId == NPC_SELF) {
        npcId = npc->npcID;
    }

    npc = get_enemy(npcId);

    if (var2 != 0) {
        if (npc->aiScript != NULL) {
            resume_all_script(npc->aiScriptID);
        }
    } else if (npc->aiScript != NULL) {
        suspend_all_script(npc->aiScriptID);
    }

    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "encounter_api", SetNpcAux, Evt* script, s32 isInitialCall);

ApiStatus BindNpcAux(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    NpcID npcId = evt_get_variable(script, *args++);
    Bytecode* auxBytecode = (Bytecode*)evt_get_variable(script, *args);

    if (npcId == NPC_SELF) {
        npcId = npc->npcID;
    }

    npc = get_enemy(npcId);
    npc->auxBytecode = auxBytecode;

    return ApiStatus_DONE2;
}

ApiStatus RestartNpcAux(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    NpcID npcID = evt_get_variable(script, *args++);
    Evt* newScript;
    s32 groupFlags;

    if (npcID == NPC_SELF) {
        npcID = npc->npcID;
    }

    npc = get_enemy(npcID);

    if (npc->flags & 1) {
        groupFlags = 10;
    } else {
        groupFlags = 11;
    }

    if (npc->auxScript != NULL) {
        kill_script_by_ID(npc->auxScriptID);
    }

    newScript = start_script(npc->auxBytecode, 10, 0);
    npc->auxScript = newScript;
    npc->auxScriptID = newScript->id;
    newScript->owner1.enemy = npc;
    newScript->owner2.npcID = npcID;
    newScript->groupFlags = groupFlags;

    return ApiStatus_DONE2;
}

ApiStatus EnableNpcAux(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    NpcID npcId = evt_get_variable(script, *args++);
    s32 var2 = evt_get_variable(script, *args);

    if (npcId == NPC_SELF) {
        npcId = npc->npcID;
    }

    npc = get_enemy(npcId);

    if (var2 != 0) {
        if (npc->auxScript != NULL) {
            resume_all_script(npc->auxScriptID);
        }
    } else if (npc->auxScript != NULL) {
        suspend_all_script(npc->auxScriptID);
    }

    return ApiStatus_DONE2;
}

ApiStatus BindNpcInteract(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    NpcID npcId = evt_get_variable(script, *args++);
    Bytecode* interactBytecode = (Bytecode*)evt_get_variable(script, *args);

    if (npcId == NPC_SELF) {
        npcId = npc->npcID;
    }

    npc = get_enemy(npcId);

    if (npc->interactScript != NULL) {
        kill_script_by_ID(npc->interactScriptID);
    }
    npc->interactBytecode = interactBytecode;

    return ApiStatus_DONE2;
}

ApiStatus BindNpcHit(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    NpcID npcId = evt_get_variable(script, *args++);
    Bytecode* hitBytecode = (Bytecode*)evt_get_variable(script, *args);

    if (npcId == NPC_SELF) {
        npcId = npc->npcID;
    }

    npc = get_enemy(npcId);

    if (npc->hitScript != NULL) {
        kill_script_by_ID(npc->hitScriptID);
    }
    npc->hitBytecode = hitBytecode;

    return ApiStatus_DONE2;
}

ApiStatus BindNpcDefeat(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    s32 npcId = evt_get_variable(script, *args++);
    Bytecode* defeatBytecode = (Bytecode*)evt_get_variable(script, *args);

    if (npcId == -1) {
        npcId = npc->npcID;
    }

    npc = get_enemy(npcId);
    npc->defeatBytecode = defeatBytecode;

    return ApiStatus_DONE2;
}

ApiStatus SetSelfVar(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* owner = script->owner1.enemy;
    s32 var1 = evt_get_variable(script, *args++);
    s32 var2 = evt_get_variable(script, *args);

    owner->varTable[var1] = var2;
    return ApiStatus_DONE2;
}

ApiStatus GetSelfVar(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    evt_set_variable(script, *args, script->owner1.enemy->varTable[evt_get_variable(script, *args++)]);
    return ApiStatus_DONE2;
}

ApiStatus SetNpcVar(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    NpcID npcId = evt_get_variable(script, *args++);
    s32 varIdx = evt_get_variable(script, *args++);
    s32 val = evt_get_variable(script, *args);

    if (npcId == NPC_SELF) {
        npcId = npc->npcID;
    }

    npc = get_enemy(npcId);
    npc->varTable[varIdx] = val;

    return ApiStatus_DONE2;
}

ApiStatus GetNpcVar(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    NpcID npcID = evt_get_variable(script, *args++);
    s32 varIdx = evt_get_variable(script, *args++);
    s32 var3 = *args;

    if (npcID == NPC_SELF) {
        npcID = npc->npcID;
    }

    npc = get_enemy(npcID);
    evt_set_variable(script, var3, npc->varTable[varIdx]);

    return ApiStatus_DONE2;
}

ApiStatus SetSelfRotation(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Npc* self = get_npc_unsafe(script->owner2.npcID);
    s32 rotX = evt_get_variable(script, *args++);
    s32 rotY = evt_get_variable(script, *args++);
    s32 rotZ = evt_get_variable(script, *args++);

    self->rotation.x = rotX;
    self->rotation.y = rotY;
    self->rotation.z = rotZ;

    return ApiStatus_DONE2;
}

ApiStatus SetSelfEnemyFlags(Evt* script, s32 isInitialCall) {
    script->owner1.enemy->flags = *script->ptrReadPos;
    return ApiStatus_DONE2;
}

ApiStatus SetSelfEnemyFlagBits(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* owner = script->owner1.enemy;
    s32 bits = *args++;

    if (evt_get_variable(script, *args)) {
        owner->flags |= bits;
    } else {
        owner->flags &= ~bits;
    }
    return ApiStatus_DONE2;
}

ApiStatus SyncOverrideEnemyPos(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* owner = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(script->owner2.npcID);

    owner->unk_07 = evt_get_variable(script, *args);
    owner->unk_10.x = npc->pos.x;
    owner->unk_10.y = npc->pos.y;
    owner->unk_10.z = npc->pos.z;

    return ApiStatus_DONE2;
}

ApiStatus GetSelfNpcID(Evt* script, s32 isInitialCall) {
    evt_set_variable(script, *script->ptrReadPos, script->owner1.enemy->npcID);
    return ApiStatus_DONE2;
}

ApiStatus ClearDefeatedEnemies(Evt* script, s32 isInitialCall) {
    EncounterStatus* currentEncounter = &gCurrentEncounter;
    s32 i;
    s32 j;

    for (i = 0; i < ARRAY_COUNT(currentEncounter->defeatFlags); i++) {
        for (j = 0; j < ARRAY_COUNT(currentEncounter->defeatFlags[0]); j++) {
            currentEncounter->defeatFlags[i][j] = 0;
        }
    }
    return ApiStatus_DONE2;
}

ApiStatus SetEnemyFlagBits(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* npc = script->owner1.enemy;
    NpcID npcId = evt_get_variable(script, *args++);
    s32 bits = *args++;
    s32 var2 = evt_get_variable(script, *args);

    if (npcId == NPC_SELF) {
        npcId = npc->npcID;
    }

    npc = get_enemy(npcId);

    if (var2 != NULL) {
        npc->flags |= bits;
    } else {
        npc->flags &= ~bits;
    }

    return ApiStatus_DONE2;
}

ApiStatus func_8004572C(Evt* script, s32 isInitialCall) {
    return ApiStatus_DONE2;
}

ApiStatus GetSelfAnimationFromTable(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Enemy* owner = script->owner1.enemy;

    evt_set_variable(script, *args, owner->animList[evt_get_variable(script, *args++)]);
    return ApiStatus_DONE2;
}

ApiStatus func_80045798(Evt* script, s32 isInitialCall) {
    gPartnerActionStatus.unk_358 = evt_get_variable(script, *script->ptrReadPos);
    return ApiStatus_DONE2;
}

ApiStatus func_800457C4(Evt* script, s32 isInitialCall) {
    Enemy* ownerActor = script->owner1.enemy;

    ownerActor->unk_B5 = evt_get_variable(script, *script->ptrReadPos);
    return ApiStatus_DONE2;
}

ApiStatus func_800457F8(Evt* script, s32 isInitialCall) {
    gCurrentEncounter.unk_12 = 1;
    return ApiStatus_DONE2;
}

ApiStatus GetEncounterTriggerHitTier(Evt* script, s32 isInitialCall) {
    evt_set_variable(script, *script->ptrReadPos, gCurrentEncounter.hitTier);
    return ApiStatus_DONE2;
}

ApiStatus func_80045838(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 var1 = evt_get_variable(script, *args++);
    s32 var2 = evt_get_variable(script, *args++);
    s32 var3 = evt_get_variable(script, *args);
    Npc* npc = resolve_npc(script, var1);

    if (npc == NULL) {
        return ApiStatus_DONE2;
    }

    ai_enemy_play_sound(npc, var2, var3);
    return ApiStatus_DONE2;
}

ApiStatus func_800458CC(Evt* script, s32 isInitialCall) {
    evt_set_variable(script, *script->ptrReadPos, script->owner1.enemy->npcSettings->unk_2A & 8);
    return ApiStatus_DONE2;
}

ApiStatus func_80045900(Evt* script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);
    s32 var0 = evt_get_variable(script, *script->ptrReadPos);

    enemy->unk_B0 |= 4;

    if (var0 == 0) {
        s32 unk;

        if (!(enemy->unk_B0 & 0x10)) {
            npc->currentAnim.w = *enemy->animList;
        }

        if (!(enemy->unk_B0 & 0x8)) {
            fx_emote(2, npc, 0.0f, npc->collisionHeight, 1.0f, 0.0f, -20.0f, 40, &unk);
        }

        if ((npc->flags & 0xA08) == 0x808) {
            f32 x = npc->pos.x;
            f32 y = npc->pos.y + npc->collisionHeight;
            f32 z = npc->pos.z;
            f32 a = 100.0f;

            if (npc_raycast_down_sides(npc->unk_80, &x, &y, &z, &a) != 0) {
                npc->pos.y = y;
            }
            npc->flags &= ~0x800;
        }
    }

    return ApiStatus_DONE2;
}

ApiStatus SetTattleMsg(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    NpcID enemyId = evt_get_variable(script, *args++);
    u32 tattleMsg = evt_get_variable(script, *args);
    Enemy* npc = get_enemy(enemyId);

    npc->tattleMsg = tattleMsg;
    return ApiStatus_DONE2;
}
