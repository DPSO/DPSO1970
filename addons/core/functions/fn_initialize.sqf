#include "\a3\ui_f\hpp\definedikcodes.inc"
/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\core\functions\fn_initialize.sqf
 *	by Ojemineh
 *	
 *	initialize core addon
 *	
 *	Arguments:
 *	nothing
 *	
 *	Return:
 *	nothing
 *	
 *	Example:
 *	[] call DPSO_core_fnc_initialize;
 *	
 */

// -------------------------------------------------------------------------------------------------

private _version = ["dpso_core"] call DPSO_fnc_getAddonVersion;
[4, "Addon (v%1) loaded...", [_version], "core"] call DPSO_fnc_log;

// -------------------------------------------------------------------------------------------------

DPSO_core_HELPER_OBJECT = "Sign_Sphere10cm_Geometry_F";

// -------------------------------------------------------------------------------------------------

[
	"dpso_core_log", 
	{
		_this call DPSO_fnc_log;
	}
] call CBA_fnc_addEventHandler;

[
	"dpso_core_diagLog", 
	{
		if (missionNamespace getVariable ["dpso_debug_enabled", false]) then {
			_this call DPSO_fnc_log;
		};
	}
] call CBA_fnc_addEventHandler;

// -------------------------------------------------------------------------------------------------

if !(hasInterface) exitWith {};

// -------------------------------------------------------------------------------------------------
// KEY: SCREENSHOT

[
	"STR_DPSO_core_CBA_Category", 
	"DPSO_core_KEY_Screenshot", 
	["STR_DPSO_core_KEY_Screenshot_Title", "STR_DPSO_core_KEY_Screenshot_Tip"], 
	{
		[] call DPSO_fnc_screenshot;
	}, 
	{}, 
	[DIK_F12, [false, true, false]]
] call CBA_fnc_addKeybind;

// -------------------------------------------------------------------------------------------------
// TACTICAL VIEW

[{
	
	params ["_params", "_pfhHandler"];
	
	if (cameraView isEqualTo "GROUP") then {
		if !(missionNamespace getVariable ["dpso_tactical_view_enabled", false]) then {
			player switchCamera "INTERNAL";
		};
	};
	
}, 0, []] call CBA_fnc_addPerFrameHandler;

// -------------------------------------------------------------------------------------------------
