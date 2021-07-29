class CfgFunctions {
	
	class dpso_Hints {
		
		tag = "dpso_hints";
		
		class Hints {
			file = "\z\dpso\addons\hints\functions";
			class cleanup {};
			class initialize {};
			class initSettings {};
		};
		
	};

	class dpso_Hints_Functions {
		
		tag = "dpso";
		
		class Hints {
			file = "\z\dpso\addons\hints\functions";
			class hint {};
			class hintGlobal {};
		};
		
	};
		
	class dpso_Hints_CBA {
		
		tag = "cba";
		
		class cba_ui {
			file = "z\dpso\addons\hints\functions\cba_ui";
			class notify {};
			class notifyEx { recompile = 1; file = "\x\cba\addons\ui\fnc_notify.sqf"; };
		};
		
	};
	
};
