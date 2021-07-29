#include "script_component.hpp"

class CfgPatches
{
	class dpso_Media
	{
		author = AUTHOR;
		name = NAME;
		url = URL;
		units[] = {"dpso_Flag_White", "dpso_Flag_Black"};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {"A3_UI_F","cba_main","cba_xeh"};
		version = VERSION;
		authors[] = {"MitchJC"};
		weapons[] = {};
	};
};

#include "CfgVehicles.hpp"
#include "CfgMusic.hpp"
#include "CfgSounds.hpp"
#include "CfgUnitInsignia.hpp"
class CfgFunctions {

    #include "cfgFunctions.hpp"
};

