/*
Function: DPSO_fnc_Ammobox

Description:
	Used to configure basic container Ammo state.

Arguments:
	_container - Container the setup is applied to. <OBJECT>
	_Type - Equipment setup to add. <STRING>

Examples:
	(begin example)
		[this] call DPSO_fnc_Ammobox;
		[this, "Aegis"] call DPSO_fnc_Ammobox;
	(end)

Author:
	MitchJC
*/
if (!isServer) exitwith {};



params [
	"_container",
	["_Type", "None"]
];

private _Type = _container getVariable ["DPSO_LimitedAmmoSelect", -1];

if ((_Type isEqualto -1) || (_Type isEqualTo "None")) exitwith {};

call {
	if (_Type isEqualto 0) exitwith {_Type = "DPSO1970"};

};

private ["_ContainerItems"];

call {
	if (_Type isEqualTo "DPSO1970") exitwith {
			_ContainerItems = [
				["200Rnd_556x45_Box_Tracer_Red_F",10],
				["200Rnd_65x39_cased_Box_Tracer",10],
				["20Rnd_762x51_Mag",10],
				["30Rnd_9x21_Mag_SMG_02_Tracer_Red",10],
				["HandGrenade",10],
				["SmokeShell",10],
				["3Rnd_HE_Grenade_shell",6],
				["Titan_AT",4]
			];
	};
};

{_container addItemCargoGlobal _x} foreach _ContainerItems;
