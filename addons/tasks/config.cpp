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
        authors[] = {"3Mydlo3"};
        version = VERSION;
    };
};


#include "CfgEventHandlers.hpp"
