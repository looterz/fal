if (isDedicated) exitWith {};

waitUntil {!isNull player};

player setVariable ["stashed", false, false];
player setVariable ["weaponStash", [], false];
player setVariable ["ammoStash", [], false];

_ConcealWeapons = [[player, ["Conceal Weapons", "fal\weaponstash\actions\Conceal.sqf", "", 0, false, true, "", "!(player getVariable 'stashed')"]], "addAction", true, true] call BIS_fnc_MP;
_RevealWeapons = [[player, ["Reveal Weapons", "fal\weaponstash\actions\Reveal.sqf", "", 0, false, true, "", "(player getVariable 'stashed')"]], "addAction", true, true] call BIS_fnc_MP;
