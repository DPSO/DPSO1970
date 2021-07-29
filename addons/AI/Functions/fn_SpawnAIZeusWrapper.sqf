/*
Function: dpso_fnc_SpawnAIZeusWrapper

Description:
	Wraps calls to dpso_fnc_SpawnAI for use with the Zeus Modules.

Arguments:
	_side - The side of the AI to spawn <STRING>
	_pos - Position of the module <ARRAY/POS3D>

Return Values:
	None

Examples:
    Nothing to see here

Author:
	Mokka
*/

#define EAST_FACTIONS ["Vanilla - CSAT", "Vanilla - CSAT (Pacific)", "@UNSUNG - NVA", "S.O.G. PRAIRIE FIRE VC", "S.O.G. PRAIRIE FIRE PAVN"]
#define INDEP_FACTIONS ["Vanilla - AAF", "Vanilla - Syndikat", "S.O.G. PRAIRIE FIRE ARVN"]
#define WEST_FACTIONS ["Vanilla - NATO", "Vanilla - NATO (Pacific)", "S.O.G. PRAIRIE FIRE MACV"]

#define EAST_FACTIONS_LOOKUP ["OPF_F", "OPF_T_F", "UNSUNG_E_NVA", "O_VC", "O_PAVN"]
#define INDEP_FACTIONS_LOOKUP ["IND_F", "IND_C_F", "I_ARVN"]
#define WEST_FACTIONS_LOOKUP ["BLU_F", "BLU_T_F", "B_MACV"]

params [["_side", ""], ["_pos", [0, 0, 0]]];

if ((_side isEqualTo "") || (_pos isEqualTo [0, 0, 0])) exitWith {
	["Couldn't process wrapper call", "ErrorLog"] call YAINA_F_fnc_log;
};

// Holds the array of factions that are available for selection, based on side
_prettyNames = [];

// Is used to match the selected faction with the the internal name, by index
_lookup = [];

switch (toLower _side) do {
	case "east": {
		_prettyNames = EAST_FACTIONS;
		_lookup = EAST_FACTIONS_LOOKUP;
	};
	case "independent": {
		_prettyNames = INDEP_FACTIONS;
		_lookup = INDEP_FACTIONS_LOOKUP;
	};
	case "west": {
		_prettyNames = WEST_FACTIONS;
		_lookup = WEST_FACTIONS_LOOKUP;
	};
	default {};
};

private _dialogResult = [
	format ["Spawn AI - %1", _side],
	[
		["EDIT", "Objective Name", ["Objective Alpha"]],
		["COMBO", "Faction", [_lookup, _prettyNames, 0]],
		["EDIT", "Garrison Radius", ["100"]],
		["EDIT", "Min. Garrisoned Groups", ["0"]],
		["EDIT", "Max. Garrisoned Groups", ["0"]],
		["COMBO", "Patrol Method", [["RANDOM", "ROAD"], ["Random", "Along Roads"], 1]],
		["EDIT", "Spawn Radius", ["500"]],
		["EDIT", "Min. Infantry Patrols", ["0"]],
		["EDIT", "Max. Infantry Patrols", ["0"]],
		["EDIT", "Min. AA Infantry Squads", ["0"]],
		["EDIT", "Max. AA Infantry Squads", ["0"]],
		["EDIT", "Min. AT Infantry Squads", ["0"]],
		["EDIT", "Max. AT Infantry Squads", ["0"]],
		["EDIT", "Min. Sniper Teams", ["0"]],
		["EDIT", "Max. Sniper Teams", ["0"]],
		["EDIT", "Min. AA Vehicles", ["0"]],
		["EDIT", "Max. AA Vehicles", ["0"]],
		["EDIT", "Min. Light Vehicles", ["0"]],
		["EDIT", "Max. Light Vehicles", ["0"]],
		["EDIT", "Min. MRAPS", ["0"]],
		["EDIT", "Max. MRAPS", ["0"]],
		["EDIT", "Min. Heavy Vehicles", ["0"]],
		["EDIT", "Max. Heavy Vehicles", ["0"]],
		["EDIT", "Min. Random Vehicles", ["0"]],
		["EDIT", "Max. Random Vehicles", ["0"]]
	],
	{
		params ["_results", "_args"];

		_args params ["_pos"];

		_procResults = [];

		{
			_value = _x;

			// Process number inputs and make sure they're integers
			if !(_forEachIndex in [0, 1, 5]) then {
				_value = round (parseNumber _x);
			};

			_procResults pushBack _value;
		} forEach _results;

		_procResults params [
			"_grpPrefix",
			"_faction",
			"_garrRadius",
			"_garrisonsMin", "_garrisonsMax",
			"_patrolMethod",
			"_radius",
			"_infMin", "_infMax",
			"_infaaMin", "_infaaMax",
			"_infatMin", "_infatMax",
			"_sniperMin", "_sniperMax",
			"_vehaaMin", "_vehaaMax",
			"_vehlightMin", "_vehlightMax",
			"_vehmrapMin", "_vehmrapMax",
			"_vehheavyMin", "_vehheavyMax",
			"_vehrandMin", "_vehrandMax"
		];

		// Actually call SpawnAI, do it remotely so the server has the units and takes care of them c:
		[
			_pos,
			_grpPrefix,
			_faction,
			_garrRadius,
			[_garrisonsMin, _garrisonsMax],
			_patrolMethod,
			_radius,
			[_infMin, _infMax],
			[_infaaMin, _infaaMax],
			[_infatMin, _infatMax],
			[_sniperMin, _sniperMax],
			[_vehaaMin, _vehaaMax],
			[_vehlightMin, _vehlightMax],
			[_vehmrapMin, _vehmrapMax],
			[_vehheavyMin, _vehheavyMax],
			[_vehrandMin, _vehrandMax]
		] remoteExec ["dpso_fnc_SpawnAI", 2];
	},
	{},
	[_pos]
] call zen_dialog_fnc_create;

if !(_dialogResult) exitWith {
	["Failed to create zen dialog!", "ErrorLog"] call YAINA_F_fnc_log;
};