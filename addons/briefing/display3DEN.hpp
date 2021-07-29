class ctrlMenuStrip;
class display3DEN
{
    class Controls
    {
        class MenuStrip : ctrlMenuStrip
        {
            class Items
            {
                class dpso_Folder {
                    items[] += {"dpso_Briefing"};
                };
                class dpso_Briefing
                {
                    text = "dpso Briefing Settings";
                    action = "edit3DENMissionAttributes 'dpso_MissionBriefingAttributes';";
                    //picture = "\z\dpso\addons\media\images\Icons\icon_gear_ca";
                };
            };
        };
    };
};