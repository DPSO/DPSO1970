/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\core\functions\sounds\fn_isSpeaking.sqf
 *	by Ojemineh
 *	
 *	check if unit is speaking (speak3d)
 *	
 *	Arguments:
 *	0: unit - <OBJECT>
 *	
 *	Return:
 *	<BOOLEAN>
 *	
 *	Example:
 *	[player] call DPSO_fnc_isSpeaking;
 *	
 */

// -------------------------------------------------------------------------------------------------

private ["_unit"];

_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

if (isNull _unit) exitWith {};

// -------------------------------------------------------------------------------------------------

private _return = false;

_return = (
	(alive _unit) && 
	(_unit getVariable ["dpso_speak3d", false])
);

_return;