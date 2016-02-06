private ["_actionID", "_weaponStash", "_ammoStash", "_helmetStash"];

_actionID = _this select 2;

player removeAction _actionID;

_weaponStash = player getVariable "weaponStash";
_ammoStash = player getVariable "ammoStash";
_helmetStash = player getVariable "helmetStash";

{
  player addWeapon _x;
} forEach _weaponStash;

{
  player addMagazine _x;
} forEach _ammoStash;

if (_helmetStash != "") then {
  player addHeadgear _helmetStash;
};

player setVariable ["weaponStash", [], false];
player setVariable ["ammoStash", [], false];
player setVariable ["helmetStash", "", false];
player setVariable ["stashed", false, false];
player setCaptive false;

hint format["Revealing weapons"];
