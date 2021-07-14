class CBA_Extended_EventHandlers;
class CfgVehicles {
	
	// INTERACTIONS
	
	class Man;
	class CAManBase: Man {
		
		// exceptions[] = {"isNotDead", "isNotUnconscious", "isNotSurrendering", "isNotHandcuffed", "isNotCarrying", "isNotDragging", "isNotEscorting", "isNotSwimming", "isNotRefueling", "isNotOnLadder", "isNotSitting", "isNotInside", "isNotInZeus", "notOnMap"};
		
		class ACE_SelfActions {
			class ACE_Equipment {
				class DPSO_Medical_Area_Action_Construct {
					displayName = "$STR_DPSO_Medical_Area_Action_Construct";
					condition = "[_player] call DPSO_medical_area_fnc_canConstruct";
					statement = "[_player] call DPSO_medical_area_fnc_doConstruct";
					exceptions[] = {"isNotInside", "isNotSitting", "isNotSwimming"};
					icon = "\z\dpso\addons\medical\data\icons\medical_cross_ca.paa";
					showDisabled = 0;
				};
			};
		};
		
	};
	
	// MEDICAL AREA
	
	class Item_Base_F;
	class DPSO_Item_MedicArea: Item_Base_F {
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		author = "$STR_DPSO_Medical_Area_Author";
		displayName = "$STR_DPSO_Item_Medical_Area_DisplayName";
		editorPreview = "\z\dpso\addons\medical\area\data\previews\medical_area.jpg";
		vehicleClass = "Items";
		class TransportItems {
			MACRO_ADDITEM(DPSO_MedicArea,1);
		};
	};
	
};
