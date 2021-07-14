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
                    items[] += {"DPSO_Briefing"};
                };
                class DPSO_Briefing
                {
                    text = "DPSO Briefing Settings";
                    action = "edit3DENMissionAttributes 'DPSO_MissionBriefingAttributes';";
                    //picture = "\z\dpso\addons\media\images\Icons\icon_gear_ca";
                };
            };
        };
    };
};