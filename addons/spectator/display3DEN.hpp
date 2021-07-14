class ctrlMenuStrip;
class display3DEN
{
    class Controls
    {
        class MenuStrip : ctrlMenuStrip
        {
            class Items
            {
                class DPSO_Folder {
                    items[] += {"DPSO_Spectator_Settings"};
                };
                class DPSO_Spectator_Settings
                {
                    text = "DPSO Spectator Settings";
                    action = "edit3DENMissionAttributes 'DPSO_Spectator_Settings';";
                    picture = "\z\dpso\addons\media\images\Icons\icon_gear_ca.paa";
                };
            };
        };
    };
};