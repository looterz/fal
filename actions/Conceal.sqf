private ["_unit", "_weaponsArray", "_ammoArray"];

_unit = _this select 0;

_weaponsArray = weapons _unit;
_ammoArray = magazines _unit;

_unit setVariable ["weaponStash", _weaponsArray, false];
_unit setVariable ["ammoStash", _ammoArray, false];

removeAllWeapons _unit;

_unit setVariable ["stashed", true, false];
_unit addRating 10000;

hint format["Concealing weapons"];
