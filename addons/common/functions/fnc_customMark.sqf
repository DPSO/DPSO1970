#include "script_component.hpp"

["DPSO_setCustomMark", "onMapSingleClick", {
    params ["_pos","_shift"];
    if (_shift) then {
        DPSO_unit setVariable ["DPSO_customMarkLocation",_pos];
    };
}] call BIS_fnc_addStackedEventHandler;

addMissionEventHandler ["Draw3D", {
    private _DPSO_customMarkLocation = DPSO_unit getVariable ["DPSO_customMarkLocation",nil];
    if (!isNil "_DPSO_customMarkLocation") then {
        drawIcon3D [
            "tacticalpingdefault",
            [1,1,1,0.75],
            _DPSO_customMarkLocation,
            1,
            1,
            0,
            "Marker",
            1,
            0.3,
            "TahomaB",
            'center'
        ];
    };
}];
