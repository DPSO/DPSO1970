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
                    items[] += {"DPSO_AutoTest"};
                };
                class DPSO_AutoTest
                {
                    text = "DPSO Autotest";
                    action = "edit3DENMissionAttributes 'DPSO_AutoTestAttributes';";
                    //picture = "\z\dpso\addons\media\images\Icons\icon_gear_ca";
                };
            };
        };
    };
};