# Faloti ArmA 3 Script Library

A library of commonly used scripts and functions in FALOTI ArmA 3 missions.

##Install

Download or clone the repo, and place the "fal" directory into your mission folder.

##Usage

To use the weapon concealment system, add this to all playable units init field in the editor.
```
null = [this] execVM "fal\weaponstash\initPlayer.sqf";
```

##Features

- Weapon concealment system, concealing your weapons hides them from enemies and makes you friendly (captive). Revealing them will make you an enemy.
