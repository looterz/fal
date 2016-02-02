# Faloti ArmA 3 Script Library

##Install

Download or clone the repo, and place the "fal" directory into your mission folder.

##Usage

To use the weapon concealment system, add this to all playable units init field in the editor.
```
null = [this] execVM "fal\initPlayer.sqf";
```

##Features

- Weapon concealment system, concealing your weapons hides them from enemies and makes you friendly. Revealing them will make you an enemy.