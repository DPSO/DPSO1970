class CfgVehicles {
    class Flag_White_F;
    class dpso_Flag_White: Flag_White_F
    {
        author="Mokka";

        editorPreview="\z\dpso\addons\media\images\dpso_Flag_White.paa";
        _generalMacro="dpso_Flag_White";
        displayName="Flag (Last Resort Gaming, White)";
        class EventHandlers
        {
            init="(_this select 0) setFlagTexture ""\z\dpso\addons\media\images\dpso_Flag_White.paa""";
        };
    };
    class dpso_Flag_Black: Flag_White_F
    {
        author="Mokka";

        editorPreview="\z\dpso\addons\media\images\dpso_Flag_Black.paa";
        _generalMacro="dpso_Flag_Black";
        displayName="Flag (Last Resort Gaming, Black)";
        class EventHandlers
        {
            init="(_this select 0) setFlagTexture ""\z\dpso\addons\media\images\dpso_Flag_Black.paa""";
        };
    };
};