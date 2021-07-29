// not documented: postInit

if (!hasinterface) exitwith {};

// don't run if ACE is running
if (isClass (configFile >> "CfgPatches" >> "ace_main")) exitwith {};

player enableFatigue dpso_Main_FatigueVanilla;

player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	player enableFatigue dpso_Main_FatigueVanilla;
}];