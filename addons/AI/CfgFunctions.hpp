class dpso_AI {

	tag = "dpso";
	class AI {

		file = "z\dpso\addons\AI\Functions";
		class InfantryGarrison {};
		class moduleAISpawns {};
		class SetInitialAI {};
		class SetUnitSkill {};
		class SpawnAI {};
		class SpawnAIZeusWrapper {};
		class RoadPatrol {};
		class GetAvailableFactions {};
	};

	class Civilian {

		file = "z\dpso\addons\AI\Functions\Civilians";
		class CivBreakPatrol {};
		class CivilianGarrison {};
		class CivilianPatrol {};
		class SpawnCivilians {};
		class moduleCivilianSpawns {};
		class SpawnCivZeusWrapper {};
	};

	class Civilian_Factions {

		file = "z\dpso\addons\AI\Functions\Factions\Civilian";
		class CIV_F {};
		class VN_C {};
	};

	class East_Factions {

		file = "z\dpso\addons\AI\Functions\Factions\East";
		class OPF_F {};
		class O_PAVN{};
		class O_VC {};
		class OPF_T_F {};
		class UNSUNG_E_NVA {};
	};
	
	class Indep_Factions {

		file = "z\dpso\addons\AI\Functions\Factions\Indep";
		class IND_C_F {};
		class IND_F {};
		class I_ARVN {};
	};
	
	class West_Factions {

		file = "z\dpso\addons\AI\Functions\Factions\West";
		class BLU_F {};
		class BLU_T_F {};
		class B_MACV {};
	};
};

class DERP {
    tag = "DERP";

    class General {
        file = "z\dpso\addons\AI\Functions";
        class AIOccupyBuilding {};
        class randomPos {};
        class ZenOccupy {};
    };
};
