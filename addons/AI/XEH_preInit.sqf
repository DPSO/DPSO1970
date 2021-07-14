#include "script_component.hpp"

#include "XEH_PREP.sqf"


// Reporting AI
[
    "DPSO_AI_Reporting",
    "CHECKBOX",
    ["Spawn Reporting", "Receive a systemchat message for any groups or vehicles that fail to spawn."],
    "DPSO AI",
    false,
    true,
    {

    }
] call CBA_Settings_fnc_init;

// Initial AI
[
    "DPSO_AI_InitialAI",
    "CHECKBOX",
    ["Include Initial AI", "This will automatically apply to AI Spawns and Zeus placed AI. If enabled it will also apply to any Editor placed AI at mission start."],
    "DPSO AI",
    true,
    true,
    {
        if (_this && { isserver }) then  { call DPSO_fnc_SetInitialAI};
    }
] call CBA_Settings_fnc_init;

// AI Aiming Accuracy
[
    "DPSO_AI_AimingAccuracy",
    "SLIDER",
    ["Min Aiming Accuracy", "Higher value means the AI will be more likely to hit the target."],
    "DPSO AI",
    [0, 1, 0.10, 2],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// AI Aiming Shake
[
    "DPSO_AI_AimingShake",
    "SLIDER",
    ["Min Aiming Shake", "Higher value means the AI will be more precise."],
    "DPSO AI",
    [0, 1, 0.45, 2],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// AI Aiming Speed
[
    "DPSO_AI_AimingSpeed",
    "SLIDER",
    ["Min Aiming Speed", "Higher value means the AI can rotate and stabilize its aim faster."],
    "DPSO AI",
    [0, 1, 0.30, 2],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// AI Commanding
[
    "DPSO_AI_Commanding",
    "SLIDER",
    ["Commanding", "Higher value means the AI can report targets faster."],
    "DPSO AI",
    [0, 1, 1.00, 2],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// AI Courage
[
    "DPSO_AI_Courage",
    "SLIDER",
    ["Courage", "Higher value means the AI can report targets faster."],
    "DPSO AI",
    [0, 1, 1.00, 2],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// AI General
[
    "DPSO_AI_General",
    "SLIDER",
    ["General", "Higher value improves the AI's decision making."],
    "DPSO AI",
    [0, 1, 1.00, 2],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// AI Min Reload Speed
[
    "DPSO_AI_ReloadSpeed",
    "SLIDER",
    ["Min Reload Speed", "Higher value means the AI can switch or reload weapons faster."],
    "DPSO AI",
    [0, 1, 0.50, 2],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// AI Min Spot Distance
[
    "DPSO_AI_SpotDistance",
    "SLIDER",
    ["Min Spot Distance", "Higher value means the AI is better at spotting targets."],
    "DPSO AI",
    [0, 1, 0.40, 2],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// AI Min Spot Time
[
    "DPSO_AI_SpotTime",
    "SLIDER",
    ["Min Spot Time", "Higher value means the AI will react faster to death, damage or enemies."],
    "DPSO AI",
    [0, 1, 0.20, 2],
    true,
    {

    }
] call CBA_Settings_fnc_init;
