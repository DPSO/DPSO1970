/*
    Author: Freddo

    Creates a debriefing section for admins containing all
    log messasges sent during the mission.
    Displayed in mission debriefing screen.

    Include this file in description.ext of your mission

    Example:
    class CfgDebriefingSections {
        #include "\z\dpso\addons\adminmenu\debriefAdminLog.inc"
    };
*/

class dpso_adminlog
{
    title = "DPSO Log";
    variable = "DPSO_adminmenu_debrief";
};
