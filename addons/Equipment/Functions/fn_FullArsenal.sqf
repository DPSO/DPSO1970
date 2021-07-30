/*
Function: dpso_fnc_FullArsenal

Description:
	Fills Arsenal with predefined equipment dependent on _Type. Each Arsenal can be a different type
	and have a different duration.

Arguments:
	_object - Object the Arsenal is applied to.  <OBJECT>
	_type - Type of Arsenal, can be "VANILLA", "3CB, or "RHS" <STRING>
	_Duration - How long in minutes until the Arsenal is removed. 0 makes it permanent. <SCALAR>

Examples:
	(begin example)
		[this] call dpso_fnc_FullArsenal;
		[this, "3CB", 50] call dpso_fnc_FullArsenal;
		[this, "VANILLA"] call dpso_fnc_FullArsenal;
		[MyAmmoCrate, "RHS", 0] call dpso_fnc_FullArsenal;
	(end)

Author:
	MitchJC
*/

if (!isServer) exitwith {};

params [
	"_object",
	["_Type", "dpso"],
	["_Duration", 0]
];

call {
	if (_Type isEqualto 0) exitwith {_Type = "dpso1970"};
};

if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
	[_object, false] call ace_arsenal_fnc_initBox;
} else {
	["AmmoboxInit", [_object, false]] call BIS_fnc_arsenal;
};

private [
	"_AvailableItems", "_AvailableHeadgear", "_AvailableGoggles",
	"_AvailableUniforms", "_AvailableVests", "_AvailableBackpacks",
	"_AvailableAttachments", "_AvailableMagazines", "_AvailableWeapons"
];

_ArsenalType = call {
	if (_Type isEqualTo "dpso1970") exitwith {
        _AvailableItems = ["ALiVE_Humrat_Item","ALiVE_Waterbottle_Item","ALIVE_Tablet","vn_b_item_toolkit","vn_b_item_trapkit","vn_b_item_wiretap","vn_b_item_watch","vn_b_item_radio_urc10","vn_b_item_compass_sog","vn_b_item_compass","vn_b_item_medikit_01","vn_b_item_firstaidkit","vn_b_item_map","vn_m19_binocs_grn","vn_m19_binocs_grey","vn_mk21_binocs","vn_anpvs2_binoc","uns_AC47_RC","ItemWatch","ItemCompass"];

        _AvailableHeadgear = ["vn_b_bandana_01","vn_b_bandana_02","vn_b_bandana_03","vn_b_bandana_04","vn_b_bandana_05","vn_b_bandana_06","vn_b_bandana_07","vn_b_beret_01_01","vn_b_beret_01_02","vn_b_beret_01_03","vn_b_beret_01_04","vn_b_beret_01_05","vn_b_beret_01_06","vn_b_boonie_01_01","vn_b_boonie_01_02","vn_b_boonie_01_03","vn_b_boonie_01_04","vn_b_boonie_01_05","vn_b_boonie_01_06","vn_b_boonie_01_07","vn_b_boonie_02_01","vn_b_boonie_02_02","vn_b_boonie_02_03","vn_b_boonie_02_04","vn_b_boonie_02_05","vn_b_boonie_02_06","vn_b_boonie_02_07","vn_b_boonie_03_01","vn_b_boonie_03_02","vn_b_boonie_03_03","vn_b_boonie_03_04","vn_b_boonie_03_05","vn_b_boonie_03_06","vn_b_boonie_03_07","vn_b_boonie_04_01","vn_b_boonie_04_02","vn_b_boonie_04_03","vn_b_boonie_04_04","vn_b_boonie_04_05","vn_b_boonie_04_06","vn_b_boonie_04_07","vn_b_boonie_05_01","vn_b_boonie_05_02","vn_b_boonie_05_03","vn_b_boonie_05_04","vn_b_boonie_05_05","vn_b_boonie_05_06","vn_b_boonie_05_07","vn_b_headband_01","vn_b_headband_02","vn_b_headband_03","vn_b_headband_04","vn_b_headband_05","vn_b_helmet_aph6_01_01","vn_b_helmet_aph6_01_02","vn_b_helmet_aph6_01_03","vn_b_helmet_aph6_01_04","vn_b_helmet_aph6_01_05","vn_b_helmet_aph6_02_01","vn_b_helmet_aph6_02_02","vn_b_helmet_aph6_02_03","vn_b_helmet_aph6_02_04","vn_b_helmet_aph6_02_05","vn_b_helmet_m1_01_01","vn_b_helmet_m1_01_02","vn_b_helmet_m1_02_01","vn_b_helmet_m1_02_02","vn_b_helmet_m1_03_01","vn_b_helmet_m1_03_02","vn_b_helmet_m1_04_01","vn_b_helmet_m1_04_02","vn_b_helmet_m1_05_01","vn_b_helmet_m1_05_02","vn_b_helmet_m1_06_01","vn_b_helmet_m1_06_02","vn_b_helmet_m1_07_01","vn_b_helmet_m1_07_02","vn_b_helmet_m1_08_01","vn_b_helmet_m1_08_02","vn_b_helmet_m1_09_01","vn_b_helmet_m1_09_02","vn_b_helmet_sog_01","vn_b_helmet_svh4_01_01","vn_b_helmet_svh4_01_02","vn_b_helmet_svh4_01_03","vn_b_helmet_svh4_01_04","vn_b_helmet_svh4_01_05","vn_b_helmet_svh4_01_06","vn_b_helmet_svh4_02_01","vn_b_helmet_svh4_02_02","vn_b_helmet_svh4_02_03","vn_b_helmet_svh4_02_04","vn_b_helmet_svh4_02_05","vn_b_helmet_svh4_02_06","vn_b_helmet_t56_01_01","vn_b_helmet_t56_01_02","vn_b_helmet_t56_01_03","vn_b_helmet_t56_02_01","vn_b_helmet_t56_02_02","vn_b_helmet_t56_02_03","uns_simc_M1_erdl_op_2","uns_simc_M1_erdl_up","uns_simc_M1_erdl_ns","uns_simc_M1_erdl_op","uns_simc_M1_erdl_swdg","uns_simc_m1_bitch_b8","uns_simc_m1_bitch_b5","uns_simc_m1_bitch_b2_alt","uns_simc_m1_bitch_b2","uns_simc_m1_bitch_b","uns_simc_m1_bitch_b1_alt","uns_simc_m1_bitch_b1","uns_simc_m1_bitch_low_op","uns_simc_m1_bitch_op_2","uns_simc_m1_bitch_low_rot","uns_simc_m1_bitch_low","uns_simc_m1_bitch_ns","uns_simc_m1_bitch_up","uns_simc_m1_bitch_op","uns_simc_m1_bitch_flip_b8","uns_simc_m1_bitch_flip_b6","uns_simc_m1_bitch_flip_b5","uns_simc_m1_bitch_flip_b2_alt","uns_simc_m1_bitch_flip_b2","uns_simc_m1_bitch_flip_b","uns_simc_m1_bitch_flip_b1_alt","uns_simc_m1_bitch_flip_b1","uns_simc_m1_bitch_flip_op_2","uns_simc_m1_bitch_flip_low","uns_simc_m1_bitch_flip_up","uns_simc_m1_bitch_flip_op","uns_simc_m1_bitch_flip_b7","uns_simc_m1_bitch_flip_b4","uns_simc_m1_bitch_flip_swdg","uns_simc_m1_bitch_b7","uns_simc_m1_bitch_b4","uns_simc_m1_bitch_swdg","uns_simc_MC_M1_bitch_op","uns_simc_MC_M1_bitch_ns","uns_simc_MC_M1_bitch_low","uns_simc_MC_M1_bitch_low_rot","uns_simc_MC_M1_bitch_op_2","uns_simc_MC_M1_bitch_erla","uns_simc_MC_M1_bitch_flip_op_2","uns_simc_MC_M1_bitch_flip_low","uns_simc_MC_M1_bitch_flip_ns","uns_simc_MC_M1_bitch_flip_op","uns_simc_MC_M1_bitch_flip_b1","uns_simc_MC_M1_bitch_flip_b","uns_simc_MC_M1_bitch_flip_b2","uns_simc_MC_M1_bitch_flip_low_ben","uns_simc_MC_M1_bitch_flip_ben","uns_simc_MC_M1_bitch_flip_b9","uns_simc_MC_M1_bitch_flip_b8","uns_simc_MC_M1_bitch_flip_b6","uns_simc_MC_M1_bitch_flip_b7","uns_simc_MC_M1_bitch_b9","uns_simc_MC_M1_bitch_low_ben","uns_simc_MC_M1_bitch_ben","uns_simc_MC_M1_bitch_low_ben_op","uns_simc_MC_M1_bitch_b8","uns_simc_MC_M1_bitch_b6","uns_simc_MC_M1_bitch_b1","uns_simc_MC_M1_bitch_b5","uns_simc_MC_M1_bitch_b2","uns_simc_MC_M1_bitch_b","uns_simc_MC_M1_bitch_b7","uns_simc_MC_M1_bitch_b4","uns_simc_MC_M1_muggen","uns_simc_MC_M1_muggen_B","uns_simc_MC_M1_muggen_c","uns_simc_MC_M1C_bitch_b1","uns_simc_MC_M1C_bitch_b","uns_simc_MC_M1C_bitch_b2","uns_simc_MC_M1C_bitch_b9","uns_simc_MC_M1C_bitch_b6","uns_simc_MC_M1C_bitch_b5","uns_simc_MC_M1C_bitch_b7","uns_Simc_MC_hat_1","uns_Simc_MC_hat_3","uns_Simc_MC_hat_2","uns_Simc_MC_hat_erdl_3","uns_Simc_MC_hat_erdl_2","uns_Simc_MC_hat_erdl_1","uns_h_simc_Boon_green_5","uns_h_simc_Boon_green_6","uns_h_simc_Boon_green_7","uns_h_simc_Boon_green_3","uns_h_simc_Boon_green_4","uns_h_simc_Boon_green_1","uns_h_simc_Boon_green_2","uns_H_Simc_Boon_erdl_low_8","uns_h_simc_Boon_erdl_low_7","uns_h_simc_Boon_erdl_low_6","uns_h_simc_Boon_erdl_low_1","uns_h_simc_Boon_erdl_low_2","uns_h_simc_Boon_erdl_low_3","uns_h_simc_Boon_erdl_low_4","uns_h_simc_Boon_erdl_low_5","uns_h_simc_Boon_tigre_7","uns_h_simc_Boon_tigre_6","uns_h_simc_Boon_tigre_5","uns_h_simc_Boon_tigre_4","uns_h_simc_Boon_tigre_3","uns_h_simc_Boon_tigre_2","uns_h_simc_Boon_tigre_1","uns_H_Simc_hat_trop_1","uns_H_Simc_hat_trop_2","uns_H_Simc_hat_trop_air","uns_H_Simc_hat_trop_cib","uns_H_Simc_hat_trop_cib_air","uns_H_Simc_hat_trop_cib_med","uns_H_Simc_hat_trop_med","H_Cap_usblack","H_Cap_tan_specops_US","uns_simc_MC_M1C_bitch_b8","uns_simc_MC_M1_bitch_flip_b5","uns_simc_m1_bitch_flip_ns","uns_simc_m1_bitch_b6"];

        _AvailableGoggles = ["vn_b_acc_goggles_01","vn_b_acc_m17_01","vn_b_acc_m17_02","vn_b_acc_ms22001_01","vn_b_acc_ms22001_02","vn_b_aviator","vn_b_bandana_a","vn_b_scarf_01_01","vn_b_scarf_01_03","vn_b_spectacles","vn_b_spectacles_tinted","vn_b_squares","vn_b_squares_tinted","vn_g_glasses_01","vn_g_spectacles_01","vn_g_spectacles_02","vn_o_bandana_b","vn_o_bandana_g","vn_o_scarf_01_03","vn_o_scarf_01_02","vn_o_scarf_01_04","vn_o_poncho_01_01","vn_o_acc_goggles_03","vn_o_acc_goggles_02","vn_o_acc_km32_01","vn_o_acc_goggles_01","G_Blindfold_01_black_F","G_Blindfold_01_white_F"];

        _AvailableUniforms = ["vn_b_uniform_heli_01_01","vn_b_uniform_k2b_01_01","vn_b_uniform_k2b_01_02","vn_b_uniform_k2b_02_01","vn_b_uniform_k2b_02_02","vn_b_uniform_k2b_02_03","vn_b_uniform_macv_01_01","vn_b_uniform_macv_01_02","vn_b_uniform_macv_01_03","vn_b_uniform_macv_01_04","vn_b_uniform_macv_01_05","vn_b_uniform_macv_01_06","vn_b_uniform_macv_01_07","vn_b_uniform_macv_01_08","vn_b_uniform_macv_02_01","vn_b_uniform_macv_02_02","vn_b_uniform_macv_02_05","vn_b_uniform_macv_02_06","vn_b_uniform_macv_02_07","vn_b_uniform_macv_02_08","vn_b_uniform_macv_03_01","vn_b_uniform_macv_03_02","vn_b_uniform_macv_03_05","vn_b_uniform_macv_03_06","vn_b_uniform_macv_03_07","vn_b_uniform_macv_03_08","vn_b_uniform_macv_04_01","vn_b_uniform_macv_04_02","vn_b_uniform_macv_04_05","vn_b_uniform_macv_04_06","vn_b_uniform_macv_04_07","vn_b_uniform_macv_04_08","vn_b_uniform_macv_04_20","vn_b_uniform_macv_04_21","vn_b_uniform_macv_05_01","vn_b_uniform_macv_05_02","vn_b_uniform_macv_05_05","vn_b_uniform_macv_05_06","vn_b_uniform_macv_05_07","vn_b_uniform_macv_05_08","vn_b_uniform_macv_06_01","vn_b_uniform_macv_06_02","vn_b_uniform_macv_06_05","vn_b_uniform_macv_06_06","vn_b_uniform_macv_06_07","vn_b_uniform_macv_06_08","vn_b_uniform_sog_01_01","vn_b_uniform_sog_01_02","vn_b_uniform_sog_01_03","vn_b_uniform_sog_01_04","vn_b_uniform_sog_01_05","vn_b_uniform_sog_01_06","vn_b_uniform_sog_02_01","vn_b_uniform_sog_02_02","vn_b_uniform_sog_02_03","vn_b_uniform_sog_02_04","vn_b_uniform_sog_02_05","vn_b_uniform_sog_02_06","UNS_USMC_BDU_65","UNS_USMC_BDU_65_S","UNS_USMC_LERDL","UNS_USMC_Flak_E","UNS_USMC_Flak_ES","uns_U_simc_OG107_mk1_MC","uns_U_simc_OG107_mk1_trop_MC","uns_U_simc_OG107_mk3_MC","U_I_FullGhillie_lsh","U_O_FullGhillie_lsh","U_B_FullGhillie_lsh","UNS_ARMY_BDU_USA_BDU_midssg","UNS_ARMY_BDU_USA_BDU_midspc5","UNS_ARMY_BDU_USA_BDU_midspc","UNS_ARMY_BDU_USA_BDU_midsgt","UNS_ARMY_BDU_USA_BDU_midsfc","UNS_ARMY_BDU_USA_BDU_midpv2","UNS_ARMY_BDU_USA_BDU_midpfc","UNS_ARMY_BDU_USA_BDU_midmsg","UNS_ARMY_BDU_USA_BDU_midmaj","UNS_ARMY_BDU_USA_BDU_midcpt","UNS_ARMY_BDU_USA_BDU_midcpl","UNS_ARMY_BDU_USA_BDU_midcol","UNS_ARMY_BDU_USA_BDU_mid2ndlt","UNS_ARMY_BDU_USA_BDU_mid1stsgt","UNS_ARMY_BDU_USA_BDU_Earlyssg","UNS_ARMY_BDU_USA_BDU_Earlyspc5","UNS_ARMY_BDU_USA_BDU_Earlyspc","UNS_ARMY_BDU_USA_BDU_Earlysgt","UNS_ARMY_BDU_USA_BDU_Earlysfc","UNS_ARMY_BDU_USA_BDU_Earlypv1","UNS_ARMY_BDU_USA_BDU_Earlypfc","UNS_ARMY_BDU_USA_BDU_Earlymsg","UNS_ARMY_BDU_USA_BDU_Earlymaj","UNS_ARMY_BDU_USA_BDU_Earlyltcol","UNS_ARMY_BDU_USA_BDU_Earlycpt","UNS_ARMY_BDU_USA_BDU_Earlycpl","UNS_ARMY_BDU_USA_BDU_Earlycol","UNS_ARMY_BDU_USA_BDU_Early1stsgt","UNS_ARMY_BDU_USA_BDU_Early1stlt","UNS_ARMY_BDU_ROKArmy9thIDipatch","UNS_ARMY_BDU_ROKArmyCMIDipatch","UNS_ARMY_BDU_USA_BDU_Early2ndlt","UNS_ARMY_BDU_USA_BDU_mid1stlt","UNS_ARMY_BDU_USA_BDU_midltcol","UNS_ARMY_BDU_USA_BDU_midpv1","UNS_ARMY_BDU_USA_BDU_Earlypv2","Uns_Simc_TCU_mk3_tuck_zwart","Uns_Simc_TCU_mk3_leg_zwart","Uns_Simc_TCU_mk3_TS_trop","Uns_Simc_TCU_mk3_TS","UNS_TIGER_BDU","UNS_TIGER4_BDU","UNS_TIGER2_BDU","UNS_TIGER3_BDU","UNS_Simc_SF_TS_jean_trop","UNS_Simc_SF_TS_jean","UNS_Simc_SF_TS_tee"];

        _AvailableVests = ["vn_b_vest_aircrew_01","vn_b_vest_aircrew_02","vn_b_vest_aircrew_03","vn_b_vest_aircrew_04","vn_b_vest_aircrew_05","vn_b_vest_aircrew_06","vn_b_vest_aircrew_07","vn_b_vest_sog_01","vn_b_vest_sog_02","vn_b_vest_sog_03","vn_b_vest_sog_04","vn_b_vest_sog_05","vn_b_vest_sog_06","vn_b_vest_usarmy_01","vn_b_vest_usarmy_02","vn_b_vest_usarmy_03","vn_b_vest_usarmy_04","vn_b_vest_usarmy_05","vn_b_vest_usarmy_06","vn_b_vest_usarmy_07","vn_b_vest_usarmy_08","vn_b_vest_usarmy_09","vn_b_vest_usarmy_10","vn_b_vest_usarmy_11","vn_b_vest_usarmy_12","vn_b_vest_usarmy_13","vn_b_vest_usarmy_14","uns_simc_flak_55","uns_simc_flak_55_open","uns_simc_flak_55_M61_79_belt","uns_simc_flak_55_M61_79","uns_Simc_flak_55_M61_med","uns_simc_flak_55_M61","uns_simc_flak_55_M61_open","uns_simc_flak_55_M61_open_bandoleer","uns_simc_flak_55_M61_laat","uns_simc_flak_55_M61_laat_bandoleer","uns_simc_flak_55_60","uns_simc_flak_55_M61_60","uns_simc_flak_55_M61_45","uns_simc_flak_55_mk2_bandoleer","uns_simc_flak_55_mk2_belt_open","uns_simc_flak_55_mk2_belt","uns_simc_flak_55_mk2_bandoleer_belt_open","uns_simc_flak_55_mk2_bandoleer_belt","uns_simc_flak_55_mk2_belt_open_erla","uns_Simc_flak_55_mk2_belt_open_60_2","uns_Simc_flak_55_mk2_belt_open_60_1","uns_simc_61_ligt","uns_simc_61_alt","uns_simc_61","uns_simc_61_79","uns_simc_61_bandoleer","uns_Simc_61_med","uns_simc_61_56","uns_simc_61_56_bandoleer","uns_simc_61_60_2","uns_simc_61_60","uns_simc_61_45_alt","uns_simc_61_45_bandoleer","uns_v_simc_SF_BAR_1","uns_v_simc_SF_BAR_2","uns_v_simc_SF_2","uns_v_simc_SF_mk56_2","uns_v_simc_SF_mk56_1","uns_v_simc_SF_mk56_3","uns_V_Simc_nadevest_flak","uns_V_Simc_nadevest","uns_V_Simc_nadevest_56","uns_V_Simc_nadevest_67","uns_simc_556_bandoleer","uns_simc_flak","uns_simc_flak_bandoleer","uns_simc_flak_M56","uns_simc_flak_M56_open","uns_simc_flak_M56_open_79","uns_simc_flak_M56_open_bandoleer","uns_simc_flak_M56_bandoleer","uns_Simc_flak_M56_open_Medic","uns_simc_flak_M56_open_60","uns_simc_flak_M56_open_45_bandoleer","uns_simc_flak_M56_open_45","uns_simc_56_ligt","uns_simc_56","uns_simc_56_alt","uns_simc_56_ligt_2","uns_simc_56_4cm","uns_simc_56_4cm_ligt","uns_simc_56_4cm_ligt_alt","uns_simc_56_bandoleer","uns_simc_56_frag_alt","uns_simc_56_frag_ligt","uns_simc_56_frag_ligt_b","uns_simc_56_M43_ligt","uns_simc_56_M43_ligt_2","uns_simc_56_M43_bandoleer","uns_v_simc_67_ass","uns_v_simc_67_frag_ass","uns_v_simc_67_frag","uns_v_simc_67_ligt","uns_v_simc_67_45_ass","uns_v_simc_67_45_ligt","uns_Simc_56_claymore","uns_Simc_56_claymore_band","uns_Simc_56_med","uns_Simc_56_med_side_ass","uns_Simc_56_med_side","uns_Simc_56_60_doppel_ligt","uns_simc_56_60","uns_simc_56_60_ligt_zusp","uns_simc_56_60_ligt","uns_simc_56_45","uns_simc_56_45_ligt_zusp","uns_simc_56_45_ligt_alt","uns_simc_56_45_ligt","uns_Simc_56_claymore_45","uns_Simc_56_claymore_45_band","uns_simc_flak_M69","uns_simc_flak_M69_bandoleer","uns_simc_flak_M69_alt","uns_simc_flak_M69_belt","uns_simc_flak_M69_bandoleer_belt","uns_simc_56_45_alt","uns_Simc_56_60_doppel","uns_v_simc_67_45","uns_v_simc_67_frag_ligt","uns_v_simc_67","uns_simc_56_M43","uns_simc_56_frag","uns_simc_flak_open","uns_v_simc_SF_1","uns_simc_61_45","uns_simc_flak_55_mk2","uns_simc_flak_55_M61_60_2","uns_simc_flak_55_bandoleer"];

		_AvailableBackpacks = ["vn_b_pack_01","vn_b_pack_01_02","vn_b_pack_02","vn_b_pack_02_02","vn_b_pack_03","vn_b_pack_03_02","vn_b_pack_04","vn_b_pack_04_02","vn_b_pack_05","vn_b_pack_05_02","vn_b_pack_lw_01","vn_b_pack_lw_02","vn_b_pack_lw_03","vn_b_pack_lw_04","vn_b_pack_lw_05","vn_b_pack_lw_06","vn_b_pack_lw_07","vn_b_pack_m5_01","vn_b_pack_prc77_01","vn_b_pack_static_base_01","vn_b_pack_static_m1919a4_high_01","vn_b_pack_static_m1919a4_low_01","vn_b_pack_static_m1919a6_01","vn_b_pack_static_m29_01","vn_b_pack_static_m2_01","vn_b_pack_static_m2_high_01","vn_b_pack_static_m2_low_01","vn_b_pack_static_m60_high_01","vn_b_pack_static_m60_low_01","vn_b_pack_static_tow","vn_b_pack_trp_01","vn_b_pack_trp_01_02","vn_b_pack_trp_02","vn_b_pack_trp_02_02","vn_b_pack_trp_03","vn_b_pack_trp_03_02","vn_b_pack_trp_04","vn_b_pack_trp_04_02","vn_c_pack_02","uns_simc_ARVN_flak_ruck_sheen","uns_simc_ARVN_flak_ruck_gump","uns_simc_pack_med_m5_flak","uns_claymore_sack_flak","uns_simc_packboard_flak_MG_1","uns_simc_packboard_flak_MG_2","uns_simc_packboard_flak_mortar_1","uns_simc_pack_trop_flak_4_alt","uns_simc_pack_trop_flak_3","uns_simc_pack_trop_flak_2","uns_simc_pack_trop_flak_1_alt","uns_simc_pack_trop_flak_1","uns_simc_pack_trop_flak_4","uns_simc_pack_trop_flak_6_alt","uns_simc_pack_trop_flak_6","uns_simc_pack_trop_flak_5","uns_simc_ARVN_ruck_sheen","uns_simc_pack_frem_1","uns_simc_pack_frem_8","uns_simc_pack_frem_5","uns_simc_pack_frem_3","uns_simc_pack_frem_2_alt","uns_simc_pack_frem_2","uns_simc_pack_frem_1_alt","uns_simc_pack_frem_4","uns_simc_pack_frem_9","uns_simc_pack_frem_7","uns_simc_pack_frem_6","uns_simc_pack_frem_3_b","uns_simc_pack_frem_3_a","uns_simc_pack_frem_gasbag","uns_simc_pack_frem_helmet","uns_simc_pack_frem_med3","uns_simc_pack_frem_med5","uns_simc_pack_med_m5","uns_claymore_sack","uns_simc_packboard_MG_1","uns_simc_packboard_MG_2","uns_simc_packboard_mortar_1","uns_simc_US_asspack","uns_simc_US_asspack_roll","uns_simc_US_asspack_botol","uns_simc_US_asspack_machete","uns_simc_US_asspack_machete_roll","uns_simc_US_asspack_full","uns_simc_US_asspack_full_roll","uns_simc_USMCFLAK_M41","uns_simc_USMCFLAK_M41_flat","uns_simc_USMCFLAK_M41_M43","uns_simc_USMCFLAK_M41_flat_M43","uns_simc_USMCFLAK_M41_M43_roll","uns_simc_USMCFLAK_M41_flat_M43_roll","uns_simc_USMCFLAK_M41_mortar","uns_simc_USMCFLAK_M41_Roll","uns_simc_USMCFLAK_M41_flat_roll","uns_simc_USMCFLAK_M68","uns_simc_USMCFLAK_M68_flat","uns_simc_USMCFLAK_M68_M43","uns_simc_USMCFLAK_M68_flat_M43","uns_simc_USMCFLAK_M68_M43_roll","uns_simc_USMCFLAK_M68_flat_M43_roll","uns_simc_USMCFLAK_M68_Roll","uns_simc_USMCFLAK_M68_flat_roll","uns_simc_MC_packboard_flak_1","uns_simc_MC_packboard_flak_3","uns_simc_MC_packboard_flak_2","uns_simc_USMC65_M41","uns_simc_USMC65_M41_flat","uns_simc_USMC65_M41_M43","uns_simc_USMC65_M41_flat_M43","uns_simc_USMC65_M41_M43_roll","uns_simc_USMC65_M41_flat_M43_roll","uns_simc_USMC65_M41_mortar","uns_simc_USMC65_M41_Roll","uns_simc_USMC65_M41_flat_roll","uns_simc_USMC65_M68","uns_simc_USMC65_M68_flat","uns_simc_USMC65_M68_M43","uns_simc_USMC65_M68_M43_roll","uns_simc_USMC65_M68_flat_M43_roll","uns_simc_USMC65_M68_Roll","uns_simc_USMC65_M68_flat_roll","uns_simc_MC_packboard_2","uns_simc_MC_packboard_1","uns_simc_MC_packboard_3","uns_simc_pack_frem_flak_2","uns_simc_pack_frem_flak_3","uns_simc_pack_frem_flak_2_alt","uns_simc_pack_frem_flak_1_alt","uns_simc_pack_frem_flak_1","uns_simc_pack_frem_flak_8","uns_simc_pack_frem_flak_4","uns_simc_pack_frem_flak_7","uns_simc_pack_frem_flak_9","uns_simc_pack_frem_flak_3_b","uns_simc_pack_frem_flak_3_a","uns_simc_pack_frem_5_alt","uns_simc_pack_frem_qt","uns_simc_pack_trop_1","uns_simc_pack_trop_4_alt","uns_simc_pack_trop_3","uns_simc_pack_trop_2","uns_simc_pack_trop_1_alt","uns_simc_pack_trop_4","uns_simc_pack_trop_6_alt","uns_simc_pack_trop_6","uns_simc_pack_trop_5","B_SCBA_01_F","uns_simc_USMC65_M68_flat_M43","uns_simc_pack_med_m3","uns_simc_pack_frem_6_alt"];

        _AvailableAttachments = ["vn_o_9x_m14","vn_o_anpvs2_m14","vn_o_4x_m16","vn_o_9x_m16","vn_o_anpvs2_m16","vn_o_3x_m84","vn_o_9x_m40a1","vn_o_anpvs2_m40a1","vn_o_4x_m4956","vn_o_3x_m9130","uns_o_M84","uns_o_Unertl8x","uns_o_Unertl8x_m70","uns_o_RedfieldART_m70","vn_b_m14","vn_b_m16","vn_b_m38","vn_b_m1897","vn_b_carbine","vn_b_m4956","vn_b_sks","vn_b_type56","uns_b_mas49","uns_b_m1","uns_b_m70_camo","vn_s_pm","vn_s_mk22","vn_s_m14","vn_s_m16","vn_s_m1895","vn_s_m1911","vn_s_m3a1","vn_s_m45","vn_s_m45_camo","vn_s_mat49","vn_s_mc10","vn_s_sten","uns_s_UZI","uns_s_M14","uns_s_PPK","vn_b_camo_m14","vn_b_camo_m40a1","vn_b_camo_m9130"];

        _AvailableMagazines = ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow","vn_mine_ammobox_range_mag","vn_mine_m112_remote_mag","vn_mine_m14_mag","vn_mine_m15_mag","vn_mine_m16_mag","vn_mine_m18_mag","vn_mine_m18_range_mag","vn_mine_m18_x3_mag","vn_mine_m18_x3_range_mag","vn_mine_punji_01_mag","vn_mine_punji_02_mag","vn_mine_punji_03_mag","vn_mine_satchel_remote_02_mag","vn_mine_tm57_mag","vn_mine_tripwire_arty_mag","vn_mine_tripwire_f1_02_mag","vn_mine_tripwire_f1_04_mag","vn_mine_tripwire_m16_02_mag","vn_mine_tripwire_m16_04_mag","vn_mine_tripwire_m49_02_mag","vn_mine_tripwire_m49_04_mag","vn_m7_grenade_mag","vn_m67_grenade_mag","vn_m34_grenade_mag","vn_m18_green_mag","vn_m18_purple_mag","vn_m18_red_mag","vn_m18_white_mag","vn_m18_yellow_mag","vn_m61_grenade_mag","vn_m14_early_grenade_mag","vn_m14_grenade_mag","vn_dp28_mag","vn_pm_mag","vn_hd_mag","vn_hp_mag","vn_izh54_mag","vn_izh54_so_mag","vn_ppsh41_35_mag","vn_ppsh41_35_t_mag","vn_ppsh41_71_mag","vn_ppsh41_71_t_mag","vn_m10_mag","vn_m127_mag","vn_m128_mag","vn_m129_mag","vn_m14_mag","vn_m14_t_mag","vn_m14_10_mag","vn_m14_10_t_mag","20Rnd_762x51_Mag","10Rnd_Mk14_762x51_Mag","vn_m16_20_mag","vn_m16_30_mag","vn_m16_40_mag","vn_m16_20_t_mag","vn_m16_30_t_mag","vn_m16_40_t_mag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Green","30Rnd_556x45_Stanag_Tracer_Yellow","30Rnd_556x45_Stanag_Sand","30Rnd_556x45_Stanag_Sand_green","30Rnd_556x45_Stanag_Sand_red","30Rnd_556x45_Stanag_Sand_Tracer_Red","30Rnd_556x45_Stanag_Sand_Tracer_Green","30Rnd_556x45_Stanag_Sand_Tracer_Yellow","ACE_30Rnd_556x45_Stanag_M995_AP_mag","ACE_30Rnd_556x45_Stanag_Mk262_mag","ACE_30Rnd_556x45_Stanag_Mk318_mag","ACE_30Rnd_556x45_Stanag_Tracer_Dim","vn_40mm_m381_he_mag","vn_40mm_m406_he_mag","vn_40mm_m397_ab_mag","vn_40mm_m433_hedp_mag","vn_40mm_m583_flare_w_mag","vn_40mm_m661_flare_g_mag","vn_40mm_m662_flare_r_mag","vn_40mm_m695_flare_y_mag","vn_40mm_m680_smoke_w_mag","vn_40mm_m682_smoke_r_mag","vn_40mm_m715_smoke_g_mag","vn_40mm_m716_smoke_y_mag","vn_40mm_m717_smoke_p_mag","vn_40mm_m651_cs_mag","1Rnd_HE_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","ACE_40mm_Flare_white","ACE_40mm_Flare_red","ACE_40mm_Flare_green","ACE_40mm_Flare_ir","ACE_HuntIR_M203","vn_m38_mag","vn_m38_t_mag","vn_m1895_mag","vn_m1897_fl_mag","vn_m1897_buck_mag","vn_m1911_mag","vn_carbine_15_mag","vn_carbine_15_t_mag","vn_carbine_30_mag","vn_carbine_30_t_mag","vn_22mm_m1a2_frag_mag","vn_22mm_m17_frag_mag","vn_22mm_m9_heat_mag","vn_22mm_lume_mag","vn_22mm_m22_smoke_mag","vn_22mm_m19_wp_mag","vn_22mm_cs_mag","vn_m3a1_mag","vn_m3a1_t_mag","vn_m40a1_mag","vn_m40a1_t_mag","vn_m45_mag","vn_m45_t_mag","vn_m4956_10_mag","vn_m4956_10_t_mag","vn_22mm_he_mag","vn_m60_100_mag","vn_m63a_30_mag","vn_m63a_30_t_mag","vn_m712_mag","vn_m72_mag","vn_40mm_m576_buck_mag","vn_mat49_mag","vn_mat49_t_mag","vn_mat49_vc_mag","vn_mc10_mag","vn_mc10_t_mag","vn_mk22_mag","vn_mp40_mag","vn_mp40_t_mag","vn_pk_100_mag","vn_pps_mag","vn_pps_t_mag","vn_rpd_100_mag","vn_rpd_125_mag","vn_rpg2_mag","vn_rpg7_mag","RPG7_F","vn_sa7_mag","vn_sa7b_mag","vn_sks_mag","vn_sks_t_mag","vn_22mm_m60_frag_mag","vn_22mm_m60_heat_mag","vn_sten_mag","vn_sten_t_mag","vn_tt33_mag","vn_type56_mag","vn_type56_t_mag","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_F","30Rnd_762x39_Mag_Tracer_Green_F","30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_Tracer_F","75Rnd_762x39_Mag_F","75Rnd_762x39_Mag_Tracer_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F","30rnd_762x39_AK12_Arid_Mag_F","30rnd_762x39_AK12_Arid_Mag_Tracer_F","75rnd_762x39_AK12_Mag_F","75rnd_762x39_AK12_Mag_Tracer_F","75rnd_762x39_AK12_Lush_Mag_F","75rnd_762x39_AK12_Lush_Mag_Tracer_F","75rnd_762x39_AK12_Arid_Mag_F","75rnd_762x39_AK12_Arid_Mag_Tracer_F","vn_welrod_mag","uns_ChnLk_he","uns_l1a1mag","uns_l1a1mag_T","uns_l1a1mag_NT","uns_barmag","uns_barmag_T","uns_barmag_NT","uns_100Rnd_m1919","uns_250Rnd_m1919","uns_m1garandmag","uns_m1garandmag_T","Uns_1Rnd_22mm_M1a2_FRAG","Uns_1Rnd_22mm_AT","Uns_1Rnd_22mm_HEAT","uns_1Rnd_22mm_lume","Uns_1Rnd_22mm_smoke","Uns_1Rnd_22mm_WP","uns_springfieldmag_T","uns_springfieldmag","uns_thompsonmag_30","uns_thompsonmag_30_T","uns_thompsonmag_30_NT","uns_thompsonmag_20","uns_thompsonmag_20_T","uns_thompsonmag_20_NT","uns_12gaugemag_4","uns_12gaugemag_4f","uns_12gaugemag_2","uns_m63amag","uns_m63abox","uns_32Rnd_uzi","uns_32Rnd_uzi_pa","uns_model70mag","uns_model70mag_T","uns_M28A2_mag","uns_M30_smoke_mag","uns_ppkmag","vn_prop_food_fresh_01","vn_prop_food_lrrp_01_03","vn_prop_food_lrrp_01_06","vn_prop_food_lrrp_01_02","vn_prop_food_lrrp_01_05","vn_prop_food_lrrp_01_08","vn_prop_food_lrrp_01_07","vn_prop_food_lrrp_01_01","vn_prop_food_lrrp_01_04","vn_b_item_rations_01","vn_prop_med_wormpowder","vn_prop_med_dysentery","vn_prop_med_antivenom","vn_prop_med_antimalaria","vn_prop_med_antibiotics","vn_prop_med_painkillers","uns_Twinm60mag_1300","vn_prop_drink_01","vn_prop_drink_02","vn_prop_drink_06","uns_ItemFuelcan","uns_m60mag_1500","uns_ItemSiphon","uns_ItemFuelcanEmpty","vn_b_item_gunoil_01","FlareYellow_F","FlareWhite_F","FlareRed_F","FlareGreen_F"];

        _AvailableWeapons = ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow","vn_dp28","vn_fkb1","vn_fkb1_pm","vn_fkb1_red","vn_hd","vn_hp","vn_izh54","vn_izh54_p","vn_izh54_shorty","vn_k50m","vn_m10","vn_m127","vn_m14","vn_m14_camo","vn_m14_early_grenade_mag","vn_m14_grenade_mag","vn_m16","vn_m16_camo","vn_m16_xm148","vn_m1891","vn_m1895","vn_m1897","vn_m18_green_mag","vn_m18_purple_mag","vn_m18_red_mag","vn_m18_white_mag","vn_m18_yellow_mag","vn_m1911","vn_m1carbine","vn_m1carbine_gl","vn_m2carbine","vn_m2carbine_gl","vn_m34_grenade_mag","vn_m38","vn_m3a1","vn_m3carbine","vn_m40a1","vn_m40a1_camo","vn_m45","vn_m45_camo","vn_m45_fold","vn_m4956","vn_m4956_gl","vn_m60","vn_m60_shorty","vn_m60_shorty_camo","vn_m61_grenade_mag","vn_m63a","vn_m67_grenade_mag","vn_m712","vn_m72","vn_m79","vn_m79_p","vn_m7_grenade_mag","vn_m9130","vn_mat49","vn_mat49_f","vn_mat49_vc","vn_mc10","vn_mine_ammobox_range_mag","vn_mine_m112_remote_mag","vn_mine_m14_mag","vn_mine_m15_mag","vn_mine_m16_mag","vn_mine_m18_mag","vn_mine_m18_range_mag","vn_mine_m18_x3_mag","vn_mine_m18_x3_range_mag","vn_mine_punji_01_mag","vn_mine_punji_02_mag","vn_mine_punji_03_mag","vn_mine_satchel_remote_02_mag","vn_mine_tm57_mag","vn_mine_tripwire_arty_mag","vn_mine_tripwire_f1_02_mag","vn_mine_tripwire_f1_04_mag","vn_mine_tripwire_m16_02_mag","vn_mine_tripwire_m16_04_mag","vn_mine_tripwire_m49_02_mag","vn_mine_tripwire_m49_04_mag","vn_mk22","vn_mp40","vn_mx991","vn_mx991_m1911","vn_mx991_red","vn_p38s","vn_pk","vn_pm","vn_pps43","vn_pps52","vn_ppsh41","vn_revive_weapon","vn_rpd","vn_rpd_shorty","vn_rpd_shorty_01","vn_rpg2","vn_rpg7","vn_sa7","vn_sa7b","vn_sks","vn_sks_gl","vn_sten","vn_tt33","vn_type56","vn_v40_grenade_mag","vn_welrod","vn_xm177","vn_xm177_camo","vn_xm177_fg","vn_xm177_short","vn_xm177_stock","vn_xm177_stock_camo","vn_xm177_xm148","vn_xm177_xm148_camo","uns_ex41","uns_l1a1_enfield","uns_l1a1","uns_l2a1","uns_l2a1_shorty","uns_l1a1gl","uns_bar","uns_m1919a6","uns_m1garand","uns_m1garand_gl","uns_m1903","uns_thompson","uns_ithaca37","uns_ithaca37_grip","uns_M63a_drum","uns_m63asupport","uns_M63a_LMG","uns_uzi","uns_uzif","uns_model70_iron","uns_m20_bazooka","uns_ppk"];
	};

};

if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
	[_object, _AvailableHeadGear, true] call ace_arsenal_fnc_addVirtualItems;
	[_object, _AvailableGoggles, true] call ace_arsenal_fnc_addVirtualItems;
	[_object, _AvailableUniforms, true] call ace_arsenal_fnc_addVirtualItems;
	[_object, _AvailableVests, true] call ace_arsenal_fnc_addVirtualItems;
	[_object, _AvailableItems, true] call ace_arsenal_fnc_addVirtualItems;
	[_object, _AvailableAttachments, true] call ace_arsenal_fnc_addVirtualItems;
	[_object, _AvailableWeapons, true] call ace_arsenal_fnc_addVirtualItems;
	[_object, _AvailableBackpacks, true] call ace_arsenal_fnc_addVirtualItems;
	[_object, _AvailableMagazines, true] call ace_arsenal_fnc_addVirtualItems;
} else {
	[_object, _AvailableHeadGear, true] call BIS_fnc_addVirtualItemCargo;
	[_object, _AvailableGoggles, true] call BIS_fnc_addVirtualItemCargo;
	[_object, _AvailableUniforms, true] call BIS_fnc_addVirtualItemCargo;
	[_object, _AvailableVests, true] call BIS_fnc_addVirtualItemCargo;
	[_object, _AvailableItems, true] call BIS_fnc_addVirtualItemCargo;
	[_object, _AvailableAttachments, true] call BIS_fnc_addVirtualItemCargo;
	[_object, _AvailableWeapons, true] call BIS_fnc_addVirtualWeaponCargo;
	[_object, _AvailableBackpacks, true] call BIS_fnc_addVirtualBackpackCargo;
	[_object, _AvailableMagazines, true] call BIS_fnc_addVirtualMagazineCargo;
};

{
	_x addCuratorEditableObjects [[_object], false];
} forEach allCurators;


_handle = [
	{
		(_this select 0) params ["_object", "_duration"];

		if (_duration == 0) exitwith {
			[_handle] call CBA_fnc_removePerFrameHandler;
		};

		if (time > (_duration * 60)) exitwith {
			deletevehicle _object;
			[_handle] call CBA_fnc_removePerFrameHandler;
		};
	}, 60, [_object, _duration]
] call CBA_fnc_addPerFrameHandler;
