class CfgVehicles {
    class Module_F;
    class ModuleEmpty_F;

    class ModuleCurator_F: Module_F {
		class Attributes
		{
            class dpso_Config_Zeus {
                property = QUOTE(dpso_Config_Zeus);
                control = "Checkbox";
				typeName = "BOOL";
                displayName = "dpso 1970s: Config Zeus:";
                tooltip = "Enable to allow this Zeus to have placed units use dpso AI Difficulty Settings (Settings - Addon Options)";
                expression = "if (_value isequalto true) then {[_this] call dpso_fnc_ConfigZeus;}";
                condition = "logicModule";
                defaultValue = "(true)";
			};
		};
	};


};