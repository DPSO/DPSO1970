#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "DPSO_main",
            "cba_main",
            "ace_medical",
            "ace_medical_ai",
            "ace_medical_blood",
            "ace_medical_damage",
            "ace_medical_engine",
            "ace_medical_feedback",
            "ace_medical_gui",
            "ace_medical_statemachine",
            "ace_medical_status",
            "ace_medical_treatment",
            "ace_medical_vitals"
        };
        author = "ArmaForces";
        VERSION_CONFIG;
    };
};


#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
#include "ACE_Medical_Treatment_Actions.hpp"
#include "ACE_Medical_Treatment.hpp"
