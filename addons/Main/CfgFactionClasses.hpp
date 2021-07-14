class CfgFactionClasses {    
    class NO_CATEGORY;
    class CLASS(BLU)  {
        displayName = PREFIX;//Faction name in-game
        icon = LOGO_PATH;
		priority = 0;
		side = 1; // 1 Blufor 2 opfor 3 independant.
    };
    class CLASS(IND) {
        displayName = PREFIX;
        icon = LOGO_PATH;
        side = 2;
        priority = 2;
    };
    class DPSO_Modules: NO_CATEGORY
	{
		displayName = PREFIX;
	};
};