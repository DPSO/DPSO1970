#include "script_component.hpp"

class CfgPatches
{
	class dpso_AI
	{
		author = AUTHOR;
		name = NAME;
		url = URL;
		units[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {
			"cba_main",
			"cba_xeh"
		};
		version = VERSION;
		authors[] = {"MitchJC", "YonV"};
		weapons[] = {};
	};
};

#include "CfgVehicles.hpp"

class CfgFunctions {

    #include "CfgFunctions.hpp"
};

class Extended_PreInit_EventHandlers
{
	class dpso_AI_Event
	{
		init = "call compile preProcessFileLineNumbers 'z\dpso\addons\AI\XEH_preInit.sqf'";
	};
};