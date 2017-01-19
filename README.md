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