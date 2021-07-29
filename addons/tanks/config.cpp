#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "dpso_main"
        };
        author = AUTHOR;
        authors[] = {"veteran29"};
        version = VERSION;
    };
};

#include "CfgEventHandlers.hpp"
