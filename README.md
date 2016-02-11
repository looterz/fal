# Faloti ArmA 3 Script Library

A library of commonly used scripts and functions in FALOTI ArmA 3 missions.

## Install

Download or clone the repo, and place the "fal" directory into your mission folder.

## Usage

### Weapon Concealment
Add this to the missions init.sqf
```sqf
[] execVM "fal\weaponstash\init.sqf";
```

### HALO Drop
Add this to the missions init.sqf
```sqf
[] execVM "fal\halo\init.sqf";
```

Add this to the missions description.ext
```cpp
class CfgSounds
{
  class Vent {name="Vent";sound[]={fal\halo\sounds\Vent.ogg,db-11,1.0};titles[] = {};};
  class Vent2 {name="Vent2";sound[]={fal\halo\sounds\Vent2.ogg,db-11,1.0};titles[] = {};};
  class Para {name="Para";sound[]={fal\halo\sounds\parachute.ogg,db-11,1.0};titles[] = {};};

  sounds[] = {Vent, Vent2, Para};
};
```

Place a marker in the level named "halo_insertion"

## Features

- Weapon concealment system, concealing your weapons hides them from enemies and makes you friendly (captive). Revealing them will make you an enemy.
- HALO Drop system, begins a HALO drop at the specified position for all playable units on mission start, with immersive effects and backpack support.
