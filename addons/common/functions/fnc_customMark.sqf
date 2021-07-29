#include "script_component.hpp"

["dpso_setCustomMark", "onMapSingleClick", {
    params ["_pos","_shift"];
    if (_shift) then {
        dpso_unit setVariable ["dpso_customMarkLocation",_pos];
    };
}] call BIS_fnc_addStackedEventHandler;

addMissionEventHandler ["Draw3D", {
    private _dpso_customMarkLocation = dpso_unit getVariable ["dpso_customMarkLocation",nil];
    if (!isNil "_dpso_customMarkLocation") then {
        drawIcon3D [
            "tacticalpingdefault",
            [1,1,1,0.75],
            _dpso_customMarkLocation,
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
