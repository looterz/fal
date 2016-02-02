private ["_unit", "_weaponsArray", "_ammoArray"];

_unit = _this select 0;

_weaponsArray = _unit getVariable "weaponStash";
_ammoArray = _unit getVariable "ammoStash";

{
  _unit addWeapon _x;
} forEach _weaponsArray;

{
  _unit addMagazine _x;
} forEach _ammoArray;

_unit setVariable ["weaponStash", [], false];
_unit setVariable ["ammoStash", [], false];
_unit setVariable ["stashed", false, false];
_unit addRating -10000;

hint format["Revealing weapons\nStashed %1", _unit getVariable "stashed"];
