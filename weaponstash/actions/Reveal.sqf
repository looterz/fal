private ["_actionID", "_weaponStash", "_ammoStash"];

_actionID = _this select 2;

player removeAction _actionID;

_weaponStash = player getVariable "weaponStash";
_ammoStash = player getVariable "ammoStash";

{
  player addWeapon _x;
} forEach _weaponStash;

{
  player addMagazine _x;
} forEach _ammoStash;

player setVariable ["weaponStash", [], false];
player setVariable ["ammoStash", [], false];
player setVariable ["stashed", false, false];
player setCaptive false;

hint format["Revealing weapons"];
