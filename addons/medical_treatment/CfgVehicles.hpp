class CfgVehicles {
    // Apap litter
    class Leaflet_05_F;
    class AFMED_MedicalLitter_apap: Leaflet_05_F {
        hiddenSelectionsTextures[] = {QPATHTOF(data\apap_litter.paa)};
    };

    // Apap item
    class Item_Base_F;
    class AFMED_apapItem: Item_Base_F {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(Apap_DisplayName);
        author = "ArmaForces";
        icon = QPATHTOF(ui\icons\apap.paa);
        model = "\A3\Structures_F_EPA\Items\Medical\PainKillers_F.p3d";
        vehicleClass = "Items";
        class TransportItems {
            MACRO_ADDITEM(AFMED_apap,1);
        };
    };
};
