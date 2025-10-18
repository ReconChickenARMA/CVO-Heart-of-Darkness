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
            
        };
    };
    
    

    class watches: baseKit {
        class items {
            class vn_b_item_watch {};
            class gm_watch_kosei_80 {};
            class gm_watch_kosei_80_blu {};
            class gm_watch_kosei_80_red {};
            class gm_watch_kosei_80_grn {};
        };
    };
    
    

    // Wearables / Gear
    class Base_Uniforms: baseKit {
        class items {
            //GDR Merc mixed uniforms
            class gm_gc_civ_uniform_man_01_80_blk {};
            class gm_gc_civ_uniform_man_01_80_blu {};
            class gm_gc_civ_uniform_man_02_80_brn {};
            class gm_xx_army_uniform_fighter_03_brn {};
            class gm_xx_army_uniform_fighter_03_blk {};
            class gm_xx_army_uniform_fighter_02_oli {};
            class gm_xx_army_uniform_fighter_01_alp {};
            class gm_xx_army_uniform_fighter_01_oli {};
            class gm_ge_uniform_pilot_commando_blk {};
            class gm_ge_uniform_pilot_commando_gry {};
            class gm_ge_uniform_pilot_commando_oli {};
            class gm_ge_uniform_pilot_commando_rolled_blk {};
            class gm_ge_uniform_pilot_commando_rolled_gry {};
            class gm_ge_uniform_pilot_commando_rolled_oli {};
            
            
        };
    };
    
    

    class Base_Vests: baseKit {
        class items {
            class HoD_Equip_V_Chicom_Type56_Grn {};
            class HoD_Equip_V_Chicom_Type56_Khk {};
            class HoD_Equip_V_Chicom_Type56_Mix_01 {};
            class HoD_Equip_V_Chicom_Type56_Mix_02 {};
            class HoD_Equip_V_Chicom_Type56_Mix_03 {};
            class HoD_Equip_Vest_Rifleman_Brn {};
            class HoD_Equip_Vest_SMG_Brn {};
            class vn_b_vest_sog_01 {};
            class vn_b_vest_sog_04 {};
            
        };
    };
    
    
    

    class Base_Headgear: baseKit {
        class items {
            class gm_xx_headgear_headwrap_01_grn {};
            class gm_xx_headgear_headwrap_01_oli {};
            class gm_xx_headgear_headwrap_01_blk {};
            class vn_b_headband_01 {};
            class vn_b_headband_04 {};
            class vn_b_bandana_04 {};
            class H_Bandanna_gry {};
            class H_Bandanna_blu {};
            class H_Bandanna_cbr {};
            class gm_ge_headgear_hat_beanie_blk {};
            class HoD_I_UPB_Headgear_Booniehat_Olv {};            
            class H_Booniehat_khk {};
            class H_Booniehat_oli {};
            class H_Booniehat_tan {};
            class H_Hat_Safari_sand_F {};
            class H_Hat_Safari_olive_F {};            
           
        };
    };
    
    

    class Base_Facewear: baseKit {
        class items {
            //vanilla+ glasses
            class G_Aviator {};
            class G_Bandanna_aviator {};
            class G_Bandanna_khk {};
            class G_Bandanna_oli {};
            class G_Bandanna_tan {};
            class G_Spectacles {};
            class gm_ge_facewear_dustglasses {};
            class gm_ge_facewear_dustglasses_relaxed {};
            class gm_gc_army_facewear_dustglasses {};
            class gm_ge_facewear_glacierglasses {};
            class gm_xx_facewear_scarf_01_blk {};
            class gm_xx_facewear_scarf_01_pt1 {};
            class gm_xx_facewear_scarf_01_grn {};
            class gm_xx_facewear_scarf_01_gry {};
            class gm_xx_facewear_scarf_02_blk {};
            class gm_xx_facewear_scarf_02_grn {};
            class gm_xx_facewear_scarf_02_oli {};
            class gm_xx_facewear_scarf_01_oli {};
            class gm_ge_facewear_stormhood_blk {};
            class gm_ge_facewear_stormhood_dustglasses_blk {};
            class gm_ge_facewear_stormhood_brd {};
            
        };
    };
    


    class Weapons_Primary_AKs: baseKit {
        class items {
            // AK74s
			class sp_fwa_sig510_3 {};
			class gm_akms_wud {};
			class gm_akm_wud {};
			class gm_mpikm72_brn {};
			class gm_mpikm72_blk {};
			class gm_mpikm72_prp {};
			class gm_mpikms72_brn {};
			class gm_mpikms72_blk {};
			class gm_mpikms72_prp {};
			class gm_mpikms72k_brn {};
			class gm_mpikms72k_blk {};
			class gm_mpikms72k_prp {};
			class gm_30Rnd_762x39mm_B_57N231_mpikm_blk {};
			class gm_30Rnd_762x39mm_B_T_57N231P_mpikm_blk {};
			class gm_flashlightp2_wht_akhandguard_blu {};
			
        };
    };
    



    
    class Weapons_Throwables: baseKit {
        class items {
            class gm_smokeshell_wht_dm25 {};
            class gm_handgrenade_frag_m26 {};
            
        };
    };
    

    // ROLE KITS
    
    class EOD: baseKit {
        role = "ExplosiveSpecialist";
        class items {
            class gm_akm_pallad_wud {};
            class gm_1rnd_40x47mm_he_ngo74 {};
            class gm_explosive_petn_charge {};
            class vn_b_vest_sas_02 {};
        };
    };
    

    
    class MG: baseKit {
        role = "Machinegunner";
        class items {                  
            class gm_hmgpkm_prp {};
            class gm_100Rnd_762x54mmR_B_T_7t2_pk_grn {};
            class vn_rpd {};
            class vn_rpd_125_mag {};
            class gm_lmgrpk_brn {};
            class gm_lmgrpk_blk {};
            class gm_lmgrpk_prp {};
            class gm_rpk_wud {};
            class gm_lmgk500_brn {};
            class gm_lmgk500_blk {};
            class gm_lmgk500_prp {};
            class gm_lmgk500s_brn {};
            class gm_lmgk500s_blk {};
            class gm_lmgk500s_prp {};
            class gm_75Rnd_762x39mm_B_57N231_mpikm_blk {};
            class gm_75Rnd_762x39mm_B_T_57N231P_mpikm_blk {};
            
        };
    };
    
    class AR: baseKit {
        role = "Autorifleman";
        class items {
            class gm_75Rnd_762x39mm_B_57N231_mpikm_blk {};
            class gm_75Rnd_762x39mm_B_T_57N231P_mpikm_blk {};
            class sp_fwa_acc_bipod_stgw57_forward {};
            
        };
    };

        class AsstMG: baseKit {
        role = "AsstMG";
        class items {
            class gm_75Rnd_762x39mm_B_57N231_mpikm_blk {};
            class gm_75Rnd_762x39mm_B_T_57N231P_mpikm_blk {};
            class gm_100Rnd_762x54mmR_B_T_7t2_pk_grn {};
            
        };
    };

    
    class Marksman: baseKit {
        role = "Marksman";
        class items {
            class gm_mpikms72ksd_brn {};
            class gm_mpikms72ksd_blk {};
            class gm_mpikms72ksd_prp {};
            class gm_30Rnd_762x39mm_BSD_57N231U_mpikm_blk {};
            class gm_zfk4x25_blk {};
            class gm_suppressor_pbs1_762mm_blk {};
        };  
    };

    
    class Leadership: baseKit {
        role = "Leadership";
        class items {
            class gm_watch_gub_f455_gm {};
            class gm_watch_kosei_80_slv {};
            class gm_watch_kosei_80_gold {};
            class gm_ferod16_des {};
            class gm_ferod16_oli {};
            class ItemMap {};
        };
    };

    class Medic: baseKit {
        role = "Medic";
        class items {
            class gm_dk_army_backpack_73_oli {};
            class gm_ge_army_backpack_80_oli {};
        };
    };
    
};
