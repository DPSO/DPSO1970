#include "script_component.hpp"

ADDON = false;

#include "initCBASettings.sqf"

if (isNil QEGVAR(common,DPSO_enabled) || !(EGVAR(common,DPSO_enabled))) exitWith {};

#include "XEH_PREP.hpp"

ADDON = true;
