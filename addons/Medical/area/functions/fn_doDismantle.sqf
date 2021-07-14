/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\medical\area\functions\fn_doDismantle.sqf
 *	by Ojemineh
 *	
 *	dismantle a existing medical area
 *	
 *	Arguments:
 *	0: unit			- <OBJECT>
 *	1: medical area	- <OBJECT>
 *	
 *	Return:
 *	nothing
 *	
 *	Example:
 *	[player, area1] call DPSO_medical_area_fnc_doDismantle;
 *	
 */

// -------------------------------------------------------------------------------------------------

private ["_unit", "_area"];

_unit	= [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_area	= [_this, 1, objNull, [objNull]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

if (isNull _unit) exitWith {false};
if (isNull _area) exitWith {false};

// -------------------------------------------------------------------------------------------------

[_unit, _area] spawn {
	
	params ["_unit", "_area"];
	
	_area setVariable ["DPSO_MedicalArea_DismantleInProgress", true, true];
	_unit playAction "MedicStart";
	
	[_unit, "DPSO_Medical_Area_Dismantle_1", [], 50, 1000] call DPSO_fnc_play3dSound;
	
	private _objects = _area getVariable ["DPSO_MedicalArea_Objects", []];
	private _lights = _area getVariable ["DPSO_MedicalArea_Lights", []];
	private _hpad = (_objects select 0);
	
	DPSO_MEDICAL_AREA_DISMANTLE_SUCCESS = false;
	DPSO_MEDICAL_AREA_DISMANTLE_FAILURE = false;
	
	private _dismantle_time = round (missionNamespace getVariable ["dpso_medical_area_dismantle_time", 20]);
	if (_dismantle_time < 3) then { _dismantle_time = 3; };
	private _section_time = (_dismantle_time / 5);
	
	[
		_dismantle_time,
		[],
		{ DPSO_MEDICAL_AREA_DISMANTLE_SUCCESS = true; },
		{ DPSO_MEDICAL_AREA_DISMANTLE_FAILURE = true; },
		localize "STR_DPSO_Medical_Area_Progress_Dismantle",
		{true},
		["isNotInside", "isNotSitting", "isNotSwimming"]
	] call ACE_common_fnc_progressBar;
	
	waitUntil {if ((DPSO_MEDICAL_AREA_DISMANTLE_SUCCESS) || (DPSO_MEDICAL_AREA_DISMANTLE_FAILURE)) exitWith {true}; false};
	
	if (DPSO_MEDICAL_AREA_DISMANTLE_SUCCESS) exitWith {
		
		_hpad setVariable ["ACE_medical_isMedicalFacility", false, true];
		
		[_unit, _area, _objects, _lights] spawn {
			
			params ["_unit", "_area", "_objects", "_lights"];
			
			if (count _lights > 0) then {
				{deleteVehicle _x;} forEach _lights;
			};
			
			private _delObjects = +_objects;
			reverse _delObjects;
			{
				deleteVehicle _x;
				sleep 0.15;
			} forEach _delObjects;
			
			_area setVariable ["DPSO_MedicalArea_DismantleInProgress", nil, true];
			_area setVariable ["DPSO_MedicalArea_Objects", nil, true];
			_area setVariable ["DPSO_MedicalArea_Lights", nil, true];
			sleep 0.15;
			deleteVehicle _area;
			
			[_unit, "DPSO_MedicArea", 1, [3,2,1], true] call DPSO_fnc_addItem;
			
			["dpso_medical_area_dismantled", [_unit]] call CBA_fnc_globalEvent;
			
		};
		
		_unit playActionNow "MedicStop";
		
		[_unit, "DPSO_Medical_Area_Dismantle_1"] call DPSO_fnc_stop3dSound;
		
	};
	
	if (DPSO_MEDICAL_AREA_DISMANTLE_FAILURE) exitWith {
		
		_area setVariable ["DPSO_MedicalArea_DismantleInProgress", nil, true];
		_unit playActionNow "MedicStop";
		
		[_unit, "DPSO_Medical_Area_Dismantle_1"] call DPSO_fnc_stop3dSound;
		
	};
	
	
};
