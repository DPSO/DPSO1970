#include "\z\dpso\addons\common\script_component.hpp"
/*
 * Name: DPSO_common_fnc_checkDPSOVersion
 * Author: Snippers
 *
 * Arguments:
 *  Array - Version to check
 *
 * Return:
 * Boolean
 *
 * Description:
 * Checks if DPSO Mission version is larger than the input version;
 */

params [
    ["_input",[0,0,0]]
];

private _dpsoVersion = getMissionConfigValue ["VERSION",[0,0,0]];

([_dpsoVersion,_input] call EFUNC(common,checkVersionArray));

