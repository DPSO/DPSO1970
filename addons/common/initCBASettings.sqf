[
    QGVAR(DPSO_enabled),
    "CHECKBOX",
    "Enable Template",
    ["DPSO Settings","Mission Settings"],
    false,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(skipMissionInit),
    "CHECKBOX",
    "Skip Mission initialization",
    ["DPSO Settings","Mission Settings"],
    false,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(skipPlayerInit),
    "CHECKBOX",
    "Skip Player initialization",
    ["DPSO Settings","Mission Settings"],
    false,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(playerInitTime),
    "SLIDER",
    ["Init Time","Time to initialize the mission"],
    ["DPSO Settings","Mission Settings"],
    [10, 90, 15, 0],
    1
] call CBA_fnc_addSetting;

[
    QGVAR(missionIntro),
    "LIST",
    ["Mission Intro","Text uses intro Text on black background, UAV Intro uses 'DPSO_uavIntroMarker' marker or player position as target"],
    ["DPSO Intro","Main"],
    [[0,1,2,3],["disabled","UAV","Title Text","Type Text"],1],
    1
] call CBA_fnc_addSetting;

[
    QGVAR(introText),
    "EDITBOX",
    ["Intro Text","Text that is show when Text or UAV Intro plays"],
    ["DPSO Intro","Text Intro"],
    "[]",
    1
] call CBA_fnc_addSetting;

[
    QGVAR(uavIntroText),
    "EDITBOX",
    ["Intro Text","Text that is show when UAV Intro plays (Mission Title if empty)"],
    ["DPSO Intro","UAV Intro"],
    "",
    1
] call CBA_fnc_addSetting;

[
    QGVAR(uavIntroAltitude),
    "SLIDER",
    ["UAV Intro altitude","Altitude (in meters)"],
    ["DPSO Intro","UAV Intro"],
    [25, 3000, 100, 0],
    1
] call CBA_fnc_addSetting;

[
    QGVAR(uavIntroRadius),
    "SLIDER",
    ["UAV Intro radius","Radius of the circular movement (in meters)"],
    ["DPSO Intro","UAV Intro"],
    [25, 1000, 100, 0],
    1
] call CBA_fnc_addSetting;

[
    QGVAR(uavIntroAngle),
    "SLIDER",
    ["UAV Intro angle","Viewing angle (in degrees)"],
    ["DPSO Intro","UAV Intro"],
    [0, 360, 160, 0],
    1
] call CBA_fnc_addSetting;

[
    QGVAR(uavIntroVision),
    "LIST",
    ["UAV Intro vision","Different visions (Normal,NVG,TI)"],
    ["DPSO Intro","UAV Intro"],
    [[0,1,2,3,4,5,6,7,8,9],["Normal","NVG","White Hot","Black Hot","Light Green Hot / Darker Green cold","Black Hot / Darker Green cold","Light Red Hot / Darker Red Cold","Black Hot / Darker Red Cold","White Hot / Darker Red Cold","Thermal (Shade of Red and Green, Bodies are white)"],0],
    1
] call CBA_fnc_addSetting;

[
    QGVAR(clanName),
    "EDITBOX",
    ["Clan Name","Clan name or name of the community. Used in Hints, intro's etc."],
    ["DPSO Settings","Main Settings"],
    "CLAN NAME",
    1
] call CBA_fnc_addSetting;

[
    QGVAR(clanTag),
    "EDITBOX",
    ["Clan Tag","Clantag or shortname of the community. Used in Hints, intro's etc."],
    ["DPSO Settings","Main Settings"],
    "CLAN TAG",
    1
] call CBA_fnc_addSetting;


