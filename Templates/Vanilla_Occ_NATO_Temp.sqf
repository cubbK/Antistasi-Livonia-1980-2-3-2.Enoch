////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "NATO";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "BLU_CTRG_F";
//Miltia Faction
if (gameMode != 4) then {factionFIA = ""};

//Flag Images
NATOFlag = "Flag_NATO_F";
NATOFlagTexture = "\A3\Data_F\Flags\Flag_NATO_CO.paa";
flagNATOmrk = "flag_NATO";
if (isServer) then {"NATO_carrier" setMarkerText "NATO Carrier"};

//Loot Crate
NATOAmmobox = "B_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	["vanilla_blufor_teamLeader_WDL"] call A3A_fnc_getLoadout,
	//Medic
	["vanilla_blufor_medic_WDL"] call A3A_fnc_getLoadout,
	//Autorifleman
	["vanilla_blufor_machineGunner_WDL"] call A3A_fnc_getLoadout,
	//Marksman
	["vanilla_blufor_marksman_WDL"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["vanilla_blufor_AT_WDL"] call A3A_fnc_getLoadout,
	//AT2
	["vanilla_blufor_rifleman_WDL"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["gm_ge_army_iltis_cargo","gm_ge_army_fuchsa0_engineer","gm_ge_army_k125"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOGrunt = "gm_ge_army_rifleman_g3a3_80_ols"; // Rifleman
NATOOfficer = "gm_ge_army_officer_p1_80_oli";
NATOOfficer2 = "gm_ge_army_officer_p1_parka_80_ols";
NATOBodyG = "gm_ge_army_squadleader_g3a3_p2a1_80_ols"; //teamleader
NATOCrew = "gm_ge_army_crew_mp2a1_80_oli";
NATOUnarmed = "B_W_Survivor_F";
NATOMarksman = "gm_ge_army_marksman_g3a3_80_ols";
staticCrewOccupants = "gm_ge_army_rifleman_g3a3_80_ols";
NATOPilot = "gm_ge_army_crew_mp2a1_80_oli";

//Militia Units
if (gameMode != 4) then
	{
	FIARifleman = "gm_ge_army_rifleman_g3a3_80_ols"; 
	FIAMarksman = "gm_ge_army_marksman_g3a3_80_ols"; //marksman
	};

//Police Units
policeOfficer = "gm_ge_army_militarypolice_p1_80_oli";
policeGrunt = "gm_ge_army_militarypolice_p1_80_oli";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentry = ["gm_ge_army_grenadier_g3a3_80_ols",NATOGrunt];
groupsNATOSniper = ["gm_ge_army_marksman_g3a3_80_ols","gm_ge_army_squadleader_g3a3_p2a1_80_ols"];
groupsNATOsmall = [groupsNATOSentry,groupsNATOSniper,["gm_ge_army_rifleman_g3a3_80_ols","gm_ge_army_officer_p1_80_oli"]];
//Fireteams
groupsNATOAA = ["gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_antitank_g3a3_pzf84_80_ols","gm_ge_army_antitank_g3a3_pzf84_80_ols","gm_ge_army_antitank_assistant_g3a3_pzf84_80_ols"];
groupsNATOAT = ["gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_antitank_g3a3_pzf44_80_ols","gm_ge_army_antitank_g3a3_pzf44_80_ols","gm_ge_army_antitank_assistant_g3a3_pzf44_80_ols"];
groupsNATOmid = [["gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_grenadier_g3a3_80_ols","gm_ge_army_demolition_g3a4_80_ols"],groupsNATOAA,groupsNATOAT];
//Squads
NATOSquad = ["gm_ge_army_squadleader_g3a3_p2a1_80_ols",NATOGrunt,"gm_ge_army_demolition_g3a4_80_ols",NATOMarksman,"gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_machinegunner_assistant_g3a3_mg3_80_ols","gm_ge_army_medic_g3a3_80_ols"];
NATOSpecOp = ["gm_ge_army_squadleader_g3a3_p2a1_80_ols","gm_ge_army_antitank_g3a3_milan_80_ols",NATOBodyG,"gm_ge_army_engineer_g3a4_80_ols","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_machinegunner_assistant_mg3_80_ols","gm_ge_army_rifleman_g3a3_80_ols","gm_ge_army_medic_g3a3_80_ols"];
groupsNATOSquad =
	[
	NATOSquad,
	["gm_ge_army_squadleader_g3a3_p2a1_80_ols",NATOGrunt,"gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_machinegunner_assistant_g3a3_mg3_80_ols","gm_ge_army_demolition_g3a4_80_ols","gm_ge_army_demolition_g3a4_80_ols","gm_ge_army_medic_g3a3_80_ols"],
	["gm_ge_army_squadleader_g3a3_p2a1_80_ols",NATOGrunt,"gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_machinegunner_assistant_g3a3_mg3_80_ols","B_W_Soldier_LAT_F","B_W_Soldier_LAT_F","gm_ge_army_medic_g3a3_80_ols"],
	["gm_ge_army_squadleader_g3a3_p2a1_80_ols",NATOGrunt,"gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_machinegunner_assistant_g3a3_mg3_80_ols","gm_ge_army_antitank_g3a3_pzf84_80_ols","gm_ge_army_antitank_assistant_g3a3_pzf84_80_ols","gm_ge_army_medic_g3a3_80_ols"],
	["gm_ge_army_squadleader_g3a3_p2a1_80_ols",NATOGrunt,"gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_machinegunner_assistant_g3a3_mg3_80_ols","gm_ge_army_antitank_g3a3_pzf44_80_ols","gm_ge_army_antitank_assistant_g3a3_pzf44_80_ols","gm_ge_army_medic_g3a3_80_ols"],
	["gm_ge_army_squadleader_g3a3_p2a1_80_ols",NATOGrunt,"gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_machinegunner_assistant_g3a3_mg3_80_ols","B_W_Engineer_F","B_W_Engineer_F","gm_ge_army_medic_g3a3_80_ols"]
	];

//Militia Groups
if (gameMode != 4) then
	{
	//Teams
	groupsFIASmall =
		[
		["gm_ge_army_grenadier_g3a3_80_ols",FIARifleman],
		[FIAMarksman,FIARifleman],
		["gm_ge_army_marksman_g3a3_80_ols","gm_ge_army_marksman_g3a3_80_ols"]
		];
	//Fireteams
	groupsFIAMid =
		[
		["gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_grenadier_g3a3_80_ols","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_marksman_g3a3_80_ols"],
		["gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_grenadier_g3a3_80_ols","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_demolition_g3a4_80_ols"],
		["gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_antitank_assistant_g3a3_pzf84_80_ols","gm_ge_army_antitank_g3a3_pzf84_80_ols"]
		];
	//Squads
	FIASquad = ["gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_grenadier_g3a3_80_ols","gm_ge_army_officer_p1_80_oli","gm_ge_army_officer_p1_80_oli","gm_ge_army_marksman_g3a3_80_ols","gm_ge_army_demolition_g3a4_80_ols","gm_ge_army_medic_g3a3_80_ols"];
	groupsFIASquad =
		[
		FIASquad,
		["gm_ge_army_squadleader_g3a3_p2a1_80_ol","gm_ge_army_rifleman_g3a3_80_ols","gm_ge_army_grenadier_g3a3_80_ols","gm_ge_army_officer_p1_80_oli","gm_ge_army_rifleman_g3a3_80_ols","gm_ge_army_marksman_g3a3_80_ols","gm_ge_army_demolition_g3a4_80_ols","gm_ge_army_medic_g3a3_80_ols"]
		];
	};

//Police Groups
//Teams
groupsNATOGen = [policeOfficer,policeGrunt];

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehNATOBike = "gm_ge_army_k125";
vehNATOLightArmed = ["gm_ge_army_fuchsa0_engineer"];
vehNATOLightUnarmed = ["gm_ge_army_iltis_cargo"];
vehNATOTrucks = ["gm_ge_army_kat1_451_container","gm_ge_army_kat1_451_cargo"];
vehNATOCargoTrucks = ["gm_ge_army_kat1_454_cargo", "gm_ge_army_u1300l_container"];
vehNATOAmmoTruck = "gm_ge_army_kat1_454_reammo";
vehNATORepairTruck = "gm_ge_army_u1300l_repair";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["gm_ge_army_bpz2a0","gm_ge_army_fuchsa0_reconnaissance"];
vehNATOTank = "gm_ge_army_Leopard1a1a1";
vehNATOAA = "gm_ge_army_gepard1a1";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
//Boats
vehNATOBoat = "B_Boat_Armed_01_minigun_F";
vehNATORBoat = "B_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"B_APC_Wheeled_01_cannon_F"];
//Planes
vehNATOPlane = "B_Plane_CAS_01_F";
vehNATOPlaneAA = "B_Plane_Fighter_01_F";
vehNATOTransportPlanes = ["B_T_VTOL_01_infantry_F"];
//Heli
vehNATOPatrolHeli = "B_Heli_Light_01_F";
vehNATOTransportHelis = ["B_Heli_Transport_03_F",vehNATOPatrolHeli,"B_Heli_Transport_01_camo_F"];
vehNATOAttackHelis = ["B_Heli_Light_01_armed_F","B_Heli_Attack_01_F"];
//UAV
vehNATOUAV = "B_UAV_02_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "gm_ge_army_Leopard1a5";
vehNATOMRLSMags = "32Rnd_155mm_Mo_shells";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "B_Truck_01_fuel_F", "B_Truck_01_medical_F", vehNATORepairTruck,"B_APC_Tracked_01_CRV_F"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then
	{
	vehFIAArmedCar = "gm_ge_army_u1300l_container";
	vehFIATruck = "gm_ge_army_kat1_451_container";
	vehFIACar = "gm_ge_army_iltis_milan";
	};

//Police Vehicles
vehPoliceCar = "gm_ge_pol_typ1200";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "I_G_HMG_02_high_F";
staticATOccupants = "B_static_AT_F";
staticAAOccupants = "B_static_AA_F";
NATOMortar = "B_Mortar_01_F";

//Static Weapon Bags
MGStaticNATOB = "I_G_HMG_02_high_weapon_F";
ATStaticNATOB = "B_AT_01_weapon_F";
AAStaticNATOB = "B_AA_01_weapon_F";
MortStaticNATOB = "B_Mortar_01_weapon_F";
//Short Support
supportStaticNATOB = "I_G_HMG_02_support_F";
//Tall Support
supportStaticNATOB2 = "I_G_HMG_02_support_high_F";
//Mortar Support
supportStaticNATOB3 = "B_Mortar_01_support_F";
