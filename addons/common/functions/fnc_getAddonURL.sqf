/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\dpso_common\functions\addons\fn_getAddonURL.sqf
 *	by Ojemineh
 *	
 *	get addon url
 *	
 *	Arguments:
 *	0: classname - <STRING>
 *	
 *	Return:
 *	<STRING>
 *	
 *	Example:
 *	["DPSO_core"] call dpso_fnc_getAddonURL;
 *	
 */

// -------------------------------------------------------------------------------------------------

private ["_classname"];

_classname = [_this, 0, "", [""]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

private _return = "";

if (isClass (configfile >> "CfgPatches" >> _classname)) then {
	_return = getText (configfile >> "CfgPatches" >> _classname >> "url");
};

_return;