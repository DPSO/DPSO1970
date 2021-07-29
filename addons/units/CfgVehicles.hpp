class CBA_Extended_EventHandlers_base;

/*******************************************************************************************************************************************************************
 *                [["VN_XM177","","","",["VN_M16_20_T_MAG",18],[],""],[],["VN_M1911","","","",["VN_M1911_MAG",7],[],""],["VN_B_UNIFORM_MACV_05_06",                *
 * [["VN_B_ITEM_FIRSTAIDKIT",1],["VN_M61_GRENADE_MAG",2,1],["VN_M16_20_T_MAG",3,18]]],["VN_B_VEST_USARMY_01",[["VN_M1911_MAG",1,7]]],[],"VN_B_BOONIE_02_06","",[], *
 *                                   ["VN_B_ITEM_MAP","","VN_B_ITEM_RADIO_URC10","VN_B_ITEM_COMPASS_SOG","VN_B_ITEM_WATCH",""]]                                    *
 *******************************************************************************************************************************************************************/



class CfgVehicles {

    class vn_b_men_sog_base;
    class vn_b_men_sog_base_OCimport_01 : vn_b_men_sog_base { scope = 0; class EventHandlers; };
    class vn_b_men_sog_base_OCimport_02 : vn_b_men_sog_base_OCimport_01 { class EventHandlers; };

    class CLASS(Unit_Combat_dpso_Base): vn_b_men_sog_base_OCimport_02 {
        author = AUTHOR;
        scope = 2;
        scopeCurator = 2;
        side = 1;
        faction = QCLASS(BLU);

        uniformClass = "VN_B_UNIFORM_MACV_05_06";
        weapons[] = {"VN_XM177", "VN_M1911", "Throw", "Put"};
        respawnWeapons[] = {"VN_XM177", "VN_M1911", "Throw", "Put"};
        magazines[] = {ITEMS_8(VN_M16_20_T_MAG), ITEMS_2(VN_M61_GRENADE_MAG), ITEMS_2(Chemlight_green), ITEMS_2(VN_M1911_MAG)};
        respawnMagazines[] = {ITEMS_8(VN_M16_20_T_MAG), ITEMS_2(VN_M61_GRENADE_MAG), ITEMS_2(Chemlight_green), ITEMS_2(VN_M1911_MAG)};
        items[] = {ITEMS_4(vn_b_item_firstaidkit)};
        respawnItems[] = {ITEMS_4(vn_b_item_firstaidkit)}; 
        linkedItems[] = {"VN_B_VEST_USARMY_01", "VN_B_BOONIE_02_06", "", "VN_B_ITEM_MAP", "VN_B_ITEM_COMPASS_SOG", "VN_B_ITEM_WATCH", "VN_B_ITEM_RADIO_URC10", "", "", "", "", "", "", "", ""};
        respawnLinkedItems[] = {"VN_B_VEST_USARMY_01", "VN_B_BOONIE_02_06", "", "VN_B_ITEM_MAP", "VN_B_ITEM_COMPASS_SOG", "VN_B_ITEM_WATCH", "VN_B_ITEM_RADIO_URC10", "", "", "", "", "", "", "", ""};

        class EventHandlers : EventHandlers {
            class CBA_Extended_EventHandlers : CBA_Extended_EventHandlers_base {};
        };
    };

    class CLASS(Unit_Combat_dpso_Pilot): vn_b_men_sog_base_OCimport_02 {
        author = AUTHOR;
        scope = 2;
        scopeCurator = 2;
        side = 1;
        faction = QCLASS(BLU);

        uniformClass = "VN_B_UNIFORM_MACV_05_06";
        weapons[] = {"VN_XM177", "VN_M1911", "Throw", "Put"};
        respawnWeapons[] = {"VN_XM177", "VN_M1911", "Throw", "Put"};
        magazines[] = {ITEMS_8(VN_M16_20_T_MAG), ITEMS_2(VN_M61_GRENADE_MAG), ITEMS_2(Chemlight_green), ITEMS_2(VN_M1911_MAG)};
        respawnMagazines[] = {ITEMS_8(VN_M16_20_T_MAG), ITEMS_2(VN_M61_GRENADE_MAG), ITEMS_2(Chemlight_green), ITEMS_2(VN_M1911_MAG)};
        items[] = {ITEMS_4(vn_b_item_firstaidkit)};
        respawnItems[] = {ITEMS_4(vn_b_item_firstaidkit)}; 
        linkedItems[] = {"VN_B_VEST_USARMY_01", "VN_B_BOONIE_02_06", "", "VN_B_ITEM_MAP", "VN_B_ITEM_COMPASS_SOG", "VN_B_ITEM_WATCH", "VN_B_ITEM_RADIO_URC10", "", "", "", "", "", "", "", ""};
        respawnLinkedItems[] = {"VN_B_VEST_USARMY_01", "VN_B_BOONIE_02_06", "", "VN_B_ITEM_MAP", "VN_B_ITEM_COMPASS_SOG", "VN_B_ITEM_WATCH", "VN_B_ITEM_RADIO_URC10", "", "", "", "", "", "", "", ""};

        class EventHandlers : EventHandlers {
            class CBA_Extended_EventHandlers : CBA_Extended_EventHandlers_base {};
        };
    };

    class CLASS(operator_990) : CLASS(Unit_Combat_dpso_Base) {
        author = AUTHOR;
        scope = 2;
        displayName = "Operator 990";
        
        class EventHandlers : EventHandlers {
            class CBA_Extended_EventHandlers : CBA_Extended_EventHandlers_base {};
        };
    };

    class CLASS(operator_991) : CLASS(Unit_Combat_dpso_Base) {
        author = AUTHOR;
        scope = 2;
        displayName = "Operator 991";

        class EventHandlers : EventHandlers {
            class CBA_Extended_EventHandlers : CBA_Extended_EventHandlers_base {};
        };
    };

    class CLASS(operator_992) : CLASS(Unit_Combat_dpso_Base) {
        author = AUTHOR;
        scope = 2;
        displayName = "Operator 992";

        class EventHandlers : EventHandlers {
            class CBA_Extended_EventHandlers : CBA_Extended_EventHandlers_base {};
        };
    };

    class CLASS(operator_993) : CLASS(Unit_Combat_dpso_Base) {
        author = AUTHOR;
        scope = 2;
        displayName = "Operator 993";

        class EventHandlers : EventHandlers {
            class CBA_Extended_EventHandlers : CBA_Extended_EventHandlers_base {};
        };
    };

    class CLASS(operator_995) : CLASS(Unit_Combat_dpso_Base) {
        author = AUTHOR;
        scope = 2;
        displayName = "Operator 995";

        class EventHandlers : EventHandlers {
            class CBA_Extended_EventHandlers : CBA_Extended_EventHandlers_base {};
        };
    };

    class CLASS(flight_crew_999) : CLASS(Unit_Combat_dpso_Pilot) {
        author = AUTHOR;
        scope = 2;
        displayName = "Pilot 999";


        class EventHandlers : EventHandlers {
            class CBA_Extended_EventHandlers : CBA_Extended_EventHandlers_base {};
        };
    };        
};

