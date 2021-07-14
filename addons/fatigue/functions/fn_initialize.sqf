/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\fatigue\functions\fn_initialize.sqf
 *	by Ojemineh
 *	
 *	initialize fatigue addon
 *	
 *	Arguments:
 *	nothing
 *	
 *	Return:
 *	nothing
 *	
 *	Example:
 *	[] call DPSO_fatigue_fnc_initialize;
 *	
 */

// -------------------------------------------------------------------------------------------------

private _version = ["dpso_fatigue"] call DPSO_fnc_getAddonVersion;
[4, "Addon (v%1) loaded...", [_version], "fatigue"] call DPSO_fnc_log;

// -------------------------------------------------------------------------------------------------
