/*  CBA_SETTINGS.SQF
*   
*   FORCE Description
*   0x force: Client can control this Setting
*   1x force: Mission overwrites Client
*   2x force:  Server overwrites Client and Mission
*
*   These Settings here can be changed by the Mission Maker.
* 
*/

// CVO - Core
// Enables the DynamicGroups Menu through CVO AUX
force cvo_core_set_enable_dynamicGroups = true;

// CVO - Arsenal - Kits
// false to disable CVO Arsenal Base Kits
force cvo_arsenal_ACE_FieldRations_Enabled = true;
force cvo_arsenal_ACE_Hearing_Enabled = true;
force cvo_arsenal_ACE_Overheating_Enabled = true;

force cvo_arsenal_GreenMag_Loaded = true;
force cvo_arsenal_ImmersionCigs_Loaded = true;

force cvo_arsenal_BaseKit_Medical = true;
force cvo_arsenal_BaseKit_Orientation = true;
force cvo_arsenal_BaseKit_Utility = true;

force cvo_arsenal_BaseRoleKit_Machinegunner = true;
force cvo_arsenal_BaseRoleKit_Marksman = true;
force cvo_arsenal_BaseRoleKit_RTO = true;

force cvo_arsenal_BaseRoleKit_Engineer = true;
force cvo_arsenal_BaseRoleKit_AdvEngineer = true;

force cvo_arsenal_BaseRoleKit_ExplosiveSpecialist = true;
force cvo_arsenal_BaseRoleKit_ExplosiveSpecialist_IEDD = true;

force cvo_arsenal_BaseRoleKit_UAV = true;
force cvo_arsenal_BaseRoleKit_EWSpecialist = true;

force cvo_arsenal_BaseRoleKit_Medic = true;
force cvo_arsenal_BaseRoleKit_Doctor = true;

force cvo_arsenal_BaseRoleKit_Medic_suture = true;
force cvo_arsenal_BaseRoleKit_ExplosiveSpecialist_convertFuses = true;

// CVO - Arsenal
// Save Player Loadout and Restores it on Respawn
force cvo_arsenal_set_load_onRespawn = true;
force cvo_arsenal_set_save_arsenalClose = true;
force cvo_arsenal_set_save_missionStart = true;
force cvo_arsenal_set_save_missionStart_delay = 30;

// CVO - Insignia
// Autodefines the Insigina for players
force cvo_insignia_set_on_arsenalClosed = true;
force cvo_insignia_set_on_missionStart = true;
force cvo_insignia_set_threshold_SL = 5;


// AET Unit Voice Over
force AET_UVO_BLUFOR_LANGUAGE = "WEST";
force AET_UVO_GUER_LANGUAGE = "GUER";
force AET_UVO_OPFOR_LANGUAGE = "EAST";
force AET_UVO_CIV_LANGUAGE = "NONE";

/* UVO Languages Guide
"NONE" = Disabled
"WEST" = WEST [English]
"EAST" = EAST [English]
"GUER" = GUER [English]
"AMER" = American & British [English]
"BRIT" = British [English]
"ASIA" = Chinese
"FREN" = French
"GERM" = German
"RUSS" = Russian
"ARAB" = Arabic
"CZ" = Czech
"POL" = Polish
"JP" = Japanese
*/


// ACE Field Rations
force acex_field_rations_enabled = true;

force acex_field_rations_affectAdvancedFatigue = true;
force acex_field_rations_terrainObjectActions = true;

force acex_field_rations_hungerSatiated = 3;
force acex_field_rations_thirstQuenched = 2.5;

force acex_field_rations_timeWithoutFood = 6;
force acex_field_rations_timeWithoutWater = 2.5;

force acex_field_rations_waterSourceActions = 2;


// ACE Advanced Balistics -> Advanced Ballistics = true or false //
force ace_advanced_ballistics_enabled = true;


// ACE Advanced Balistics -> Advanced Ballistics = true or false //
force ace_advanced_ballistics_enabled = true;
// ACE Artillery -> Artillery Computer Disabled = true or false //
force ace_artillerytables_disableArtilleryComputer = false;
// ACE Headless -> Enabled = true or false
force acex_headless_enabled = false;
// ACE Logistics -> Rearm Amount = 0, 1, or 2 [0 = Entire Vehicle, 1 = Entire Magazine, 2 = Amount based on caliber] //
force ace_rearm_level = 1;

// ACE Medical -> Self Stitching = 0 or 1 [0 = No, 1 = Yes] //
force ace_medical_treatment_allowSelfStitch = 0;

// ACE Overheating -> Suppressor Coefficient = 0.00 to 5.00 //
force ace_overheating_suppressorCoef = 1;

// ACE Pylons -> Enable Pylons Menu from Ammo Trucks = true or false //
force ace_pylons_enabledFromAmmoTrucks = true;

// ACE Hearing  // Todo post first session: switch back to true and false
force ace_hearing_enableCombatDeafness = true;
force ace_hearing_disableEarRinging = false;


// ACE Nightvision
force ace_nightvision_aimDownSightsBlur = 1;
force ace_nightvision_disableNVGsWithSights = false;
force ace_nightvision_effectScaling = 1;
force ace_nightvision_fogScaling = 1.1;
force ace_nightvision_noiseScaling = 1;
force ace_nightvision_shutterEffects = true;

// TSP Breach
force tsp_cba_breach_lock_house = 0;
force tsp_cba_breach_lock_door = 0;



// IEDD Handbook

force iedd_ied_failChance = 0.25;
force iedd_ied_failChanceEOD = 0.05;
force iedd_ied_failExploseChance = 0.05;

force iedd_ied_maxRange = 10;
force iedd_ied_minRange = 5;


// Diwako
force diwako_dui_nametags_enabled = false;
force diwako_dui_nametags_useSideIsFriendly = false;

force diwako_dui_linecompass_enabled = false;
force diwako_dui_enable_compass_dir = 1;
