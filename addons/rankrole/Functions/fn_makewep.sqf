if (isDedicated) exitWith {};

if (hasInterface) then {
    player setUnitTrait ["UAVHacker", false];
    player setUnitTrait ["engineer", false];
    player setUnitTrait ["explosiveSpecialist", false];
    player setUnitTrait ["Medic", false];


    player setUnitTrait ["audibleCoef", .25];
    player setUnitTrait ["camouflageCoef", .25];
    player setUnitTrait ["loadCoef", .25];

    player setUnitTrait ["vn_artillery", false,true];

    
};


[ format [hint_tpl_default, "Weapons"] ] call dpso_fnc_hint;