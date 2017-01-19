_missionEndHnd = addMissionEventHandler ["Ended", {
    if (alive player) then {
        [] call fal_fnc_saveGear;
    };
}];

waitUntil { !(isNull player) };

[] call fal_fnc_loadGear;