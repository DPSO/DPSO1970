/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\modules\functions\fn_initialize.sqf
 *	by Ojemineh
 *	
 *	initialize modules addon
 *	
 *	Arguments:
 *	nothing
 *	
 *	Return:
 *	nothing
 *	
 *	Example:
 *	[] call DPSO_modules_fnc_initialize;
 *	
 */

// -------------------------------------------------------------------------------------------------

private _version = ["dpso_modules"] call DPSO_fnc_getAddonVersion;
[4, "Addon (v%1) loaded...", [_version], "modules"] call DPSO_fnc_log;

// -------------------------------------------------------------------------------------------------
