////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameInvaders = "East Germany";

//SF Faction
factionMaleInvaders = "OPF_R_F";
//Miltia Faction
if (gameMode == 4) then {factionFIA = ""};

//Flag Images
CSATFlag = "Flag_CSAT_F";
CSATFlagTexture = "\A3\Data_F\Flags\Flag_CSAT_CO.paa";
flagCSATmrk = "flag_CSAT";
if (isServer) then {"CSAT_carrier" setMarkerText "CSAT Carrier"};

//Loot Crate
CSATAmmoBox = "O_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
CSATPlayerLoadouts = [
	//Team Leader
	["vanilla_opfor_teamLeader_enoch"] call A3A_fnc_getLoadout,
	//Medic
	["vanilla_opfor_medic_enoch"] call A3A_fnc_getLoadout,
	//Autorifleman
	["vanilla_opfor_machineGunner_enoch"] call A3A_fnc_getLoadout,
	//Marksman
	["vanilla_opfor_marksman_enoch"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["vanilla_opfor_AT_enoch"] call A3A_fnc_getLoadout,
	//AT2
	["vanilla_opfor_AT2_enoch"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehCSATPVP = ["O_MRAP_02_F","O_MRAP_02_hmg_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
CSATGrunt = "gm_gc_army_rifleman_mpiak74n_80_str";
CSATOfficer = "gm_gc_army_officer_80_gry";
CSATBodyG = "gm_pl_army_rifleman_akm_80_moro";
CSATCrew = "gm_gc_army_crew_mpiaks74nk_80_blk";
CSATMarksman = "gm_gc_army_marksman_svd_80_str";
staticCrewInvaders = "gm_gc_army_machinegunner_lmgrpk_80_str";
CSATPilot = "gm_gc_army_crew_mpiaks74nk_80_blk";

//Militia Units
if (gameMode == 4) then
	{
	FIARifleman = "gm_gc_army_rifleman_mpiak74n_80_str";
	FIAMarksman = "gm_gc_army_marksman_svd_80_str";
	};

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsCSATSentry = ["gm_gc_army_demolition_mpiaks74n_80_str","gm_ge_army_rifleman_mpiak74n_80_str"];
groupsCSATSniper = ["gm_gc_army_marksman_svd_80_str","gm_gc_army_engineer_mpiaks74n_80_str"];
groupsCSATsmall = [groupsCSATSentry,["gm_gc_army_engineer_mpiaks74n_80_str","gm_gc_army_engineer_mpiaks74n_80_str"],groupsCSATSniper];
//Fireteams
groupsCSATAA = ["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_antitank_assistant_mpiak74n_rpg7_80_str"];
groupsCSATAT = ["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_antitank_assistant_mpiak74n_rpg7_80_str"];
groupsCSATmid = [["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_pk_80_str","gm_gc_army_demolition_mpiaks74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str"],groupsCSATAA,groupsCSATAT];
//Squads
CSATSquad = ["gm_gc_army_squadleader_mpiak74n_80_str","gm_ge_army_rifleman_mpiak74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_marksman_svd_80_str","gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_pk_80_str","gm_gc_army_rifleman_mpiak74n_80_str","gm_gc_army_medic_mpiak74n_80_str"];
CSATSpecOp = ["O_R_recon_TL_F","O_R_recon_JTAC_F","O_R_recon_M_F","O_R_recon_exp_F","O_R_recon_LAT_F","O_R_recon_medic_F"];
groupsCSATSquad =
	[
	CSATSquad,
	["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_pk_80_str","gm_gc_army_demolition_mpiaks74n_80_str","gm_gc_army_marksman_svd_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_antitank_assistant_mpiak74n_rpg7_80_str","gm_gc_army_rifleman_mpiak74n_80_str","gm_gc_army_medic_mpiak74n_80_str"],
	["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_pk_80_str","gm_gc_army_rifleman_mpiak74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_medic_mpiak74n_80_str"],
	["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_pk_80_str","gm_gc_army_rifleman_mpiak74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_medic_mpiak74n_80_str"],
	["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_pk_80_str","gm_gc_army_rifleman_mpiak74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_antitank_assistant_mpiak74n_rpg7_80_str","gm_gc_army_medic_mpiak74n_80_str"],
	["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_pk_80_str","gm_gc_army_rifleman_mpiak74n_80_str","gm_gc_army_demolition_mpiak74n_80_str","gm_gc_army_demolition_mpiak74n_80_str","gm_gc_army_medic_mpiak74n_80_str"]
	];

//Militia Groups
if (gameMode == 4) then
	{
	//Teams
	groupsFIASmall =
		[
		["gm_gc_army_machinegunner_lmgrpk_80_str",FIARifleman],
		[FIAMarksman,FIARifleman],
		["gm_gc_army_marksman_svd_80_str","gm_gc_army_machinegunner_lmgrpk_80_str"]
		];
	//Fireteams
	groupsFIAMid =
		[
		["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_lmgrpk_80_str","gm_gc_army_machinegunner_assistant_lmgrpk_80_str",FIAMarksman],
		["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_lmgrpk_80_str","gm_gc_army_machinegunner_assistant_lmgrpk_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str"],
		["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_lmgrpk_80_str","gm_gc_army_machinegunner_assistant_lmgrpk_80_str","gm_gc_army_demolition_mpiak74n_80_str"]
		];
	//Squads
	FIASquad = ["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_assistant_lmgrpk_80_str","gm_gc_army_machinegunner_lmgrpk_80_str",FIARifleman,FIARifleman,FIAMarksman,"gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_medic_mpiak74n_80_str"];
	groupsFIASquad =
		[
		FIASquad,
		["gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_machinegunner_assistant_lmgrpk_80_str","gm_gc_army_machinegunner_lmgrpk_80_str",FIARifleman,"gm_gc_army_engineer_mpiaks74n_80_str","gm_gc_army_demolition_mpiaks74n_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_medic_mpiak74n_80_str"]
		];
	};

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehCSATBike = "gm_gc_army_p601";
vehCSATLightArmed = ["gm_gc_army_brdm2","gm_gc_army_btr60pb"];
vehCSATLightUnarmed = ["gm_gc_army_btr60pa"];
vehCSATTrucks = ["gm_gc_army_ural4320_cargo","gm_gc_army_ural4320_cargo"];
vehCSATAmmoTruck = "gm_gc_army_ural4320_reammo";
vehCSATRepairTruck = "gm_gc_army_ural4320_repair";
vehCSATLight = vehCSATLightArmed + vehCSATLightUnarmed;
//Armored
vehCSATAPC = ["gm_gc_army_bmp1sp2","gm_gc_army_pt76b"];
vehCSATTank = "gm_gc_army_t55a";
vehCSATAA = "gm_gc_army_zsu234v1";
vehCSATAttack = vehCSATAPC + [vehCSATTank];
//Boats
vehCSATBoat = "O_Boat_Armed_01_hmg_F";
vehCSATRBoat = "O_Boat_Transport_01_F";
vehCSATBoats = [vehCSATBoat,vehCSATRBoat,"O_APC_Wheeled_02_rcws_v2_F"];
//Planes
vehCSATPlane = "O_Plane_CAS_02_dynamicLoadout_F";
vehCSATPlaneAA = "O_Plane_Fighter_02_F";
vehCSATTransportPlanes = ["O_T_VTOL_02_infantry_F"];
//Heli
vehCSATPatrolHeli = "O_Heli_Light_02_unarmed_F";
vehCSATTransportHelis = ["O_Heli_Transport_04_bench_F",vehCSATPatrolHeli];
vehCSATAttackHelis = ["O_Heli_Attack_02_dynamicLoadout_F","O_Heli_Attack_02_F"];
//UAV
vehCSATUAV = "O_UAV_02_F";
vehCSATUAVSmall = "O_UAV_01_F";
//Artillery
vehCSATMRLS = "gm_gc_army_t55am2";
vehCSATMRLSMags = "32Rnd_155mm_Mo_shells";
//Combined Arrays
vehCSATNormal = vehCSATLight + vehCSATTrucks + [vehCSATAmmoTruck, vehCSATRepairTruck, "gm_gc_army_ural375d_refuel", "gm_gc_army_ural375d_medic"];
vehCSATAir = vehCSATTransportHelis + vehCSATAttackHelis + [vehCSATPlane,vehCSATPlaneAA] + vehCSATTransportPlanes;

//Militia Vehicles
if (gameMode == 4) then
	{
	vehFIAArmedCar = "gm_gc_army_brdm2";
	vehFIATruck = "gm_gc_army_ural4320_cargo";
	vehFIACar = "gm_gc_army_btr60pa";
	};

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
CSATMG = "I_G_HMG_02_high_F";
staticATInvaders = "O_static_AT_F";
staticAAInvaders = "O_static_AA_F";
CSATMortar = "O_Mortar_01_F";

//Static Weapon Bags
MGStaticCSATB = "I_G_HMG_02_high_weapon_F";
ATStaticCSATB = "O_AT_01_weapon_F";
AAStaticCSATB = "O_AA_01_weapon_F";
MortStaticCSATB = "O_Mortar_01_weapon_F";
//Short Support
supportStaticCSATB = "I_G_HMG_02_support_F";
//Tall Support
supportStaticCSATB2 = "I_G_HMG_02_support_high_F";
//Mortar Support
supportStaticCSATB3 = "O_Mortar_01_support_F";
