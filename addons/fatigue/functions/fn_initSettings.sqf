/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\fatigue\functions\fn_initSettings.sqf
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
 *	[] call DPSO_fatigue_fnc_initSettings;
 *	
 */

// -------------------------------------------------------------------------------------------------

// FATIGUE

[
	"dpso_fatigue_global_sounds",
	"CHECKBOX",
	[
		localize "STR_DPSO_Fatigue_CBA_Global_Sounds_Title", 
		localize "STR_DPSO_Fatigue_CBA_Global_Sounds_Tip"
	],
	[
		localize "STR_DPSO_Fatigue_CBA_Category", 
		localize "STR_DPSO_Fatigue_CBA_Category_core"
	],
	true,
	1,
	{}
] call CBA_Settings_fnc_init;

// -------------------------------------------------------------------------------------------------
