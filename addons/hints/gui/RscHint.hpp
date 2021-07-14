class RscStructuredText;
class RscMapControl;
class ctrlStructuredText;
class RscTitles {
	
	class DPSO_RscHint {
		idd = -1;
		name = "DPSO_RscHint";
		onLoad = "uiNamespace setVariable ['DPSO_ctrlHint', (_this select 0)];";
		movingEnable = false;
		duration = 999999999;
		fadeIn = 0;
		fadeOut = 0;
		class controls {};
	};
	
};
