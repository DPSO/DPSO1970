#include "script_component.hpp"

class cfgPatches
{
    class ADDON
    {
        name = COMPONENT_NAME;
        author = "Nick";
        url = URL;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"DPSO_common"};
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgWaypoints.hpp"
#include "CfgModules.hpp"


class CfgFunctions {

    #include "CfgFunctions.hpp"
};

class Extended_PreInit_EventHandlers
{
	class DPSO_AI_Event
	{
		init = "call compile preProcessFileLineNumbers 'z\dpso\addons\ai\XEH_preInit.sqf'";
	};
};
