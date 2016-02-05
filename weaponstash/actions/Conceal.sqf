private ["_actionID", "_weaponsArray", "_ammoArray", "_weaponStash", "_ammoStash"];

_actionID = _this select 2;

player removeAction _actionID;

_weaponsArray = weapons player;
_ammoArray = magazines player;

_weaponStash = [];
_ammoStash = [];

{
  if (isClass(configFile >> "CfgWeapons" >> _x)) then {
    _weaponStash pushBack _x;
    player removeWeapon _x;
  };
} forEach _weaponsArray;

{
  if (isClass(configFile >> "CfgMagazines" >> _x)) then {
    _ammoStash pushBack _x;
    player removeMagazine _x;
  };
} forEach _ammoArray;

player setVariable ["weaponStash", _weaponStash, false];
player setVariable ["ammoStash", _ammoStash, false];
player setVariable ["stashed", true, false];
player setCaptive true;

hint format["Concealing weapons"];
