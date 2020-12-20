params ["_loadoutName"];
// change dont forget
private _basicMedicalSupplies =
	if (hasACE) then {
		[
			["FirstAidKit",3]
		]
	} else {
		[
			["FirstAidKit",3]
		];
	};

private _basicMiscItems =
	if (hasACE) then {
		[
			["ACE_Earplugs",1],
			["ACE_Cabletie",3]
		];
	} else {
		[

		];
	};

private _medicSupplies =
	if (hasACE) then {
		[
			["Medikit", 1]
		]
	} else {
		[
			["Medikit", 1]
		];
	};

private _fnc_modItem = {
	params ["_hasMod", "_modItem", "_replacementItem"];

	if (_hasMod) then {
		[_modItem];
	} else {
		if (isNil "_replacementItem") then {
			[];
		} else {
			[_replacementItem];
		};
	};
};

private _fnc_modItemNoArray = {
	(_this call _fnc_modItem) select 0;
};

private _fnc_tfarRadio = {
	params ["_radio"];
	[hasTFAR, _radio, "ItemRadio"] call _fnc_modItemNoArray;
};

private _tfarMicroDAGRNoArray = [hasTFAR, "TF_MicroDagr", "ItemWatch"] call _fnc_modItemNoArray;

private _aceFlashlight = [hasACE, ["ACE_Flashlight_XL50", 1]] call _fnc_modItem;
private _aceM84 = [hasACE, ["ACE_M84",2,1]] call _fnc_modItem;
private _aceDefusalKit = [hasACE, ["ACE_DefusalKit", 1]] call _fnc_modItem;
private _aceClacker = [hasACE, ["ACE_Clacker", 1]] call _fnc_modItem;
private _aceRangecard = [hasACE, ["ACE_Rangecard", 1]] call _fnc_modItem;
private _aceKestrel = [hasACE, ["ACE_Kestrel14500", 1]] call _fnc_modItem;

private _loadoutArray = missionNamespace getVariable [_loadoutName, []];

if (_loadoutArray isEqualTo []) then {
	_loadoutArray = call compile preprocessFileLineNumbers format ["Templates\Loadouts\%1.sqf", _loadoutName];
	missionNamespace setVariable [_loadoutName, _loadoutArray];
};

_loadoutArray;
