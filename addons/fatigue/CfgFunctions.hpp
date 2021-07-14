class CfgFunctions {
	
	class DPSO_Fatigue {
		
		tag = "dpso_fatigue";
		
		class Recline {
			file = "z\dpso\addons\fatigue\functions";
			class initialize {};
			class initSettings {};
		};
		
	};
	
	class DPSO_Fatigue_ACE {
		
		tag = "ace_advanced_fatigue";
		
		class ace_advanced_fatigue {
			file = "z\dpso\addons\fatigue\functions\ace_advanced_fatigue";
			class handleEffects {};
		};
		
	};
	
};
