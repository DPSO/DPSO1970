#include "script_component.hpp"

class CfgPatches
{
	class dpso_rankrole
	{
		name = COMPONENT_NAME;
		requiredAddons[] = {
			"ace_medical_engine"
		};
		units[] = {};
		weapons[] = {};
		author = AUTHOR;
		authors[] = {
			"YonV"
		};
		url = URL;
	};
};

class CfgFunctions {
	class dpso_rankrole {

		tag = "DPSO_rankrole";
		class RankRole {

			file = "z\dpso\addons\rankrole\Functions";
			class rank {postInit = 1;};
            class makecom {};
            class makeeng {};
            class makewep {};
            class makemed {};
            class role {};
		};
	};
};








class Extended_PreInit_EventHandlers {
	dpsorank = "call compile preprocessFileLineNumbers 'z\dpso\addons\rankrole\XEH_preInit.sqf'";
};
class Extended_PostInit_EventHandlers {
	dpsorank = "call dpso_rankrole_fnc_rank";
};
