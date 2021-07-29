#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {
            //dpso
            QCLASS(operator_990),
            QCLASS(operator_991),
            QCLASS(operator_992),
            QCLASS(operator_993),
            QCLASS(flight_crew_999),
            
        };
        weapons[] = {
            
        };
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
			"a3_data_f",
			"cba_main",
            "A3_Characters_F",
            "A3_Data_F",
            "A3_Data_F_Curator",
            "cba_xeh"
		};
        author = AUTHOR;
        authors[] = {"YonV"};
        url = URL;
        version = VERSION;
    };
};
#include "CfgVehicles.hpp"
#include "CfgGroups.hpp"
