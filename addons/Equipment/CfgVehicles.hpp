
class CfgVehicles {
    // Box
    class NATO_Box_Base; 

	class DPSO_Arsenal: NATO_Box_Base {
        scope = 2;
        author = AUTHOR;
        mapSize=1.53;
		class SimpleObject
		{
			eden=1;
			animate[]={};
			hide[]={};
			verticalOffset=0.79000002;
			verticalOffsetWorld=0;
		};
        displayName = "DPSO Arsenal";
        model="A3\Weapons_F\Ammoboxes\AmmoVeh_F";
		icon="iconCrateVeh";
		slingLoadCargoMemoryPoints[]=
		{
			"SlingLoadCargo1",
			"SlingLoadCargo2",
			"SlingLoadCargo3",
			"SlingLoadCargo4"
		};
        editorPreview="\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_AmmoVeh_F.jpg";
		_generalMacro="Box_NATO_AmmoVeh_F";
		hiddenSelectionsTextures[]=
		{
            "z\dpso\addons\Equipment\data\dpsobox_signs_ca.paa",
			"z\dpso\addons\Equipment\data\ammodpsoA_co.paa"
		};
        class TransportMagazines
		{
		};
		class TransportWeapons
		{
		};
		class TransportItems
		{
		};
		transportAmmo=30000;
		supplyRadius=10;
    };
};

