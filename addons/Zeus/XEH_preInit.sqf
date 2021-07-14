#include "script_component.hpp"

#include "XEH_PREP.sqf"

// AISpawns Modules

[
    "DPSO_Zeus_Module_AISpawnsEast",
    "CHECKBOX",
    ["Zeus Module - AI Spawn - East", "Enable the Spawn AI - East Zeus module for use with ZEN"],
    "DPSO Zeus",
    true,
    true,
    {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["DPSO Fundamentals", "AI Spawn - East", {_this call DPSO_fnc_moduleAISpawnsEastZeus}, "\z\dpso\addons\media\images\icons\AI EAST.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_Settings_fnc_init;

[
    "DPSO_Zeus_Module_AISpawnsIndep",
    "CHECKBOX",
    ["Zeus Module - AI Spawn - Independent", "Enable the Spawn AI - Independent Zeus module for use with ZEN"],
    "DPSO Zeus",
    true,
    true,
    {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["DPSO Fundamentals", "AI Spawn - Independent", {_this call DPSO_fnc_moduleAISpawnsIndepZeus}, "\z\dpso\addons\media\images\icons\AI INDEP.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_Settings_fnc_init;

[
    "DPSO_Zeus_Module_AISpawnsWest",
    "CHECKBOX",
    ["Zeus Module - AI Spawn - West", "Enable the Spawn AI - West Zeus module for use with ZEN"],
    "DPSO Zeus",
    true,
    true,
    {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["DPSO Fundamentals", "AI Spawn - West", {_this call DPSO_fnc_moduleAISpawnsWestZeus}, "\z\dpso\addons\media\images\icons\AI WEST.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_Settings_fnc_init;

// CivilianSpawns Module
[
    "DPSO_Zeus_Module_CivilianSpawns",
    "CHECKBOX",
    ["Zeus Module - AI Spawn - Civilian", "Enable the Spawn AI Civilians Zeus module for use with ZEN"],
    "DPSO Zeus",
    true,
    true,
    {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["DPSO Fundamentals", "AI Spawn - Civilian", {_this call DPSO_fnc_moduleCivilianSpawnsZeus}, "\z\dpso\addons\media\images\Icons\AI CIV.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_Settings_fnc_init;

// SafeZone Module
[
    "DPSO_Zeus_Module_SafeZone",
    "CHECKBOX",
    ["Zeus Module - Safe Zone", "Enable the Safe Zone Zeus module for use with ZEN"],
    "DPSO Zeus",
    true,
    true,
    {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["DPSO Fundamentals", "Safe Zone", {_this call DPSO_fnc_moduleSafeZoneZeus}, "\z\dpso\addons\media\images\Icons\Safe_Zone.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_Settings_fnc_init;

