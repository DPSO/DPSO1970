#include "\z\dpso\addons\adminmenu\script_component.hpp"

([] call BIS_fnc_isDebugConsoleAllowed_old || {[] call FUNC(isAuthorized)})
