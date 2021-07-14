/*
Function: DPSO_fnc_SpawnAIZeusWrapper

Description:
	Wraps calls to DPSO_fnc_SpawnAI for use with the Zeus Modules.

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

#define EAST_FACTIONS ["Vanilla - CSAT", "Vanilla - CSAT (Pacific)","@CFP - Abu Sayyaf Group", "@CFP - Al Qaeda", "@CFP - Al-Shabaab", "@CFP - Ansar Allah (Houthis)", "@CFP - Boko Haram", "@CFP - Central African Rebels", "@CFP - Chernarussian Movement of the Red Star Winter", "@CFP - Hamas Al Qassam Brigades", "@CFP - Hezbollah", "@CFP - Iraqi Army (Hussein Regime)", "@CFP - Islamic Republic of Iran Army", "@CFP - Islamic State", "@CFP - Korean People's Army", "@CFP - Russian Ground Forces (Arid / Desert)", "@CFP - Russian National Guard", "@CFP - Sudanese Armed Forces", "@CFP - Sudan Rapid Support Forces / Janjaweed", "@CFP - Somali Rebels", "@CFP - Sudan People's Liberation Movement", "@CFP - Syrian Arab Army", "@CFP - Taliban Insurgents", "@CUP - Chernarussian Movement of the Red Star", "@CUP - Russian Federation", "@CUP - Sahrani Liberation Army", "@CUP - Takistan Army", "@CUP - Takistan Militia"]
#define EAST_FACTIONS_LOOKUP ["OPF_F", "OPF_T_F", "CFP_O_ABUSAYYAF", "CFP_O_ALQAEDA", "CFP_O_ALSHABAAB", "CFP_O_ANSARALLAH","CFP_O_BOKOHARAM", "CFP_O_CFRebels", "CFP_O_CHDKZ_SNW", "CFP_O_HAMAS", "CFP_O_HEZBOLLAH", "CFP_O_IQARMY", "CFP_O_IRARMY", "CFP_O_IS", "CFP_O_NKARMY", "CFP_O_RUARMY_DES", "CFP_O_RUMVD", "CFP_O_SDARMY", "CFP_O_SDMilitia", "CFP_O_SOREBEL", "CFP_O_SSREBELS", "CFP_O_SYARMY","CFP_O_TBAN", "CUP_O_ChDKZ", "CUP_O_RU", "CUP_O_SLA", "CUP_O_TK", "CUP_O_TK_MILITIA"]

#define INDEP_FACTIONS ["Vanilla - AAF", "Vanilla - Syndikat","@CFP - al-Nusra Front", "@CFP - Islamic State", "@CFP - Sudan People's Liberation Movement North", "@CFP - Sudan Revolutionary Front", "@CFP - South Sudan People's Defense Force", "@CFP - Tuareg Rebels", "@CFP - Western Ultranationalists", "@CUP - National Part of Chernarus", "@CUP - ION PMC", "@CUP - Royal Army Corps of Sahrani", "@CUP - Takistani Locals", "@CUP - United Nations"]
#define INDEP_FACTIONS_LOOKUP ["IND_F", "IND_C_F", "CFP_I_ALNUSRA", "CFP_I_IS", "CFP_I_SDRebels", "CFP_I_SDRebelsrf", "CFP_I_SSArmy", "CFP_I_TUAREG", "CFP_I_WestUltra", "CUP_I_NAPA", "CUP_I_PMC_ION", "CUP_I_RACS", "CUP_I_TK_GUE", "CUP_I_UN"]

#define WEST_FACTIONS ["Vanilla - NATO", "Vanilla - NATO (Pacific)", "@CFP - Afghan Army", "@CFP - Afghan Police", "@CFP - Chadian Armed Forces", "@CFP - Chernarus Defense Forces [Winter]", "@CFP - Israeli Defense Force", "@CFP - Iraqi Army", "@CFP - Iraqi Police", "@CFP - Kenyan Defense Force", "@CFP - Malian Government Forces", "@CFP - Nigerian Army", "@CFP - Peshmerga", "@CFP - Uganda People's Defense Force", "@CFP - US Army 1991 [Arid/Desert]", "@CFP - US Army 1991 [Woodland]", "@CFP - US Army 2003 [Arid/Desert]", "@CFP - US Army 2003 [Woodland]", "@CFP - US CIA (Middle East)", "@CFP - US 75th Rangers (Jungle/Woodland)", "@CFP - US Navy Seals (Arid / Desert)", "@CFP - US Navy Seals (Jungle / Woodland)", "@CFP - YPG", "@CUP - Army of the Czech Republic", "@CUP - British Armed Forces", "@CUP - Bundeswehr", "@CUP - United States Army"]
#define WEST_FACTIONS_LOOKUP ["BLU_F", "BLU_T_F", "CFP_B_AFARMY", "CFP_B_AFGPOLICE", "CFP_B_CAF", "CFP_B_CDF_SNW", "CFP_B_ILIDF", "CFP_B_IQARMY", "CFP_B_IQPOLICE", "CFP_B_KEARMY", "CFP_B_MLARMY", "CFP_B_NAARMY", "CFP_B_PESH", "CFP_B_UGARMY", "CFP_B_USARMY_1991_DES", "CFP_B_USARMY_1991_WDL", "CFP_B_USARMY_2003_DES", "CFP_B_USARMY_2003_WDL", "CFP_B_USCI", "CFP_B_USRANGERS_WDL", "CFP_B_USSEALS_DES", "CFP_B_USSEALS_WDL", "CFP_B_YPG", "CUP_B_CZ", "CUP_B_GB", "CUP_B_GER", "CUP_B_US_Army"]

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
		] remoteExec ["DPSO_fnc_SpawnAI", 2];
	},
	{},
	[_pos]
] call zen_dialog_fnc_create;

if !(_dialogResult) exitWith {
	["Failed to create zen dialog!", "ErrorLog"] call YAINA_F_fnc_log;
};
