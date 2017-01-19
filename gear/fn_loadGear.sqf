private _loadout = profileNameSpace getVariable["falotiGear", []];

if (count _loadout != 0) then {
    player setUnitLoadout _loadout;

    diag_log format["fn_loadGear %1", _loadout];
};