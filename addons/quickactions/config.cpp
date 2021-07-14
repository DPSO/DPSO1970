class CfgPatches
{
    class dpso_quickActions
    {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "cba_common"
		};
        version = VERSION;
        versionStr = VERSION_STR;
		author = "diwako";
		url = URL;
    };
};

class Extended_PreInit_EventHandlers {
    class dpso_quickActions {
        init = "call compile preprocessFileLineNumbers 'z\dpso\addons\quickActions\functions\fn_preInit.sqf'";
    };
};

class Extended_InitPost_EventHandlers {
	class Helicopter {
		init = "[(_this select 0)] call dpso_quickActions_fnc_addFastRopeAction;";
	};
};

#include "cfgFunctions.hpp"
