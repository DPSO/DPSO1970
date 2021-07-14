#include "script_component.hpp"

if (isNil QEGVAR(common,DPSO_enabled) || !(EGVAR(common,DPSO_enabled))) exitWith {};

if !(hasInterface) exitWith {};

call FUNC(arsenal_postInit);

DPSO_unit setVariable [QGVAR(preventProne),false,true];

[{
    if (
        (stance DPSO_unit) == "PRONE" &&
        {DPSO_unit getvariable [QGVAR(preventProne),false]} &&
        {!(DPSO_unit getVariable ["ACE_isUnconscious", false]) || lifeState DPSO_unit != "INCAPACITATED"}
       ) then {
        DPSO_unit playAction "PlayerCrouch";
        hint localize "str_DPSO_boc_crouch";
    };
},1] call CBA_fnc_addPerFrameHandler;
