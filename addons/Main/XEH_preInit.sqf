// Vehicle Crew List
[
    "dpso_Main_VehicleCrewList",
    "CHECKBOX",
    ["Vehicle Crew List", "Shows a list of players in a vehicle."],
    "DPSO Main",
    false,
    true,
    {
        if (_this && { hasinterface }) then  { call YAINA_F_fnc_crewNames};
    }
] call CBA_Settings_fnc_init;

// Dynamic Groups
[
    "dpso_Main_DynamicGroups",
    "CHECKBOX",
    ["BIS Dynamic Groups", "Enable Vanilla Dynamic Groups system (U Menu)"],
    "DPSO Main",
    false,
    true,
    {
        if (_this) then { call dpso_fnc_DynamicGroups};
    }
] call CBA_Settings_fnc_init;

// YAINA Earplugs
[
    "dpso_Main_Earplugs",
    "CHECKBOX",
    ["YAINA Earplugs", "Enable YAINA Earplugs addactions. Cannot be used with @ACE."],
    "DPSO Main",
    false,
    true,
    {
         if (_this && { hasinterface }) then  { call dpso_fnc_Earplugs};
    }
] call CBA_Settings_fnc_init;

// PilotCheck
[
    "dpso_Main_PilotCheck",
    "CHECKBOX",
    ["Pilot Restrictions", "Restrict aircraft so only those with 'Pilot' Trait can fly."],
    "DPSO Main",
    false,
    true,
    {
         if (_this && { hasinterface }) then  { call dpso_fnc_PilotCheck};
    }
] call CBA_Settings_fnc_init;

// PilotCheck
[
    "dpso_Main_MaydayAccess",
    "LIST",
    ["Aircraft Emergency Access", "Restrict access to the emergency pilot takeover for helicopters (requires Pilot Check Enabled)"],
    "DPSO Main",
    [[0,1,2],["No One", "909 Only", "Everyone"], 2],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// Voyager Compass
[
    "dpso_Main_VoyagerCompass",
    "CHECKBOX",
    ["Voyager Compass HUD", "Enable Voyager Compass HUD. Players can still disable locally."],
    "DPSO Main",
    false,
    true,
    {
         if (_this && { hasinterface }) then  { call dpso_fnc_VoyagerCompass};
    }
] call CBA_Settings_fnc_init;

// QS Mag Repack
[
    "dpso_Main_QSMagRepack",
    "CHECKBOX",
    ["QS Repack Magazines", "Allows players to repack magazines through an add action. Not used with ACE."],
    "DPSO Main",
    false,
    true,
    {
         if (_this && { hasinterface }) then  { call dpso_fnc_QSRepackMags};        
    }
] call CBA_Settings_fnc_init;

// CH View Distance
[
    "dpso_Main_CHViewDistance",
    "CHECKBOX",
    ["CH View Distance", "Enable CHVD within dpso 1970s"],
    "DPSO Main",
    false,
    true,
    {
        if (_this && { hasinterface }) then  { call CHVD_fnc_init};
    }
] call CBA_Settings_fnc_init;

// CHVD - Max View Distance
[
    "dpso_Main_ViewDistanceMaxDistance",
    "SLIDER",
    ["CHVD - Max View Distance", "Max distance a player can set CHVD View Distance to."],
    "DPSO Main",
    [5000, 15000, 10000, 0],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// CHVD - Max Object View Distance
[
    "dpso_Main_ViewDistanceMaxObjectDistance",
    "SLIDER",
    ["CHVD - Max Object View Distance", "Max distance a player can set CHVD Object View Distance to."],
    "DPSO Main",
    [5000, 15000, 10000, 0],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// CHVD - Allow No Grass
[
    "dpso_Main_ViewDistanceNoGrass",
    "CHECKBOX",
    ["CHVD - Allow No Grass", "Should players be allowed to turn grass off?"],
    "DPSO Main",
    false,
    true,
    {

    }
] call CBA_Settings_fnc_init;

// Arsenal - Save/Load
[
    "dpso_Main_ArsenalSaveLoad",
    "CHECKBOX",
    ["Arsenal - Save/Load", "Should a player be allowed to Save/Load Loadouts in the Arsenal?"],
    "DPSO Main",
    true,
    true,
    {
        if (!_this && { hasinterface }) then  { call dpso_fnc_ArsenalLoadSave};
    }
] call CBA_Settings_fnc_init;

// Flip Vehicle
[
    "dpso_Main_FlipVehicle",
    "CHECKBOX",
    ["Flip Vehicle", "Add an action to players to allow them to flip land vehicles."],
    "DPSO Main",
    false,
    true,
    {
        if (_this && { hasinterface }) then  { call dpso_fnc_FlipVehicle};
    }
] call CBA_Settings_fnc_init;

// TFAR - Range Multiplyer
[
    "dpso_Main_TFARTransmitRange",
    "SLIDER",
    ["TFAR - Range Multiplyer", "Increase or decrease max Transmit Range. 0.1 = poor range, 3.5 = All of Altis"],
    "DPSO Main",
    [0, 10, 2.5, 1],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// TFAR - Terrain Interference
[
    "dpso_Main_TFARTerrainInterference",
    "SLIDER",
    ["TFAR - Terrain Interference", "How much Terrain interferes with range. 0.1 = little impact, 2.0 = large impact."],
    "DPSO Main",
    [0, 5, 1, 1],
    true,
    {

    }
] call CBA_Settings_fnc_init;

// Cue Cards
[
    "dpso_Main_CueCards",
    "CHECKBOX",
    ["Cue Cards", "Show/Hide Cue Cards in ACE Self Interaction Menu."],
    "DPSO Main",
    true,
    true,
    {
        if (_this && { hasinterface }) then  { call dpso_fnc_AddCueCards};
    }
] call CBA_Settings_fnc_init;

// Diary Defaults
[
    "dpso_Main_Diary",
    "CHECKBOX",
    ["Diary Defaults", "Show/Hide Default dpso Diary Entries."],
    "DPSO Main",
    true,
    true,
    {
        if (_this && { hasinterface }) then  { call dpso_fnc_Diary};
    }
] call CBA_Settings_fnc_init;

// MapIcons
[
    "dpso_Main_MapIcons",
    "CHECKBOX",
    ["Enable Save/Load Markers", "Enable the MapIcons system to save/load markers"],
    "DPSO Main",
    true,
    true,
    {
		["dpso-saveMarkers",{
            [] call LR_MI_fnc_openDialog;
        },"all"] call CBA_fnc_registerChatCommand;

        [] call LR_MI_fnc_loadNotification;
    }
] call CBA_Settings_fnc_init;

// Fatigue (Vanilla ONLY)
[
    "dpso_Main_FatigueVanilla",
    "CHECKBOX",
    ["Fatigue (Vanilla ONLY)", "Enable/Disable Vanilla Fatigue System. Does not apply with @ACE."],
    "DPSO Main",
    true,
    true,
    {
        if (_this && { hasinterface }) then  { call dpso_fnc_VanillaFatigue};
    }
] call CBA_Settings_fnc_init;

// FPS Counter
[
    "dpso_Main_FPSCounter",
    "CHECKBOX",
    ["FPS Counter", "Show FPS counter of Player, Server & Headless Client on the map."],
    "DPSO Main",
    false,
    true,
    {
        if (_this) then { call YAINA_F_fnc_showFPS};
    }
] call CBA_Settings_fnc_init;

// dpso Logging
[
    "dpso_Main_Logging",
    "CHECKBOX",
    ["DPSO Logging", "Log connected players, their roles and if they go unconcious with ACE. Requires @A3Log"],
    "DPSO Main",
    false,
    true,
    {
        if (_this) then { call dpso_fnc_Logs};
    }
] call CBA_Settings_fnc_init;

// dpso_Main_DynamicSim
[
    "dpso_Main_DynamicSim",
    "CHECKBOX",
    ["DPSO Dynamic Sim", "Simple check for Dynamic Sim enabled. If not enabled it will enable it to default dpso Values. "],
    "DPSO Main",
    false,
    true,
    {
        if (_this && { isserver }) then  { call dpso_fnc_DynamicSim};
    }
] call CBA_Settings_fnc_init;

// dpso_Main_DynamicSim
[
    "dpso_Main_LockCamVehicle",
    "CHECKBOX",
    ["DPSO Lock Camera in Vehicle", "Locks the camera to first-person inside vehicles. If not enabled it will enable it to default dpso Values. "],
    "DPSO Main",
    false,
    true,
    {
        if (_this && {hasInterface}) then  { call dpso_fnc_LockCamVehicle};
    }
] call CBA_Settings_fnc_init;