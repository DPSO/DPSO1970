#include "script_component.hpp"

class CfgPatches
{
	class dpsoFundamentals_Channels
	{
		author = AUTHOR;
		name = NAME;
		url = URL;
		units[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {"A3_UI_F","cba_main","cba_xeh"};
		version = VERSION;
		authors[] = {"MitchJC"};
		weapons[] = {};
	};
};

class Extended_PreInit_EventHandlers {
    class dpsoFundamentals_Channels_Event {
        init = "call compile preprocessFileLineNumbers 'z\dpso\addons\channels\XEH_preInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers {
    class dpso_AI_Event {
        init = "call compile preprocessFileLineNumbers 'z\dpso\addons\channels\XEH_postInit.sqf'";
    };
};