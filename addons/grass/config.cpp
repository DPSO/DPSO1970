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
        author = AUTHOR;
        version = VERSION;
    };
};


#include "CfgEventHandlers.hpp"
