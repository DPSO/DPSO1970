#include "\z\dpso\addons\spectator\script_component.hpp"
// DPSO Spectator configured.
private _output = [];

if (!((getMissionConfigValue ["respawn",0] == 1) and ("DPSO_Spectator" in (getMissionConfigValue ["respawnTemplates",[]])))) then {
    _output pushBack [0,"DPSO Spectator is not setup correctly. See wiki for instructions."];
};



_output
