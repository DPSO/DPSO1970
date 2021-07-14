/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\dpso\addons\medical\supplies\functions\fn_doUnpackFirstAid.sqf
 *	by Ojemineh
 *	
 *	unpack medical supplies
 *	
 *	Arguments:
 *	0: unit - <OBJECT>
 *	
 *	Return:
 *	nothing
 *	
 *	Example:
 *	[player] call DPSO_medical_supplies_fnc_doUnpackFirstAid;
 *	
 */

// -------------------------------------------------------------------------------------------------

private ["_unit"];

_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

if (isNull _unit) exitWith {};

// -------------------------------------------------------------------------------------------------

[_unit] spawn {
	
	params ["_unit"];
	
	_unit playAction "Gear";
	
	if (vehicle _unit != _unit) then {
		playSound "DPSO_Medical_FirstAid_Open_1";
	} else {
		private _pitch = random [0.6, 1, 1.4];
		[_unit, "DPSO_Medical_FirstAid_Open_1", [], 30, 1000, -1, _pitch] call DPSO_fnc_play3dSound;
	};
	
	DPSO_MEDICAL_SUPPLIES_UNPACK_SUCCESS = false;
	DPSO_MEDICAL_SUPPLIES_UNPACK_FAILURE = false;
	
	[
		2,
		[],
		{ DPSO_MEDICAL_SUPPLIES_UNPACK_SUCCESS = true; },
		{ DPSO_MEDICAL_SUPPLIES_UNPACK_FAILURE = true; },
		localize "STR_DPSO_Medical_Supplies_Progress_FirstAid",
		{true},
		["isNotInside", "isNotSitting", "isNotSwimming"]
	] call ACE_common_fnc_progressBar;
	
	waitUntil {if ((DPSO_MEDICAL_SUPPLIES_UNPACK_SUCCESS) || (DPSO_MEDICAL_SUPPLIES_UNPACK_FAILURE)) exitWith {true}; false};
	
	if (DPSO_MEDICAL_SUPPLIES_UNPACK_SUCCESS) exitWith {
		
		_unit removeItem "DPSO_FirstAid";
		
		private _order = [1,2,3];
		private _overflow = false;
		
		if ((missionNamespace getVariable ["ace_medical_level", 0]) >= 2) then {
			[_unit, "ACE_fieldDressing",	8, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_elasticBandage",	5, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_packingBandage",	5, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_quikClot",			5, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_salineIV_500",		2, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_epinephrine",		5, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_morphine",			5, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_tourniquet",		4, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "AFMED_apap",		2, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_adenosine",		1, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_atropine",			1, _order, _overflow] call DPSO_fnc_addItem;
			// [_unit, "kat_chestSeal",		1, _order, _overflow] call DPSO_fnc_addItem;
			// [_unit, "kat_larynx",			1, _order, _overflow] call DPSO_fnc_addItem;
			// [_unit, "kat_guedel",			1, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_splint",			1, _order, _overflow] call DPSO_fnc_addItem;
			// [_unit, "kat_aatKit",			1, _order, _overflow] call DPSO_fnc_addItem;

		} else {
			[_unit, "ACE_fieldDressing",	4, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "AFMED_apap",		1, _order, _overflow] call DPSO_fnc_addItem;
			[_unit, "ACE_tourniquet",		4, _order, _overflow] call DPSO_fnc_addItem;
            [_unit, "ACE_adenosine",		1, _order, _overflow] call DPSO_fnc_addItem;
            [_unit, "ACE_EarPlugs",			1, _order, _overflow] call DPSO_fnc_addItem;
		};
		
	//	[_unit, "MedicalGarbage_01_FirstAidKit_F"] call DPSO_fnc_createLitter;
		
		_unit playActionNow "Stand";
		
	};
	
	if (DPSO_MEDICAL_SUPPLIES_UNPACK_FAILURE) exitWith {
		
		[_unit, "DPSO_Medical_FirstAid_Open_1"] call DPSO_fnc_stop3dSound;
		
		_unit playActionNow "Stand";
		
	};
	
};
