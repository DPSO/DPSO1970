class CfgVehicles {
    // Box
    class NATO_Box_Base {
        class EventHandlers;
    };
    class CLASS(DPSO_resupply): NATO_Box_Base {
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
			init="[this,10,true,true] call DPSO_fnc_AmmoCrate;";
		};
        displayName = "DPSO Resupply";
        model="A3\Weapons_F\Ammoboxes\AmmoVeh_F";
		icon="iconCrateVeh";
		slingLoadCargoMemoryPoints[]=
		{
			"SlingLoadCargo1",
			"SlingLoadCargo2",
			"SlingLoadCargo3",
			"SlingLoadCargo4"
		};
        class EventHandlers: EventHandlers
        {
		init = "[this,10,true,true] call DPSO_fnc_AmmoCrate;";
        };
        editorPreview="\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_AmmoVeh_F.jpg";
		_generalMacro="Box_NATO_AmmoVeh_F";
		hiddenSelectionsTextures[]=
		{
			"z\dpso\addons\Equipment\data\dpsobox_signs_ca.paa",
            "z\dpso\addons\Equipment\data\ammodpso_co.paa",
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
	class CLASS(DPSO_arsenal): NATO_Box_Base {
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
        class EventHandlers: EventHandlers
        {
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
	class CLASS(DPSO_Carsenal): NATO_Box_Base {
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
        displayName = "DPSO Casual Arsenal";
        model="A3\Weapons_F\Ammoboxes\AmmoVeh_F";
		icon="iconCrateVeh";
		slingLoadCargoMemoryPoints[]=
		{
			"SlingLoadCargo1",
			"SlingLoadCargo2",
			"SlingLoadCargo3",
			"SlingLoadCargo4"
		};
        class EventHandlers: EventHandlers
        {
        };
        editorPreview="\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_AmmoVeh_F.jpg";
		_generalMacro="Box_NATO_AmmoVeh_F";
		hiddenSelectionsTextures[]=
		{
            "z\dpso\addons\Equipment\data\dpsobox_signs_ca.paa",
			"z\dpso\addons\Equipment\data\ammodpsoCA_co.paa"
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
	class CLASS(DPSO_Iarsenal): NATO_Box_Base {
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
			init="[this,10,true,true] call DPSO_fnc_AmmoCrate;";
		};
        displayName = "DPSO Incognito Arsenal";
        model="A3\Weapons_F\Ammoboxes\AmmoVeh_F";
		icon="iconCrateVeh";
		slingLoadCargoMemoryPoints[]=
		{
			"SlingLoadCargo1",
			"SlingLoadCargo2",
			"SlingLoadCargo3",
			"SlingLoadCargo4"
		};
        class EventHandlers: EventHandlers
        {
        };
        editorPreview="\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_AmmoVeh_F.jpg";
		_generalMacro="Box_NATO_AmmoVeh_F";
		hiddenSelectionsTextures[]=
		{
            "z\dpso\addons\Equipment\data\dpsobox_signs_ca.paa",
			"z\dpso\addons\Equipment\data\ammodpsoIA_co.paa"
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

    class TFAR_Bag_Base;
	class TFAR_anprc155;

    class dpso_TFAR_155_Base  : TFAR_anprc155 {
        author = "YonV";
        scope = 0;
        scopeCurator = 0;
        scopeArsenal = 0;
		tf_encryptionCode = "tf_west_radio_code";

    };
    class dpso_TFAR_PRC155_PACK : dpso_TFAR_155_Base {
        displayName = "DPSO PRC 155";
		model = "\gm\gm_characters\gm_dk_characters\gm_dk_backpack_73";
		picture = "\A3\Weapons_F\Ammoboxes\Bags\data\ui\backpack_CA.paa";
		hiddenSelections[] = {"tex_01","tex_02","cord_01","rank_01","armband_l","armband_r","clan","insignia","letter_01","letter_02","letter_03","letter_04","letter_05","letter_06","letter_07","letter_08","letter_09","letter_10"};
        hiddenSelectionsTextures[] = {"\gm\gm_characters\gm_dk_characters\data\backpack\gm_dk_backpack_73_oli_co"};
		maximumLoad = 200;
        mass = 130;
        scope = 2;
        scopeCurator = 2;
        scopeArsenal = 2;
    };
	class dpso_TFAR_Kombat : dpso_TFAR_155_Base {
        displayName = "DPSO Kombat Radio";
		model = "CUP\Weapons\CUP_Weapons_Backpacks\kombat_radio.p3d";
		picture = "CUP\Weapons\CUP_Weapons_Backpacks\data\ui\Brit_PackCom_ca.paa";
		hiddenSelections[] = {"Camo"};
        hiddenSelectionsTextures[] = {"\gm\gm_characters\gm_dk_characters\data\backpack\gm_dk_backpack_73_oli_co"};
		maximumLoad = 200;
        mass = 130;
        scope = 2;
        scopeCurator = 2;
        scopeArsenal = 2;
    };
};

