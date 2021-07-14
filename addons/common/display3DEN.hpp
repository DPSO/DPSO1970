class ctrlMenuStrip;
class ctrlControlsGroupNoScrollbars;
class ctrlCheckboxToolbar;
class Separator1;

class display3DEN
{
    class Controls
    {
        class MenuStrip : ctrlMenuStrip
        {
            class Items
            {
                items[] += {"DPSO_Folder"};
                class DPSO_Folder {
                    text = "DPSO";
                    items[] = {"DPSO_Documentation"};
                };
                class DPSO_Documentation
                {
                    text = "DPSO Wiki (WIP)"; // engine adds ... to links
                    data = "HelpFeedback";
                    picture = "\a3\3DEN\Data\Controls\ctrlMenu\link_ca.paa";
                    weblink = "https://armadocs.purplesmoke.info/";
                    opensNewWindow = 1;
                };
            };
        };
        class Toolbar : ctrlControlsGroupNoScrollbars{
            class Controls {
                class Separator3: Separator1
                {
                    colorBackground[]={0,0,0,0.5};
                    x="33.5 *     (    5 * (pixelW * pixelGrid *     0.50))";
                    y="1 * (pixelH * pixelGrid *     0.50)";
                    w="pixelW";
                    h="(    5 * (pixelH * pixelGrid *     0.50))";
                };
                class DPSO_Toolbar_Controls : ctrlControlsGroupNoScrollbars {
                    idc=-1;
                    x="34.5 * (5 * (pixelW * pixelGrid *     0.50))";
                    y="1 * (pixelH * pixelGrid *     0.50)";
                    w="5 *     (    5 * (pixelW * pixelGrid *     0.50))";
                    h="(    5 * (pixelH * pixelGrid *     0.50))";
                    class Controls
                    {
                        class Garrison: ctrlCheckboxToolbar
                        {
                            idc=-1;
                            onCheckedChanged=QUOTE(GVAR(Garrison) = !GVAR(Garrison));
                            onLoad="uiNamespace setVariable [""DPSO_common_GarrisonControl"",_this select 0]; dpso_common_Garrison = false";
                            x="0 *     (    5 * (pixelW * pixelGrid *     0.50))";
                            y=0;
                            h="(    5 * (pixelH * pixelGrid *     0.50))";
                            w="(    5 * (pixelW * pixelGrid *     0.50))";
                            tooltip="DPSO: Toggle garrison on dragging units";
                            textureChecked="\z\dpso\addons\media\images\logo_dpso_small_glow_ca.paa";
                            textureUnchecked="\z\dpso\addons\media\images\logo_sm_ca.paa";
                            textureFocusedChecked="\z\dpso\addons\media\images\logo_dpso_small_glow_ca.paa";
                            textureFocusedUnchecked="\z\dpso\addons\media\images\logo_sm_ca.paa";
                            textureHoverChecked="\z\dpso\addons\media\images\logo_dpso_small_glow_ca.paa";
                            textureHoverUnchecked="\z\dpso\addons\media\images\logo_sm_ca.paa";
                            texturePressedChecked="\z\dpso\addons\media\images\logo_dpso_small_glow_ca.paa";
                            texturePressedUnchecked="\z\dpso\addons\media\images\logo_sm_ca.paa";
                            textureDisabledChecked="\z\dpso\addons\media\images\logo_dpso_small_glow_ca.paa";
                            textureDisabledUnchecked="\z\dpso\addons\media\images\logo_sm_ca.paa";
                        };
                    };
                };
            };
        };
    };
};


