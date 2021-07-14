/*
 * Name: DPSO_common_fnc_sideToColor
 * Author: Snippers
 *
 * Arguments:
 * side
 *
 * Return:
 * array: color array
 *
 * Description:
 * Will return the color of the inputted side.
 */
 
//Cache vars for speed
if (isNil "DPSO_common_blufor_color") then {
    dpso_common_blufor_color = [blufor] call bis_fnc_sideColor;
    dpso_common_opfor_color = [opfor] call bis_fnc_sideColor;
    dpso_common_indep_color = [independent] call bis_fnc_sideColor;
    dpso_common_civ_color = [civilian] call bis_fnc_sideColor;
    dpso_common_empty_color = [sideUnknown] call bis_fnc_sideColor;
};

switch _this do {
    case blufor: {dpso_common_blufor_color};
    case opfor: {dpso_common_opfor_color};
    case independent: {dpso_common_indep_color};
    case civilian: {dpso_common_civ_color};
    default {dpso_common_empty_color};
};