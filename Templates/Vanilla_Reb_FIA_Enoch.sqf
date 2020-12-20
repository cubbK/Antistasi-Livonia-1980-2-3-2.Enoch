////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = "FIA";
SDKFlag = "Flag_FIA_F";
SDKFlagTexture = "\A3\Data_F\Flags\Flag_Altis_CO.paa";
typePetros = "gm_ge_army_officer_p1_80_oli";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "gm_gc_civ_man_02_80_brn";
SDKUnarmed = "gm_gc_civ_man_01_80_blu";
SDKSniper = ["gm_ge_army_marksman_g3a3_80_ols","gm_ge_army_marksman_g3a3_80_ols"];
SDKATman = ["gm_ge_army_antitank_g3a3_pzf84_80_ols","gm_ge_army_antitank_g3a3_pzf84_80_ols"];
SDKMedic = ["gm_ge_army_medic_g3a3_80_ols","gm_ge_army_medic_g3a3_80_ols"];
SDKMG = ["gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_machinegunner_mg3_80_ols"];
SDKExp = ["gm_ge_army_demolition_g3a4_80_ols","gm_ge_army_demolition_g3a4_80_ols"];
SDKGL = ["gm_ge_army_grenadier_g3a3_80_ols","gm_ge_army_grenadier_g3a3_80_ols"];
SDKMil = ["gm_ge_army_engineer_g3a4_80_ols","gm_ge_army_engineer_g3a4_80_ols"];
SDKSL = ["gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_squadleader_g3a3_p2a1_80_ol"];
SDKEng = ["gm_ge_army_demolition_g3a4_80_ols","gm_ge_army_demolition_g3a4_80_ols"];

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
groupsSDKmid = [SDKSL,SDKGL,SDKMG,SDKMil];
groupsSDKAT = [SDKSL,SDKMG,SDKATman,SDKATman,SDKATman];
groupsSDKSquad = [SDKSL,SDKGL,SDKMil,SDKMG,SDKMil,SDKATman,SDKMil,SDKMedic];
groupsSDKSquadEng = [SDKSL,SDKGL,SDKMil,SDKMG,SDKExp,SDKATman,SDKEng,SDKMedic];
groupsSDKSquadSupp = [SDKSL,SDKGL,SDKMil,SDKMG,SDKATman,SDKMedic,[staticCrewTeamPlayer,staticCrewTeamPlayer],[staticCrewTeamPlayer,staticCrewTeamPlayer]];
groupsSDKSniper = [SDKSniper,SDKSniper];
groupsSDKSentry = [SDKGL,SDKMil];

//Rebel Unit Tiers (for costs)
sdkTier1 = SDKMil + [staticCrewTeamPlayer] + SDKMG + SDKGL + SDKATman;
sdkTier2 = SDKMedic + SDKExp + SDKEng;
sdkTier3 = SDKSL + SDKSniper;
soldiersSDK = sdkTier1 + sdkTier2 + sdkTier3;

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
vehSDKBike = "gm_ge_army_k125";
vehSDKLightArmed = "gm_ge_army_u1300l_container";
vehSDKAT = "gm_ge_army_iltis_milan";
vehSDKLightUnarmed = "gm_ge_army_iltis_cargo";
vehSDKTruck = "gm_ge_army_kat1_451_container";
//vehSDKHeli = "I_C_Heli_Light_01_civil_F";
vehSDKPlane = "I_C_Plane_Civil_01_F";
vehSDKBoat = "I_G_Boat_Transport_01_F";
vehSDKRepair = "gm_ge_army_u1300l_repair";

//Civilian Vehicles
civCar = "gm_ge_civ_typ1200";
civTruck = "gm_ge_civ_u1300l";
civHeli = "C_Heli_Light_01_civil_F";
civBoat = "C_Boat_Transport_02_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Static Weapons
SDKMGStatic = "I_G_HMG_02_high_F";
staticATteamPlayer = "I_static_AT_F";
staticAAteamPlayer = "I_static_AA_F";
SDKMortar = "I_G_Mortar_01_F";
SDKMortarHEMag = "8Rnd_82mm_Mo_shells";
SDKMortarSmokeMag = "8Rnd_82mm_Mo_Smoke_white";

//Static Weapon Bags
MGStaticSDKB = "I_G_HMG_02_high_weapon_F";
ATStaticSDKB = "I_AT_01_weapon_F";
AAStaticSDKB = "I_AA_01_weapon_F";
MortStaticSDKB = "I_Mortar_01_weapon_F";
//Short Support
supportStaticSDKB = "I_G_HMG_02_support_F";
//Tall Support
supportStaticsSDKB2 = "I_G_HMG_02_support_high_F";
//Mortar Support
supportStaticsSDKB3 = "I_Mortar_01_support_F";

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
//Mines
ATMineMag = "ATMine_Range_Mag";
APERSMineMag = "APERSMine_Range_Mag";

//Breaching explosives
//Breaching APCs needs one demo charge
breachingExplosivesAPC = [["DemoCharge_Remote_Mag", 1]];
//Breaching tanks needs one satchel charge or two demo charges
breachingExplosivesTank = [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]];

//Starting Unlocks
initialRebelEquipment append ["gm_placeableweapon_p1_blk","gm_placeableweapon_lp1_blk","gm_placeableweapon_mp2a1_blk"];
initialRebelEquipment append ["gm_placeableweapon_mp2a1_blk"];
initialRebelEquipment append ["6Rnd_45ACP_Cylinder","11Rnd_45ACP_Mag","2Rnd_12Gauge_Pellets","2Rnd_12Gauge_Slug","30Rnd_9x21_Mag_SMG_02","MiniGrenade","SmokeShell"];
initialRebelEquipment append ["gm_gc_army_backpack_80_assaultpack_str", "gm_gc_army_backpack_satchel_80_blk"];
initialRebelEquipment append ["gm_placeableweapon_dk_army_vest_54_crew", "gm_placeableweapon_dk_army_vest_80_crew", "gm_placeableweapon_ge_army_vest_80_belt"];
initialRebelEquipment append ["gm_placeableitem_df7x40_blk","gm_placeableitem_ferod16_oli", "gm_placeableitem_gc_compass_f73", "gm_placeableitem_watch_kosei_80", "gm_placeableitem_repairkit_01", "gm_placeableitem_gc_army_medkit"];
//Greenfor uniforms
allRebelUniforms append ["gm_placeableitem_gc_army_uniform_soldier_80_blk", "gm_placeableitem_gc_army_uniform_soldier_80_oli", "gm_placeableitem_gc_army_uniform_soldier_parka_80_ols", "gm_placeableitem_gc_army_uniform_soldier_80_str", "gm_placeableitem_dk_army_soldier_84_oli", "gm_placeableitem_dk_army_soldier_84_m84","gm_placeableitem_gc_civ_uniform_man_01_80_blu"];
//TFAR Unlocks
if (hasTFAR) then {initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (hasTFAR && startWithLongRangeRadio) then {initialRebelEquipment pushBack "tf_anprc155"};
