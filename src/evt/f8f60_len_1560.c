#include "common.h"

ApiStatus MakeLerp(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;

    script->varTable[0xC] = evt_get_variable(script, *ptrReadPos++); // start
    script->varTable[0xD] = evt_get_variable(script, *ptrReadPos++); // end
    script->varTable[0xF] = evt_get_variable(script, *ptrReadPos++); // duration
    script->varTable[0xB] = evt_get_variable(script, *ptrReadPos++); // easing type
    script->varTable[0xE] = 0; // elapsed

    return ApiStatus_DONE2;
}

ApiStatus UpdateLerp(Evt* script, s32 isInitialCall) {
    script->varTable[0x0] = (s32) update_lerp(
                                script->varTable[0xB],
                                script->varTable[0xC],
                                script->varTable[0xD],
                                script->varTable[0xE],
                                script->varTable[0xF]
                            );

    if (script->varTable[0xE] >= script->varTable[0xF]) {
        script->varTable[0x1] = 0; // finished
    } else {
        script->varTable[0x1] = 1; // lerping
    }
    script->varTable[0xE]++;

    return ApiStatus_DONE2;
}

ApiStatus RandInt(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;

    s32 max = evt_get_variable(script, *ptrReadPos++);
    Bytecode outVar = *ptrReadPos++;

    evt_set_variable(script, outVar, rand_int(max));

    return ApiStatus_DONE2;
}

ApiStatus GetAngleBetweenNPCs(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;

    NpcID aID = evt_get_variable(script, *ptrReadPos++);
    NpcID bID = evt_get_variable(script, *ptrReadPos++);
    Bytecode outVar = *ptrReadPos++;

    Npc* a = resolve_npc(script, aID);
    Npc* b = resolve_npc(script, bID);
    evt_set_variable(script, outVar, atan2(a->pos.x, a->pos.z, b->pos.x, b->pos.z));

    return ApiStatus_DONE2;
}

ApiStatus GetAngleToNPC(Evt* script, s32 isInitialCall) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    Bytecode* ptrReadPos = script->ptrReadPos;

    NpcID npcID = evt_get_variable(script, *ptrReadPos++);
    Bytecode outVar = *ptrReadPos++;

    Npc* npc = resolve_npc(script, npcID);
    evt_set_variable(script, outVar, atan2(playerStatus->position.x, playerStatus->position.z, npc->pos.x, npc->pos.z));

    return ApiStatus_DONE2;
}

ApiStatus GetAngleToPlayer(Evt* script, s32 isInitialCall) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    Bytecode* ptrReadPos = script->ptrReadPos;

    NpcID npcID = evt_get_variable(script, *ptrReadPos++);
    Bytecode outVar = *ptrReadPos++;

    Npc* npc = resolve_npc(script, npcID);
    evt_set_variable(script, outVar, atan2(npc->pos.x, npc->pos.z, playerStatus->position.x, playerStatus->position.z));

    return ApiStatus_DONE2;
}

ApiStatus AwaitPlayerApproach(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;
    PlayerStatus* playerStatus = &gPlayerStatus;

    s32* targetX = &script->functionTemp[0];
    s32* targetZ = &script->functionTemp[1];
    s32* distanceRequired = &script->functionTemp[2];

    f32 distance;

    if (isInitialCall) {
        *targetX = evt_get_variable(script, *ptrReadPos++);
        *targetZ = evt_get_variable(script, *ptrReadPos++);
        *distanceRequired = evt_get_variable(script, *ptrReadPos++);
    }

    distance = dist2D(
                   playerStatus->position.x, playerStatus->position.z,
                   *targetX, *targetZ
               );

    if (distance < *distanceRequired) {
        return ApiStatus_DONE2;
    } else {
        return ApiStatus_BLOCK;
    }
}

ApiStatus IsPlayerWithin(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;
    PlayerStatus* playerStatus = &gPlayerStatus;

    s32* targetX = &script->functionTemp[0];
    s32* targetZ = &script->functionTemp[1];
    s32* distanceRequired = &script->functionTemp[2];

    f32 distance;
    Bytecode outVar = EVT_VAR(0);

    if (isInitialCall) {
        *targetX = evt_get_variable(script, *ptrReadPos++);
        *targetZ = evt_get_variable(script, *ptrReadPos++);
        *distanceRequired = evt_get_variable(script, *ptrReadPos++);
        outVar = *ptrReadPos++;
    }

    distance = dist2D(
                   playerStatus->position.x, playerStatus->position.z,
                   *targetX, *targetZ
               );

    evt_set_variable(script, outVar, 0);
    if (distance < *distanceRequired) {
        evt_set_variable(script, outVar, 1);
    }

    return ApiStatus_DONE2;
}

ApiStatus AwaitPlayerLeave(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;
    PlayerStatus* playerStatus = &gPlayerStatus;

    s32* targetX = &script->functionTemp[0];
    s32* targetZ = &script->functionTemp[1];
    s32* distanceRequired = &script->functionTemp[2];

    f32 distance;

    if (isInitialCall) {
        *targetX = evt_get_variable(script, *ptrReadPos++);
        *targetZ = evt_get_variable(script, *ptrReadPos++);
        *distanceRequired = evt_get_variable(script, *ptrReadPos++);
    }

    distance = dist2D(
                   playerStatus->position.x, playerStatus->position.z,
                   *targetX, *targetZ
               );

    if (distance > *distanceRequired) {
        return ApiStatus_DONE2;
    } else {
        return ApiStatus_BLOCK;
    }
}

ApiStatus AddVectorPolar(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;

    Bytecode xVar = *ptrReadPos++;
    f32 x = evt_get_float_variable(script, xVar);

    Bytecode yVar = *ptrReadPos++;
    f32 y = evt_get_float_variable(script, yVar);

    f32 r = evt_get_float_variable(script, *ptrReadPos++);

    add_vec2D_polar(&x, &y, r, evt_get_float_variable(script, *ptrReadPos++));

    evt_set_float_variable(script, xVar, x);
    evt_set_float_variable(script, yVar, y);

    return ApiStatus_DONE2;
}

ApiStatus func_802D4BDC(Evt* script, s32 initialCall) {
    s32* t0 = &script->functionTemp[0];
    s32* t1 = &script->functionTemp[1];
    s32 t1v;

    if (initialCall) {
        *t0 = 0;
        *t1 = 0;
    }

    if (*t0 == 0) {
        t1v = *t1;
        if (t1v == 255) {
            return ApiStatus_DONE2;
        }

        t1v += 10;
        *t1 = t1v;
        if (t1v > 255) {
            *t1 = 255;
        }

        set_screen_overlay_params_back(10, *t1);
    }

    return ApiStatus_BLOCK;
}

ApiStatus func_802D4C4C(Evt* script, s32 initialCall) {
    s32* t0 = &script->functionTemp[0];
    s32* t1 = &script->functionTemp[1];
    s32 t1v;

    if (initialCall) {
        *t0 = 0;
        *t1 = 255;
    }

    if (*t0 == 0) {
        t1v = *t1;
        if (t1v == 0) {
            set_screen_overlay_params_back(255, -1.0f);
            return ApiStatus_DONE2;
        }
        t1v -= 10;
        *t1 = t1v;
        if (t1v < 0) {
            *t1 = 0;
        }
        set_screen_overlay_params_back(10, *t1);
    }

    return ApiStatus_BLOCK;
}

ApiStatus func_802D4CC4(Evt* script, s32 initialCall) {
    s32 value = evt_get_variable(script, *script->ptrReadPos);
    if (value < 0) {
        set_screen_overlay_params_back(255, -1.0f);
    } else {
        set_screen_overlay_params_back(10, value);
    }

    return ApiStatus_DONE2;
}

ApiStatus func_802D4D14(Evt* script, s32 initialCall) {
    s32 value = evt_get_float_variable(script, *script->ptrReadPos);

    set_screen_overlay_center(0, 0, 0xC, 0x14);
    set_screen_overlay_center(0, 1, 0x134, 0xDC);
    set_screen_overlay_params_front(0xC, value);

    return ApiStatus_DONE2;
}

ApiStatus func_802D4D88(Evt* script, s32 initialCall) {
    set_screen_overlay_params_front(0xC, 0);
    return ApiStatus_DONE2;
}

#ifdef NON_MATCHING
// most likely functionally equivalent, lots of issues though.
void load_path_data(s32 numVecs, f32* arg1, struct Vec3f* arg2, struct Vec3f* arg3) {
    struct Vec3f* temp_s4;
    f32* temp_s7;
    s32 i;
    f32* temp;
    f32 new_var;
    f32 new_var2;

    temp_s7 = heap_malloc(numVecs * sizeof(f32));
    temp_s4 = heap_malloc(numVecs * sizeof(Vec3f));
    arg1[0] = 0.0f;

    for (i = 1; i < numVecs; i++) {
        f32 temp_x = SQ(arg2[i].x - arg2[i - 1].x);
        f32 temp_y = SQ(arg2[i].y - arg2[i - 1].y);
        f32 temp_z = SQ(arg2[i].z - arg2[i - 1].z);
        arg1[i] = arg1[i - 1] + sqrtf(temp_x + temp_y + temp_z);
    }

    for (i = 1; i < numVecs; i++) {
        arg1[i] = arg1[i] / arg1[numVecs - 1];
    }

    arg3[0].x = 0;

    arg3[numVecs - 1].z = 0;
    arg3[0].z = 0;

    arg3[numVecs - 1].x = 0;

    arg3[0].y = 0;
    arg3[numVecs - 1].y = 0;

    for (i = 0; i < (numVecs - 1); i++) {
        f32 temp = temp_s7[i];
        temp_s7[i] = arg1[i + 1] - arg1[i];
        temp_s4[i + 1].x = ((arg2[i + 1].x - arg2[i].x) / temp_s7[i]);
        temp_s4[i + 1].y = ((arg2[i + 1].y - arg2[i].y) / temp);
        temp_s4[i + 1].z = ((arg2[i + 1].z - arg2[i].z) / temp);
    }

    arg3[1].x = temp_s4[2].x - temp_s4[1].x;
    arg3[1].y = temp_s4[2].y - temp_s4[1].y;
    arg3[1].z = temp_s4[2].z - temp_s4[1].z;
    temp_s4[1].x = ((arg1[2] - arg1[0]) * 2);
    temp_s4[1].y = ((arg1[2] - arg1[0]) * 2);
    temp_s4[1].z = ((arg1[2] - arg1[0]) * 2);

    for (i = 1; i < numVecs - 2; i++) {
        f32 temp_x = temp_s7[i] / temp_s4[i].x;
        f32 temp_y = temp_s7[i] / temp_s4[i].y;
        f32 temp_z = temp_s7[i] / temp_s4[i].z;
        new_var = arg3[i].x;
        arg3[i + 1].x = (temp_s4[i + 2].x - temp_s4[i].x) - (new_var * temp_x);
        arg3[i + 1].y = (temp_s4[i + 2].y - temp_s4[i].y) - (new_var * temp_y);
        arg3[i + 1].z = (temp_s4[i + 2].z - temp_s4[i].z) - (new_var * temp_z);
        temp_s4[i].x = ((arg1[i + 2] - arg1[i]) * 2) - (temp_s7[i] * temp_x);
        temp_s4[i].y = ((arg1[i + 2] - arg1[i]) * 2) - (temp_s7[i] * temp_y);
        temp_s4[i].z = ((arg1[i + 2] - arg1[i]) * 2) - (temp_s7[i] * temp_z);
    }

    arg3[numVecs - 2].x = arg3[numVecs - 2].x - (temp_s7[numVecs - 2] * arg3[numVecs - 1].x);
    arg3[numVecs - 2].y = arg3[numVecs - 2].y - (temp_s7[numVecs - 2] * arg3[numVecs - 1].y);
    arg3[numVecs - 2].z = arg3[numVecs - 2].z - (temp_s7[numVecs - 2] * arg3[numVecs - 1].z);

    for (i = (numVecs - 2); i > 0 ; i--) {
        arg3[i].x = (arg3[i].x - (temp_s7[i] * arg3[i + 1].x)) / temp_s4[i].x;
        arg3[i].y = (arg3[i].y - (temp_s7[i] * arg3[i + 1].y)) / temp_s4[i].y;
        arg3[i].z = (arg3[i].z - (temp_s7[i] * arg3[i + 1].z)) / temp_s4[i].z;
    }

    heap_free(temp_s7);
    heap_free(temp_s4);
}
#else
INCLUDE_ASM(s32, "evt/f8f60_len_1560", load_path_data);
#endif

INCLUDE_ASM(s32, "evt/f8f60_len_1560", get_path_position);

s32 LoadPath(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 time = evt_get_variable(script, *args++);
    s32 vectorList = evt_get_variable(script, *args++);
    s32 numVectors = evt_get_variable(script, *args++);
    s32 easingType = evt_get_variable(script, *args++);
    Path* path = heap_malloc(sizeof(Path));

    script->varTable[15] = path;
    path->numVectors = numVectors;
    path->unk_04 = heap_malloc(numVectors * sizeof(f32));
    path->staticVectorList = vectorList;
    path->vectors = heap_malloc(numVectors * sizeof(Vec3f));
    load_path_data(path->numVectors, path->unk_04, path->staticVectorList, path->vectors);

    path->timeElapsed = 0;
    path->timeLeft = time - 1;
    path->easingType = easingType;

    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "evt/f8f60_len_1560", GetNextPathPos, Evt* script, s32 isInitialCall);

ApiStatus GetDist2D(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;

    Bytecode outVar = *ptrReadPos++;
    evt_set_float_variable(script, outVar, dist2D(
                           evt_get_float_variable(script, *ptrReadPos++),
                           evt_get_float_variable(script, *ptrReadPos++),
                           evt_get_float_variable(script, *ptrReadPos++),
                           evt_get_float_variable(script, *ptrReadPos++)
                       ));

    return ApiStatus_DONE2;
}

ApiStatus SetTimeFreezeMode(Evt* script, s32 initialCall) {
    set_time_freeze_mode(evt_get_variable(script, *script->ptrReadPos));
    return ApiStatus_DONE2;
}

ApiStatus ModifyGlobalOverrideFlags(Evt* script, s32 initialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;
    s32 setMode = evt_get_variable(script,  *ptrReadPos++);
    s32 flags = evt_get_variable(script, *ptrReadPos++);

    if (setMode) {
        gOverrideFlags |= flags;
    } else {
        gOverrideFlags &= ~flags;
    }

    return ApiStatus_DONE2;
}

ApiStatus SetValueByRef(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;

    s32 dest = evt_get_variable(script, *ptrReadPos++); /* Reference */
    s32 src = evt_get_variable(script, *ptrReadPos++);
    evt_set_variable(script, dest, src);

    return ApiStatus_DONE2;
}

ApiStatus GetValueByRef(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;

    s32 src = evt_get_variable(script, *ptrReadPos++); /* Reference */
    Bytecode dest = *ptrReadPos++;

    evt_set_variable(script, dest, evt_get_variable(script, src));

    return ApiStatus_DONE2;
}

ApiStatus EnableStatusMenu(Evt* script, s32 isInitialCall) {
    if (evt_get_variable(script, *script->ptrReadPos) != 0) {
        decrement_status_menu_disabled();
    } else {
        increment_status_menu_disabled();
    }

    return ApiStatus_DONE2;
}

ApiStatus ShowStatusMenu(Evt* script, s32 isInitialCall) {
    if (evt_get_variable(script, *script->ptrReadPos) != 0) {
        func_800E9894();
        close_status_menu();
    } else {
        func_800E98C4();
    }

    return ApiStatus_DONE2;
}

ApiStatus SetGameMode(Evt* script, s32 isInitialCall) {
    s16 mode = evt_get_variable(script, *script->ptrReadPos);

    set_game_mode(mode);

    return ApiStatus_DONE2;
}

ApiStatus ClampAngleInt(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;

    evt_set_variable(script, *ptrReadPos, clamp_angle(evt_get_variable(script, *ptrReadPos)));

    return ApiStatus_DONE2;
}

ApiStatus ClampAngleFloat(Evt* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;

    evt_set_float_variable(script, *ptrReadPos, clamp_angle(evt_get_float_variable(script, *ptrReadPos)));

    return ApiStatus_DONE2;
}
