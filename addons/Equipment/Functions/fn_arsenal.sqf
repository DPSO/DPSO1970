/*
Arguments:
0: items only misc items <ARRAY of STRING>
1: tooltip <STRING> (Optional)
2: picture path <STRING> (Optional)
3: override a spezific button (0-9) <NUMBER> (Optional)

Return Value:
successful: number of the slot; error: -1 <NUMBER>

Example:

call DPSO_fnc_arsenal;

Public: Yes
*/

[
    ["ACE_DAGR","ALIVE_Tablet","gm_radio_sem52a","TRU_PRC119_Blade_Fld","TRU_PRC119_Mixed","TRU_PRC119_Whip_Ret"],
    "Tech",
    "\a3\ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa"
] call ace_arsenal_fnc_addRightPanelButton;

[
    ["DPSO_FirstAid","DPSO_MedicArea","DPSO_MedicKit","kat_aatKit","kat_accuvac","ACE_adenosine","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","ACE_SterileGauze","kat_crossPanel","kat_bloodIV_O","kat_bloodIV_A","kat_bloodIV_AB","kat_bloodIV_B","kat_bloodIV_O_250","kat_bloodIV_A_250","kat_bloodIV_AB_250","kat_bloodIV_B_250","kat_bloodIV_O_500","kat_bloodIV_A_500","kat_bloodIV_AB_500","kat_bloodIV_B_500","ACE_bodyBag","gm_ge_army_burnBandage","kat_chestSeal","ACE_EarPlugs","ACE_epinephrine","Empty_bloodIV_250","Empty_bloodIV_500","kat_guedel","kat_larynx","ACE_morphine","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","kat_Pulseoximeter","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_splint","kat_stethoscope","ACE_surgicalKit","ACE_tourniquet","kat_Painkiller"],
    "Medical",
    "\z\ace\addons\medical_gui\data\categories\medication.paa"
] call ace_arsenal_fnc_addRightPanelButton;

[
    ["ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed"],
    "Paint",
    "\z\ace\addons\arsenal\data\iconCustom.paa"
] call ace_arsenal_fnc_addRightPanelButton;
