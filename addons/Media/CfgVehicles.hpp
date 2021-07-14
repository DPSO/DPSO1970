class CfgVehicles {
    class Flag_White_F;
    class DPSO_Flag_White: Flag_White_F
    {
        author="Mokka";

        editorPreview="\z\dpso\addons\media\images\tpflag.paa";
        _generalMacro="DPSO_Flag_White";
        displayName="Flag (Last Resort Gaming, White)";
        class EventHandlers
        {
            init="(_this select 0) setFlagTexture ""\z\dpso\addons\media\images\tpflag.paa""";
        };
    };
    class DPSO_Flag_Black: Flag_White_F
    {
        author="Mokka";

        editorPreview="\z\dpso\addons\media\images\tpflag.paa";
        _generalMacro="DPSO_Flag_Black";
        displayName="Flag (Last Resort Gaming, Black)";
        class EventHandlers
        {
            init="(_this select 0) setFlagTexture ""\z\dpso\addons\media\images\tpflag.paa""";
        };
    };
};
