#include "script_component.hpp"

class cfgPatches
{
    class ADDON
    {
        name = "DPSO: Patrol";
        author = "Head";
        url = URL;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"DPSO_common"};
        VERSION_CONFIG;
    };
};


#include "CfgEventHandlers.hpp"
#include "display3DEN.hpp"
#include "display3DENEditbox.hpp"
