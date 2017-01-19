# Faloti ArmA 3 Script Library

A library of functions and scripts used in the Faloti coop campaign.

# Installation

Place the "fal" folder into your mission directory and execute ```fal\init.sqf``` in the missions ```init.sqf```.

Add the following line of code to your missions ```description.ext``` to include the FAL functions library

```cpp
class CfgFunctions {
  #include "fal\functions.hpp"
};
```

# Functions

### fal_fnc_saveGear

Locally saves the players loadout to the ```falotiGear``` profileNameSpace variable for loading later.

Example
```sqf
[] call fal_fnc_saveGear;
```

### fal_fnc_loadGear

Loads the players last saved gear loadout from the ```falotiGear``` profileNameSpace variable.

Example
```sqf
[] call fal_fnc_loadGear;
```