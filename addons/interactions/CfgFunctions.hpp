class CfgFunctions {
	
	class DPSO_Interactions {
		
		tag = "dpso_interactions";
		
		class Interactions {
			file = "z\dpso\addons\interactions\functions";
			class initialize {};
			class initSettings {};
		};
		
		class Inventory {
			file = "z\dpso\addons\interactions\functions\inventory";
			class backpack_canAccess {};
			class backpack_doAccess {};
			class backpack_access {};
			class gear_canAccess {};
			class gear_doAccess {};
			class gear_access {};
		};
		
		class TapShoulder {
			file = "z\dpso\addons\interactions\functions\tapshoulder";
			class tapshoulder_canTap {};
			class tapshoulder_doTap {};
			class tapshoulder_tap {};
		};
		
	};
	
};
