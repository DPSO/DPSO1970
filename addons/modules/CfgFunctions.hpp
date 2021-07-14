class CfgFunctions {
	
	class DPSO_Modules {
		
		tag = "dpso_modules";
		
		class Modules {
			file = "z\dpso\addons\modules\functions";
			class initialize {};
			class initSettings {};
		};
		
	};
	
	class DPSO_Functions {
		
		tag = "dpso";
		
		class Modules_Sound {
			file = "z\dpso\addons\modules\functions\sound";
			class moduleAmbientSound {};
			class moduleTriggerSound {};
		};
		
		class Modules_Speech {
			file = "z\dpso\addons\modules\functions\speech";
			class moduleGlobalSpeech {};
			class moduleGlobalSpeechMenu {};
			class moduleGlobalSpeechPlay {};
			class moduleTriggerSpeech {};
		};
		
	};
	
};
