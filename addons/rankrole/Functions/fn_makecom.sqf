if (isDedicated) exitWith {};

if (hasInterface) then {
    player setUnitTrait ["UAVHacker", true];
    player setUnitTrait ["engineer", false];
    player setUnitTrait ["explosiveSpecialist", false];
    player setUnitTrait ["Medic", false];

    player setUnitTrait ["audibleCoef", .5];
    player setUnitTrait ["camouflageCoef", .5];
    player setUnitTrait ["loadCoef", .5];

    player setUnitTrait ["vn_artillery", true,true];
    
    BIS_supp_refresh = TRUE;
    publicVariable "BIS_supp_refresh";
    daoWhitelisted=TRUE;
 
};

[ format [hint_tpl_default, "Communications"] ] call dpso_fnc_hint;

