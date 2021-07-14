/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\core\functions\diagnostics\fn_diagLog.sqf
 *	by Ojemineh
 *	
 *	add a rpt-log if debug is enabled
 *	
 *	Arguments:
 *	0: type			- <NUMBER>
 *	1: message		- <STRING>
 *	2: params		- <ARRAY>
 *	3: extension	- <STRING>
 *	4: modification - <STRING>
 *	
 *	Return:
 *	nothing
 *	
 *	Example:
 *	[4, "Player: '%1', Time: '%2'", [player, time], "core"] call DPSO_fnc_diagLog;
 *	
 */

// -------------------------------------------------------------------------------------------------

private ["_level", "_message", "_params", "_extension", "_modification"];

_level			= [_this, 0, 0, [0]] call BIS_fnc_param;
_message		= [_this, 1, "", [""]] call BIS_fnc_param;
_params			= [_this, 2, [], [[]]] call BIS_fnc_param;
_extension		= [_this, 3, "", [""]] call BIS_fnc_param;
_modification	= [_this, 4, "DPSO", [""]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

if (missionNamespace getVariable ["dpso_debug_enabled", false]) then {
	[_level, _message, _params, _extension, _modification] call DPSO_fnc_log;
};
