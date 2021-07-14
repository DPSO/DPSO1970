/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\core\functions\diagnostics\fn_isDebug.sqf
 *	by Ojemineh
 *	
 *	check if debug is enabled
 *	
 *	Arguments:
 *	nothing
 *	
 *	Return:
 *	<BOOLEAN>
 *	
 *	Example:
 *	[] call DPSO_fnc_isDebug;
 *	
 */

// -------------------------------------------------------------------------------------------------

private _return = (missionNamespace getVariable ["dpso_debug_enabled", false]);

_return;