private ["_actionID", "_weaponsArray", "_weaponItems", "_weaponItemsTwo", "_ammoArray", "_helmet", "_eyes", "_weaponStash", "_ammoStash", "_helmetStash", "_eyeStash"];

_actionID = _this select 2;

player removeAction _actionID;

_weaponsArray = weapons player;
_weaponItems = primaryWeaponItems player;
_weaponItemsTwo = secondaryWeaponItems player;
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

_helmet = headgear player;

if (_helmet != "") then {
  _helmetStash = _helmet;
  removeHeadgear player;
};

_eyes = goggles player;

if (_eyes != "") then {
  _eyeStash = _eyes;
  removeGoggles player;
};

player setVariable ["weaponStash", _weaponStash, false];
player setVariable ["weaponItemsStash", _weaponItems, false];
player setVariable ["weaponItemsStashTwo", _weaponItemsTwo, false];
player setVariable ["ammoStash", _ammoStash, false];
player setVariable ["helmetStash", _helmetStash, false];
player setVariable ["eyeStash", _eyeStash, false];
player setVariable ["stashed", true, false];
player setCaptive true;
