/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\medical\area\functions\fn_doLightOff.sqf
 *	by Ojemineh
 *	
 *	switch light off
 *	
 *	Arguments:
 *	0: area - <OBJECT>
 *	
 *	Return:
 *	nothing
 *	
 *	Example:
 *	[area1] call DPSO_medical_area_fnc_doLightOff;
 *	
 */

// -------------------------------------------------------------------------------------------------

private ["_area"];

_area = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

if (isNull _area) exitWith {false};

// -------------------------------------------------------------------------------------------------

[_area] spawn {
	
	params ["_area"];
	
	private _lights = _area getVariable ["DPSO_MedicalArea_Lights", []];
	if (_lights isEqualTo []) exitWith {};
	
	_area setVariable ["DPSO_MedicalArea_LightOffInProgress", true, true];
	
	DPSO_MEDICAL_AREA_LIGHT_OFF_SUCCESS = false;
	DPSO_MEDICAL_AREA_LIGHT_OFF_FAILURE = false;
	
	[
		1,
		[],
		{ DPSO_MEDICAL_AREA_LIGHT_OFF_SUCCESS = true; },
		{ DPSO_MEDICAL_AREA_LIGHT_OFF_FAILURE = true; },
		localize "STR_DPSO_Medical_Area_Progress_LightOff"
	] call ACE_common_fnc_progressBar;
	
	waitUntil {if ((DPSO_MEDICAL_AREA_LIGHT_OFF_SUCCESS) || (DPSO_MEDICAL_AREA_LIGHT_OFF_FAILURE)) exitWith {true}; false};
	
	if (DPSO_MEDICAL_AREA_LIGHT_OFF_SUCCESS) exitWith {
		{deleteVehicle _x;} forEach _lights;
		_area setVariable ["DPSO_MedicalArea_Lights", nil, true];
		_area setVariable ["DPSO_MedicalArea_LightOffInProgress", nil, true];
	};
	
	if (DPSO_MEDICAL_AREA_LIGHT_OFF_FAILURE) exitWith {
		_area setVariable ["DPSO_MedicalArea_LightOffInProgress", nil, true];
	};
	
};
