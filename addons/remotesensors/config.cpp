#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "dpso_common"
        };
        author = "ArmaForces";
        authors[] = {"veteran29"};
        version = VERSION;
    };
};

#include "CfgEventHandlers.hpp"
