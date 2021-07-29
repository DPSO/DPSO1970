#include "script_component.hpp"

class cfgPatches {
    class ADDON {
        author = AUTHOR;
		name = COMPONENT_NAME;
        url = URL;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        /* Require CBA and all components below */
        requiredAddons[] = {
			"A3_UI_F",
			"cba_main",
			"cba_xeh",
			"cba_ui",
            "cba_jr"
		};
        version = VERSION;
    };
};

#include "Dialogs\CfgDisplays.hpp"
#include "CfgMarkers.hpp"
#include "CfgRespawnTemplates.hpp"


class Extended_PreInit_EventHandlers {
    class dpso_Main_Event {
        init = "call compile preprocessFileLineNumbers 'z\dpso\addons\main\XEH_preInit.sqf'";
    };
};


class CfgFactionClasses {    
    class NO_CATEGORY;
    class CLASS(BLU)  {
        displayName = PREFIX;//Faction name in-game
        icon = LOGO_PATH;
		priority = 0;
		side = 1; // 1 Blufor 2 opfor 3 independant.
    };
    class CLASS(IND) {
        displayName = PREFIX;
        icon = LOGO_PATH;
        side = 2;
        priority = 2;
    };
    class dpso_Modules: NO_CATEGORY
	{
		displayName = PREFIX;
	};
};

class CfgFunctions {
    #include "cfgFunctions.hpp"
};

#include "Functions\CHVD\dialog.hpp"
#include "Functions\YAINA\General\crewNamesTitles.hpp"

class CfgScriptPaths
{
	dpsoDisplays = "z\dpso\addons\main\Scripts\UI\Displays\";
};