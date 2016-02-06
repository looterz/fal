if (isDedicated) exitWith {};

waitUntil {!isNull player};

player setVariable ["stashed", false, false];
player setVariable ["weaponStash", [], false];
player setVariable ["ammoStash", [], false];
player setVariable ["helmetStash", "", false];

player addAction ["Conceal Weapons", "fal\weaponstash\actions\Conceal.sqf", "", 0, false, true, "", "((_target == _this) && !(player getVariable 'stashed'))"];
player addAction ["Reveal Weapons", "fal\weaponstash\actions\Reveal.sqf", "", 0, false, true, "", "((_target == _this) && (player getVariable 'stashed'))"];
