class CfgWeapons {
    class ACE_ItemCore;
    class CBA_MiscItem_ItemInfo;
    class AFMED_apap: ACE_ItemCore {
        scope = 2;
        scopeCurator = 2;
        author = "ArmaForces";
        displayName = CSTRING(Apap_DisplayName);
        picture = QPATHTOF(ui\icons\apap.paa);
        model = "\A3\Structures_F_EPA\Items\Medical\PainKillers_F.p3d";
        descriptionShort = CSTRING(Apap_Desc_Short);
        descriptionUse = CSTRING(Apap_Desc_Use);
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 0.5;
        };
    };
};
