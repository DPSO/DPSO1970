/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\core\functions\fn_initSettings.sqf
 *	by Ojemineh
 *	
 *	register cba settings
 *	
 *	Arguments:
 *	nothing
 *	
 *	Return:
 *	nothing
 *	
 *	Example:
 *	[] call DPSO_core_fnc_initSettings;
 *	
 */

// -------------------------------------------------------------------------------------------------

// core SETTINGS

[
	"dpso_debug_enabled",
	"CHECKBOX",
	[
		localize "STR_DPSO_core_CBA_Debug_Enabled_Title", 
		localize "STR_DPSO_core_CBA_Debug_Enabled_Tip"
	],
	[
		localize "STR_DPSO_core_CBA_Category", 
		localize "STR_DPSO_core_CBA_Category_core"
	],
	false,
	0,
	{}
] call CBA_Settings_fnc_init;

[
	"dpso_showNewsOnMainMenu",
	"CHECKBOX",
	[
		localize "STR_DPSO_core_CBA_Show_News_Title", 
		localize "STR_DPSO_core_CBA_Show_News_Tip"
	],
	[
		localize "STR_DPSO_core_CBA_Category", 
		localize "STR_DPSO_core_CBA_Category_core"
	],
	true,
	0,
	{
		params ["_value"];
		if (_value) then {
			profileNamespace setVariable ["dpso_showNewsOnMainMenu", true];
		} else {
			profileNamespace setVariable ["dpso_showNewsOnMainMenu", false];
		};
		saveProfileNamespace;
		[(uiNamespace getVariable "RscDisplayMain")] call compile preprocessfilelinenumbers '\z\dpso\addons\mainmenu\scripts\versionInfo.sqf';
	}
] call CBA_Settings_fnc_init;

// -------------------------------------------------------------------------------------------------

[
	"dpso_tactical_view_enabled",
	"CHECKBOX",
	[
		localize "STR_DPSO_core_CBA_Tactical_View_Title", 
		localize "STR_DPSO_core_CBA_Tactical_View_Tip"
	],
	[
		localize "STR_DPSO_core_CBA_Category", 
		localize "STR_DPSO_core_CBA_Category_Options"
	],
	false,
	1,
	{}
] call CBA_Settings_fnc_init;

// -------------------------------------------------------------------------------------------------
