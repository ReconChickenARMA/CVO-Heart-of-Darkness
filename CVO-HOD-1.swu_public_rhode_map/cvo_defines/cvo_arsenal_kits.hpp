/*
*   CVO Arsenal Define File
*   https://github.com/CVO-Org/CVO-Auxiliary/blob/main/addons/arsenal/readme.md
*   Example File: https://github.com/CVO-Org/CVO-Auxiliary/blob/main/.hemtt/missions/Arsenal.Altis/cvo_arsenal_kits.hpp
*/

class cvo_arsenal_kits
{
    editor_layer_name = "cvo_arsenal_boxes";
    object_variable_names[] = {"source"};

    // Imports Base from configFile
    import baseKit from cvo_arsenal_kits;

    //  MISCELLANEOUS
    class ctab: baseKit {
        class items {
            class ItemAndroid {};
            class ItemcTabHCam {};
        };
    };

    // Examples from the AEW Campaigns
    /*
    class GreenMagStuff: baseKit {
        addon_dependency = "greenmag_main";
        class items {
            // @ KYO - IDK if you edited those already or not - just comment out the entries you dont need.
			//class greenmag_ammo_556x45_basic_60Rnd {};
			//class greenmag_ammo_556x45_basic_30Rnd {};

			class greenmag_ammo_762x51_basic_60Rnd {};
			class greenmag_ammo_762x51_basic_30Rnd {};

			class greenmag_ammo_545x39_basic_60Rnd {};
			class greenmag_ammo_545x39_basic_30Rnd {};

			class greenmag_ammo_762x39_basic_60Rnd {};
			class greenmag_ammo_762x39_basic_30Rnd {};

			class greenmag_ammo_9x21_basic_60Rnd {};
			class greenmag_ammo_9x21_basic_30Rnd {};

			class greenmag_ammo_45ACP_basic_30Rnd {};
			class greenmag_ammo_45ACP_basic_60Rnd {};

			class greenmag_ammo_762x54_basic_60Rnd {};
			class greenmag_ammo_762x54_basic_30Rnd {};

			class greenmag_item_speedloader {};
        };
    };
    */
    /*
    class Rations: baseKit {
        condition = "missionNamespace getVariable ['ace_field_rations_enabled', true]";
        class items {
	        class ACE_MRE_BeefStew {};
	        class ACE_MRE_ChickenTikkaMasala {};
	        class ACE_MRE_ChickenHerbDumplings {};
	        class ACE_MRE_CreamChickenSoup {};
	        class ACE_MRE_CreamTomatoSoup {};
	        class ACE_MRE_LambCurry {};
	        class ACE_MRE_MeatballsPasta {};
	        class ACE_MRE_SteakVegetables {};
        };
    };
    */
    /*

    class Binoculars: baseKit {
        class items {
            class Binocular {};

            class Hate_Smartphone_HUD {};
            class Nikon_DSLR_HUD {};
            class Nikon_DSLR {};
            class Camera_lxWS {};

            //class ACE_Yardage450 {};
        };
    };
    */
    /*

    class Immersion_Cigs: baseKit {
        addon_dependency = "cigs_core";
        class items {
            class cigs_Apollo_cigpack {};
            class cigs_black_devil_cigpack {};
            class cigs_cigars_cigarbox_5 {};
            class cigs_craven_cigpack {};
            class cigs_eckstein_cigpack {};
            class cigs_Kosmos_cigpack {};
            class cigs_pops_poppack {};
            class cigs_lucky_strike_cigpack {};
            class cigs_morley_cigpack {};
            class cigs_baja_blast_cigpack {};
            class cigs_crayons_crayonpack {};
        };
    };
    */
    /*

    class Aegis_Armbands: baseKit {
        class items {
            class Aegis_G_Armband_BLU_F {};
            class Aegis_G_Armband_BLU_alt_F {};
            class Aegis_NV_G_Armband_Blu_Alt_F {};
            class Aegis_NV_G_Armband_Blu_F {};
        };
    };
    */
    /*

    // RADIOS
    class Radios_Base: baseKit {
        class items {
            class ACRE_PRC343 {};
        };
    };
    */
    /*

    class Radios_Leadership: baseKit {
        role = "Leadership";
        class items {
            class ACRE_PRC148 {};
        };
    };
    */
    /*

    // Wearables / Gear
    class Base_Uniforms: baseKit {
        class items {
            //Aegis/Atlas Contractor Uniforms
            // class Aegis_U_lxWS_ION_Flanneltna_F {};
            // class U_lxWS_ION_Casual4 {};
            // class U_lxWS_ION_Casual2 {};
            // class Aegis_U_lxWS_ION_Casualtna_F {};
            // class U_lxWS_ION_Casual6 {};
            // class U_I_L_Uniform_01_camo_F {};
            //class Opf_U_O_S_Uniform_01_sweater_F {};
            //class U_lxWS_SFIA_deserter {};
            // class Atlas_U_CombatUniformNCU_01_mcam_F {};
            // class Atlas_U_CombatUniformNCU_02_mcam_F {};
            class Atlas_U_O_Afghanka_01_grn_F {};
            class Atlas_U_O_Afghanka_02_grn_F {};
            class Atlas_U_O_Afghanka_01_khk_F {};
            class Atlas_U_O_Afghanka_02_khk_F {};
            class Atlas_U_I_Afghanka_01_ardi_half_F {};
            class Atlas_U_I_Afghanka_02_ardi_half_F {};
            class MYR_fat_7 {};
            class MYR_fat_5 {};
            class MYR_fat_6 {};
            class MYR_fat_8 {};
            //class MYR_fat_9 {};
            // class MYR_fat_3 {};
            // class MYR_fat_2 {};
            // class MYR_fat_4 {};
            // class MYR_fat_1 {};
        };
    };
    */
    /*

    class Base_Vests: baseKit {
        class items {
            class V_PlateCarrier1_blk {};
            class V_PlateCarrier1_cbr {};
            class V_PlateCarrier2_blk {};
            class V_PlateCarrier2_cbr {};
            class V_Chestrig_blk {};
            class V_HarnessOSpec_blk {};
            class V_HarnessO_blk {};
            class Aegis_V_SmershVest_01_blk_F {};
            class V_SmershVest_01_khaki_F {};
            class V_SmershVest_01_F {};
            class V_SmershVest_01_olive_F {};
            class Aegis_V_CarrierRigKBT_01_cqb_black_F {};
            class Aegis_V_CarrierRigKBT_01_cqb_cbr_F {};
            class Aegis_V_CarrierRigKBT_01_cqb_olive_F {};
            class Aegis_V_OCarrierLuchnik_Lite_blk_F {};
            class Aegis_V_OCarrierLuchnik_Lite_grn_F {}; 
            class Aegis_V_OCarrierLuchnik_Lite_khk_F {}; 
            // Myrmidones Inc Ves;
            class MYR_vest_nato_mixed_1_1 {};
            class MYR_vest_nato_mixed_1_2 {};
            class MYR_vest_GA_lite_blk {};
            class MYR_vest_GA_rig_blk {};
        };
    };
    */
    /*

    class Base_Backpacks: baseKit {
        class items {
			class cvo_Kitbag_blk {};
        	class cvo_LegStrapBag_black {};
        	class B_LegStrapBag_coyote_F {};
			class ace_gunbag_Tan {};
        	class B_AssaultPack_cbr {};
        	class B_AssaultPackSpec_cbr {};
        	class B_Carryall_cbr {};
			class B_Carryall_blk {};
			class B_Carryall_green_F {};
        	class B_FieldPack_cbr {};
			class B_FieldPack_blk {};
			class B_FieldPack_oli {};
			class B_FieldPack_khk {};
        	class B_Kitbag_cbr {};
        	class B_Kitbag_rgr {};
        	//class Aegis_B_patrolBackpack_cbr_F {};
        };
    };
    */
    /*

    class Base_Headgear: baseKit {
        class items {
            class H_Cap_headphones_ion_lxws {};
            class lxWS_H_CapB_rvs_blk_ION {};
            class lxWS_H_PASGT_goggles_black_F {};
            class H_HelmetHBK_arid_F {};
            class H_HelmetHBK_olive_headset_F {};
            class H_HelmetHBK_arid_headset_F {};
            class H_HelmetHBK_olive_F {};
            class Aegis_H_Helmet_Virtus_Headset_rgr_F {};
            class Aegis_H_Helmet_Virtus_Headset_snd_F {};
            class Aegis_H_Helmet_Virtus_snd_F {};
            class Aegis_H_Helmet_Virtus_rgr_F {};
            class Atlas_H_PASGT_Cover_Olive_F {};
            class Atlas_H_PASGT_Cover_Tan_F {};
			class H_Beret_blk {};
            class H_Beret_Headset_lxWS {};
            class H_Booniehat_blk {};
            class H_Booniehat_mgrn_hs {};
            class H_Cap_blk_CMMG {};
			class H_Watchcap_blk_hs {};
			class H_Watchcap_blk {};
			class H_Watchcap_cbr_hs {};
			class H_Watchcap_cbr {};
			class H_Watchcap_khk_hs {};
			class H_Watchcap_khk {};
            // Myrmidones Stuff
            class MYR_basic_helmet_gray {};
            class MYR_basic_helmet_khaki {};
            class MYR_cap_blk {};
            class MYR_cap_red {};
            class MYR_cap {};
            class MYR_cap_headphones {};
            class MYR_cap_hs {};
            class MYR_hel_ech_1 {};
            class MYR_hel_sf_1 {};
            class MYR_hel_lgt_1 {};
            class G_Tactical_Yellow {};
            class G_Tactical_Black {};
        };
    };
    */
    /*

    class Base_Facewear: baseKit {
        class items {
            //vanilla+ glasses
            class G_Aviator {};
            class G_Glasses_black_RF {};
            class G_Glasses_white_RF {};
            class G_Spectacles {};
            class G_Tactical_Clear {};
            class G_Tactical_Yellow {};
            class G_Lady_Blue {};
            class G_Shades_Black {};
            class G_Shades_Blue {};
            class G_Shades_Green {};
            class G_Shades_Red {};
            class G_Tactical_Black {};
            class G_Shades_Yellowred {};
            class G_Shemag_shades {};
            class G_Tactical_Camo {};
            class G_Squares_Tinted {};
            class G_Shemag_tactical {};
            //milgear+ glasses
            class milgp_f_tactical_khk {};
            class milgp_f_face_shield_shades_BLK {};
            class milgp_f_face_shield_shades_CB {};
            class milgp_f_face_shield_shades_khk {};
            class milgp_f_face_shield_shades_RGR {};
            class milgp_f_face_shield_shades_shemagh_BLK {};
            class milgp_f_face_shield_shades_shemagh_CB {};
            class milgp_f_face_shield_shades_shemagh_khk {};
            class milgp_f_face_shield_shades_shemagh_RGR {};
            //vanilla goggles
            class G_Balaclava_combat {};
            class G_Balaclava_lowprofile {};
            class G_Combat {};
            class G_Combat_Goggles_blk_F {};
            class G_Combat_lxWS {};
            class G_Balaclava_light_G_blk_F {};
            class G_Lowprofile {};
            //milgear goggles
            class milgp_f_face_shield_goggles_BLK {};
            class milgp_f_face_shield_goggles_CB {};
            class milgp_f_face_shield_goggles_khk {};
            class milgp_f_face_shield_goggles_RGR {};
            class milgp_f_face_shield_goggles_shemagh_BLK {};
            class milgp_f_face_shield_goggles_shemagh_CB {};
            class milgp_f_face_shield_goggles_shemagh_khk {};
            class milgp_f_face_shield_goggles_shemagh_RGR {};
            class milgp_f_goggles_khk {};
            //vanilla misc 
            class G_Headset_light {};
            class G_Shemag_khk {};
            class G_Shemag_oli {};
            class G_Shemag_red {};
            class G_Shemag_tan {};
            class G_Shemag_white {};
            class Aegis_G_Condor_EyePro_F {};
            class G_Headset_Tactical {};
            class G_Headset_Tactical_khk {};
            class G_Headset_Tactical_grn {};
            class G_Balaclava_blk_lxWS {};
            class G_Balaclava_snd_lxWS {};
            class G_Headset_lxWS {};
            //milgear misc 
            class milgp_f_face_shield_BLK {};
            class milgp_f_face_shield_CB {};
            class milgp_f_face_shield_khk {};
            class milgp_f_face_shield_RGR {};
            class milgp_f_face_shield_shemagh_BLK {};
            class milgp_f_face_shield_shemagh_CB {};
            class milgp_f_face_shield_shemagh_khk {};
            class milgp_f_face_shield_shemagh_RGR {};
        };
    };
    */
    /*

    // Weapons
    class Weapons_Primary_SMGs: baseKit {
        class items {
            // SMGs
            class JCA_smg_UMP_black_F {};
            class JCA_smg_UMP_AFG_black_F {};
            class JCA_smg_UMP_VFG_black_F {};
            class Aegis_SMG_Gepard_blk_F {};
			class SMG_02_F {}; // Scorpion Evo 3
            //SMG Mags
            class Aegis_40Rnd_9x21_Gepard_Mag_F {};
            class Aegis_40Rnd_9x21_Gepard_Green_Mag_F {};
            class Aegis_20Rnd_9x21_Gepard_Mag_F {};
            class JCA_25Rnd_45ACP_UMP_Mag {};
            class JCA_25Rnd_45ACP_UMP_Yellow_Mag {};
            class JCA_25Rnd_45ACP_UMP_Tracer_Yellow_Mag {};
			class 30Rnd_9x21_Mag_SMG_02 {};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {};
        };
    };
    */
    /*

    class Weapons_Primary_AKs: baseKit {
        class items {
            // AK74s
			class Aegis_arifle_AK74_F {};
			class Aegis_arifle_AK74_oak_F {};
			class Aegis_arifle_AKM74_F {};
			//AK74s with GL
            class Aegis_arifle_AKM74_GL_F {};
			class Aegis_arifle_AK74_GL_F {};
			class Aegis_arifle_AK74_GL_oak_F {};
			class 1Rnd_HE_Grenade_shell {};
			class 1Rnd_SmokeRed_Grenade_shell {};
			class 1Rnd_SmokePurple_Grenade_shell {};
			class UGL_FlareRed_F {};
			class UGL_FlareGreen_F {};
			class ACE_40mm_Flare_white {};
			class 1Rnd_Pellet_Grenade_shell_lxWS {};
			//AKSUs
            class arifle_AKSM_F {};
			class arifle_AKSM_alt_F {};
            class 30Rnd_545x39_Black_Mag_Yellow_F {};
            class 30Rnd_545x39_Mag_F {};
            class 30Rnd_545x39_Black_Mag_Tracer_Yellow_F {};
        };
    };
    */

    /*
    class Weapons_Primary_Shotty: baseKit {
        class items {
	        class sgun_Mp153_black_F {};
	        class 4Rnd_12Gauge_Pellets {};
	        class 4Rnd_12Gauge_Slug {};
        };
    };
    */

    /*
    class Weapons_Sidearms_Pistols: baseKit {
        class items {

	        class acc_flashlight_pistol {};
	        class hgun_P07_F {};
	        class hgun_G17_F {};
	        class 16Rnd_9x21_Mag_v2 {};
			class 17Rnd_9x19_Mag_RF {};


	        class hgun_Pistol_01_F {};
	        class 10Rnd_9x21_Mag {};
	        class hgun_Rook40_F {};
	        class 17Rnd_9x21_Mag {};
	        class hgun_G17_black_F {};
	        class hgun_Glock19_RF {};
        };
    };
    */

    /*
    class Weapons_Accessories: baseKit {
        class items {
            //flashlight 
            class acc_flashlight {};
	        //basic optics
	        class optic_Holosight_smg_blk_F {};
	        class optic_ACO_grn_desert_RF {};
	        //class Aegis_optic_ACOG {};
	        //class optic_Arco_blk_F {};
	        class optic_ACO_grn {};
	        class optic_Aco {};
	        //class optic_Hamr {};
	        class optic_Holosight_blk_F {};
	        class optic_Holosight_arid_F {};
	        //class optic_VRCO_RF {};
	        class Aegis_optic_ICO {};
	        class Aegis_optic_ICO_sand {};
	        //class Aegis_optic_ROS {};
	        class optic_r1_high_black_sand_lxWS {};
	        class optic_r1_high_sand_lxWS {};
	        class optic_r1_high_snake_lxWS {};
	        class optic_r1_high_lxWS {};
	        class optic_r1_low_lxWS {};
	        class optic_r1_low_sand_lxWS {};
	        class optic_r1_low_snake_lxWS {};
	        class saber_light_lxWS {};
	        class bipod_01_F_blk {};
	        class optic_Aco_smg {};
	        class Aegis_optic_ROS_SMG {};
        };
    };
    */

    /*
    class Weapons_Throwables: baseKit {
        class items {
            class ACE_CTS9 {};
            class HandGrenade {};
            class SmokeShell {};
            class SmokeShellBlue {};
            class SmokeShellGreen {};
            class SmokeShellOrange {};
            class SmokeShellPurple {};
            class SmokeShellRed {};
            class SmokeShellYellow {};
            class MiniGrenade {};
            class Aegis_HandFlare_Green {};
            class Aegis_HandFlare_Red {};
            class ACE_HandFlare_Green {};
            class ACE_HandFlare_Yellow {};
            class ACE_HandFlare_Red {};
            class ACE_HandFlare_White {};
            class Chemlight_yellow {};
            class Chemlight_red {};
            class Chemlight_blue {};
            class Chemlight_green {};
            class ACE_Chemlight_Orange {};
            class ACE_Chemlight_White {};
            class ACE_Chemlight_HiWhite {};
            class ACE_Chemlight_UltraHiOrange {};
        };
    };
    */

    // ROLE KITS
    /*
    class EOD: baseKit {
        role = "ExplosiveSpecialist";
        class items {
            class ACE_Clacker {};
			class ACE_wirecutter {};
			class Toolkit {};
            class tsp_breach_popper_mag {};
            class tsp_breach_popper_auto_mag {};
			class ACE_DefusalKit {};

            //class tsp_breach_silhouette_mag {};
            //class tsp_breach_stick_mag {};
			
			//Minesweepers
            class MineDetector {}; // Vanilla
			class ACE_VMM3 {};
			class ACE_VMH3 {};

			//class ACE_Fortify
        };
    };
    */

    /*
    class MG: baseKit {
        role = "Machinegunner";
        class items {
            //RPK
            //class 75Rnd_762x39_Mag_F {};
            class Aegis_arifle_RPK74M_F {};
            //class arifle_RPK_F {};
            class Aegis_45Rnd_545x39_Mag_F {};
            class Aegis_45Rnd_545x39_Mag_Tracer_F {};
        };
    };
    */

    /*
    class AntiTank: baseKit {
        role = "Anti-Tank";
        class items {
            //RPG7
            class launch_RPG7_F {};
            class RPG7_F {};

            //PSRL Fancy RPG
            class launch_PSRL1_PWS_black_RF {};
            class launch_PSRL1_PWS_olive_RF {};
            class PSRL1_AT_RF {};
            class PSRL1_FRAG_RF {};
            class PSRL1_HE_RF {};
            class PSRL1_HEAT_RF {};

            //For later upgrade
		    //class Aegis_launch_RPG7M_F {};

        };
    };
    */

    /*
    class Marksman: baseKit {
        role = "Marksman";
        class items {
            // SVD
            class Aegis_srifle_SVD_f {};
            class Aegis_srifle_SVD_blk_f {};
            class 10Rnd_762x54_Mag {};
            class Aegis_10Rnd_762x54_SVD_Red_Mag_F {};

    		//ammo
            class 10Rnd_556x45_AP_Stanag_red_RF {};
            class 10Rnd_556x45_AP_Stanag_red_Tan_RF {};

            //GreenMag
            class greenmag_ammo_556x45_basic_60Rnd {};
            class greenmag_ammo_556x45_basic_30Rnd {};

    		//accessories
            class optic_DMS {};
            class optic_SOS {};
			
			//Utility
			class ACE_Tripod {};
			class ACE_RangeCard {};
        };
    };
    */

    /*
    class UAV: baseKit {
        role = "UAV";
        class items {
 
			//EWAR Kit
			class hgun_esd_01_F {};
			class acc_esd_01_flashlight {};
			class muzzle_antenna_01_f {};
			class muzzle_antenna_02_f {};
			class muzzle_antenna_03_f {};

			//ACE Groundspike & Mast
			class ACRE_VHF30108SPIKE {};
			class ACRE_VHF30108 {};
			class ACRE_VHF30108MAST {};
			
		    ////AR-2 Darter 
            //class ION_UAV_01_backpack_lxWS {};

		    ////GLX grenade launcher and ammo
            // class glaunch_GLX_snake_lxWS {};
            // class glaunch_GLX_lxWS {};
            // class glaunch_GLX_tan_lxWS {};
            // class 1Rnd_RC40_HE_shell_RF {};
            // class 1Rnd_RC40_shell_RF {};
            // class 1Rnd_RC40_SmokeBlue_shell_RF {};
            // class 1Rnd_RC40_SmokeGreen_shell_RF {};
            // class 1Rnd_RC40_SmokeOrange_shell_RF {};
            // class 1Rnd_RC40_SmokeRed_shell_RF {};
            // class 1Rnd_RC40_SmokeWhite_shell_RF {};
		    
            ////drone terminal
            // class B_UavTerminal {};
            // class ACE_UAVBattery {};
		
		    //LR radio
            class ACRE_PRC148 {};
        };
    };
    */

    /*
    class Leadership: baseKit {
        role = "Leadership";
        class items {
            class optic_VRCO_RF {};
            class optic_Hamr {};
            class ItemcTab {};

            //Laser Designator
            class ACE_Yardage450 {};

            class Laserdesignator {};
            class LaserdesignatorGPS_01 {};
            class Laserbatteries {};
        };
    };
    */
};
