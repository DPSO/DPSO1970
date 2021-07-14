#include "script_component.hpp"


class CfgPatches {

	class DPSO_Interactions {
		author = AUTHOR;
		name = COMPONENT_NAME;
		url = URL;
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {
			"dpso_core"
		};
		units[] = {};
		weapons[] = {};
		authors[] = {
			"O. Jemineh"
		};
		VERSION_CONFIG;
	};

};

#include "CfgEventHandlers.hpp"
#include "CfgFunctions.hpp"

#include "CfgActions.hpp"
#include "CfgSounds.hpp"
#include "CfgVehicles.hpp"