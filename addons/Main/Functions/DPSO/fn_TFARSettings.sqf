// not documented: postInit

if (isserver) then {{_x setSpeaker "NoVoice"} forEach playableUnits;}; // Here because it has nowhere else to go!

if (!hasinterface) exitwith {};

if !(isClass (configFile >> "CfgPatches" >> "task_force_radio")) exitwith {};

if (isNil "dpso_Main_TFARTransmitRange") exitwith {};
player setVariable ["tf_sendingDistanceMultiplicator", dpso_Main_TFARTransmitRange];

if (isNil "dpso_Main_TFARTerrainInterference") exitwith {};
player setVariable ["TF_terrain_interception_coefficient", dpso_Main_TFARTerrainInterference];
