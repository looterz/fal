private ["_pos", "_altitude", "_loadout"];

waitUntil {!isNull player};

sleep 1;

_pos = getMarkerPos "halo_insertion";
_altitude = 3000;
_loadout = [
  backpack player,
  getItemCargo (unitBackpack player),
  getWeaponCargo (unitBackpack player),
  getMagazineCargo (unitBackpack player)
];

player setVariable ["loadout", _loadout, true];

player setPos [_pos select 0, _pos select 1, _altitude];

deleteMarker "halo_insertion";

[] spawn {
  private ["_frontpack", "_backpack", "_class"];

  _backpack = unitBackpack player;
  _class = typeOf _backpack;

  _frontpack = createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_collide"];
  _frontpack addBackpackCargo [_class, 1];
  _frontpack attachTo [player,[0.1,0.56,-.72],"pelvis"];
  _frontpack setVectorDirAndUp [[0,1,0],[0,0,-1]];
  player setvariable ["frontpack", _frontpack, true];

  waitUntil {animationState player == "para_pilot"};
  _frontpack attachTo [vehicle player,[0.1,0.72,0.52],"pelvis"];
  _frontpack setVectorDirAndUp [[0,0.1,1],[0,1,0.1]];
};

sleep 0.5;

removeBackpack player;

sleep 0.5;

player addBackpack "B_Parachute";

[] spawn {
  while {(getPos player select 2) > 2} do {
  	playSound "Vent";
  	playSound "Vent2";
  	sleep 5;
  };
};

waitUntil {(getPos player select 2) <= 2};

deleteVehicle (player getVariable "frontpack");

[] spawn {
  private ["_loadout", "_backpack", "_backpackType", "_items", "_weapons", "_magazines"];

  removeBackpack player;

  _loadout = player getVariable "loadout";
  _backpackType = _loadout select 0;
  _items = _loadout select 1;
  _weapons = _loadout select 2;
  _magazines = _loadout select 3;

  if (_backpackType == "") exitWith {};

  player addBackpack _backpackType;
  clearAllItemsFromBackpack player;

  _backpack = unitBackpack player;

  if (count (_items select 0) > 0) then
  {
    for "_i" from 0 to (count (_items select 0) - 1) do
    {
      _backpack addItemCargoGlobal [(_items select 0) select _i, (_items select 1) select _i];
    };
  };

  if (count (_weapons select 0) > 0) then
  {
    for "_i" from 0 to (count (_weapons select 0) - 1) do
    {
      _backpack addWeaponCargoGlobal [(_weapons select 0) select _i, (_weapons select 1) select _i];
    };
  };

  if (count (_magazines select 0) > 0) then
  {
    for "_i" from 0 to (count (_magazines select 0) - 1) do
    {
      _backpack addMagazineCargoGlobal [(_magazines select 0) select _i, (_magazines select 1) select _i];
    };
  };
};
