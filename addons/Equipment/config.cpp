#include "script_component.hpp"

class CfgPatches
{
	class DPSO_Equipment
	{
		author = AUTHOR;
        name = COMPONENT_NAME;
		url = URL;
		units[] = {
            "dpso_TFAR_PRC155_PACK",
            "dpso_TFAR_Kombat"
        };
        weapons[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {
            "A3_UI_F",
            "cba_main",
            "cba_xeh",
            "A3_Weapons_F",
            "cba_jr"
        };
		version = VERSION;
		authors[] = {"MitchJC"};
	};
};

class CfgFunctions {

    #include "cfgFunctions.hpp"
};

#include "cfg3Den.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"


class Extended_InitPost_EventHandlers {
    class ReammoBox_F {
        class Storage_MedicalSupplies {
            init = "[_this select 0] call DPSO_fnc_MedicalSupplies";
        };
        class Storage_Ammobox {
            init = "[_this select 0] call DPSO_fnc_Ammobox";
        };
    };
    class Car {
        class Car_MedicalSupplies {
            init = "[_this select 0] call DPSO_fnc_MedicalSupplies";
        };
        class Car_Ammobox {
            init = "[_this select 0] call DPSO_fnc_Ammobox";
        };
    };
    class Tank {
        class Tank_MedicalSupplies {
            init = "[_this select 0] call DPSO_fnc_MedicalSupplies";
        };
        class Tank_Ammobox {
            init = "[_this select 0] call DPSO_fnc_Ammobox";
        };
    };
    class Motorcycle {
        class Motorcycle_MedicalSupplies {
            init = "[_this select 0] call DPSO_fnc_MedicalSupplies";
        };
        class Motorcycle_Ammobox {
            init = "[_this select 0] call DPSO_fnc_Ammobox";
        };
    };
    class Helicopter {
        class Helicopter_MedicalSupplies {
            init = "[_this select 0] call DPSO_fnc_MedicalSupplies";
        };
        class Helicopter_Ammobox {
            init = "[_this select 0] call DPSO_fnc_Ammobox";
        };
    };
    class Plane {
        class Plane_MedicalSupplies {
            init = "[_this select 0] call DPSO_fnc_MedicalSupplies";
        };
        class Plane_Ammobox {
            init = "[_this select 0] call DPSO_fnc_Ammobox";
        };
    };
    class Ship_F {
        class Ship_MedicalSupplies {
            init = "[_this select 0] call DPSO_fnc_MedicalSupplies";
        };
        class Ship_Ammobox {
            init = "[_this select 0] call DPSO_fnc_Ammobox";
        };
    };
};
