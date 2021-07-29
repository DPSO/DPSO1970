/*
Function: dpso_fnc_MedicalSupplies

Description:
	Used to configure basic container medical state.

Arguments:
	_container - Container the setup is applied to. <OBJECT>
	_Type - Equipment setup to add. <STRING>
	_purge - Clear the container's inventory before adding supplies? <BOOLEAN>

Examples:
	(begin example)
		[this] call dpso_fnc_MedicalSupplies;
		[this, "MERT", true] call dpso_fnc_MedicalSupplies;
	(end)

Author:
	MitchJC
*/
if (!isServer) exitwith {};

params [
	"_container",
	["_Type", "NONE"],
	["_purge", false]
];

private _VarType = _container getVariable ["dpso_Equipment_Select", -1];

call {
	if (_VarType isEqualto 0) exitwith {_Type = "Limited"};
	if (_VarType isEqualto 1) exitwith {_Type = "Standard"};
	if (_VarType isEqualto 2) exitwith {_Type = "MERT"};
};

if (_Type isEqualTo "NONE") exitWith {};

private ["_ContainerItems"];

call {
	if (_Type isEqualTo "Limited") exitwith {
		if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
			_ContainerItems = [
				["Chemlight_blue", 1],
				["Chemlight_green", 1],
				["Chemlight_red", 1]
			];
		} else {
			_ContainerItems = [
				["vn_b_item_firstaidkit", 20]
			];
		};
	};
	if (_Type isEqualTo "Standard") exitwith {
		if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
			_ContainerItems = [
				["Chemlight_blue", 1],
				["Chemlight_green", 1],
				["Chemlight_red", 1]
			];
		} else {
			_ContainerItems = [
				["vn_b_item_firstaidkit", 30],
				["Medikit", 2]
			];
		};
	};
	if (_Type isEqualTo "MERT") exitwith {
		if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
			_ContainerItems = [
				["vn_b_item_firstaidkit", 50],
				["vn_b_item_medikit_01", 2]
			];
		} else {
			_ContainerItems = [
				["vn_b_item_firstaidkit", 50],
				["vn_b_item_medikit_01", 2]
			];
		};
	};
};

if (_purge) then {
	clearItemCargoGlobal _container;
};

{_container addItemCargoGlobal _x} foreach _ContainerItems
