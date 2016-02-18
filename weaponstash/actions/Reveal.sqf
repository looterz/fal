private ["_actionID", "_weaponStash", "_weaponItems", "_weaponItemsTwo", "_ammoStash", "_helmetStash", "_eyeStash"];

_actionID = _this select 2;

if (not isNil "_actionID") then
{
  player removeAction _actionID;
};

_weaponStash = player getVariable ["weaponStash", []];
_weaponItems = player getVariable ["weaponItemsStash", []];
_weaponItemsTwo = player getVariable ["weaponItemsStashTwo", []];
_ammoStash = player getVariable ["ammoStash", []];
_helmetStash = player getVariable ["helmetStash", ""];
_eyeStash = player getVariable ["eyeStash", ""];

{
  player addWeapon _x;
} forEach _weaponStash;

{
  player addPrimaryWeaponItem _x;
} forEach _weaponItems;

{
  player addSecondaryWeaponItem _x;
} forEach _weaponItemsTwo;

{
  player addMagazine _x;
} forEach _ammoStash;

if (_helmetStash != "") then
{
  player addHeadgear _helmetStash;
};

if (_eyeStash != "") then
{
  player addGoggles _eyeStash;
};

player setVariable ["weaponStash", [], false];
player setVariable ["weaponItemsStash", [], false];
player setVariable ["weaponItemsStashTwo", [], false];
player setVariable ["ammoStash", [], false];
player setVariable ["helmetStash", "", false];
player setVariable ["eyeStash", "", false];
player setVariable ["stashed", false, false];
player setCaptive false;
