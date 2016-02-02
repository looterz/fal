private ["_unit"];

_unit = _this select 0;

_unit setVariable ["stashed", false, false];
_unit setVariable ["weaponStash", [], false];
_unit setVariable ["ammoStash", [], false];

_ConcealAction = [["Conceal Weapons", "fal\actions\Conceal.sqf", "", 0, false, false, "", "!(player getVariable 'stashed')"]] call CBA_fnc_addPlayerAction;
_RevealAction = [["Reveal Weapons", "fal\actions\Reveal.sqf", "", 0, false, false, "", "(player getVariable 'stashed')"]] call CBA_fnc_addPlayerAction;

//_ConcealAction = [[["Conceal Weapons", "fal\actions\Conceal.sqf", "", 1, false, false, "", "!(player getVariable 'stashed')"]], "CBA_fnc_addPlayerAction", true, true] call BIS_fnc_MP;
//_RevealAction = [[["Reveal Weapons", "fal\actions\Reveal.sqf", "", 1, false, false, "", "(player getVariable 'stashed')"]], "CBA_fnc_addPlayerAction", true, true] call BIS_fnc_MP;
