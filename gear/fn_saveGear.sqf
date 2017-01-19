private _loadout = getUnitLoadout player;

profileNamespace setVariable["falotiGear", _loadout];

saveProfileNamespace;

diag_log format["fn_saveGear %1", _loadout];