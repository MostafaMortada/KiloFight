# KiloFight

A beat 'em up game, with a set goal in mind: make it as small as possible, preferably less than 1 kilobyte. Right now, only a Lua version exists, but I'll make more versions in the future with other programming languages golfed to hell and back.

---

## Gameplay

Kill every single enemy you see in a 2D randomly generated level! Be careful though, as they can fight back and ambush you!
There are 20 enemies, which will try to go towards you. You can only withstand 5 hits, so dodge carefully.

## Controls

* Use `w,a,s,d` to move the player
* Go to the same grid square as an enemy to attack them. If an enemy is at an adjacent square to you, you will be damaged instead.

_P.S. Press only one key at a time, each one followed by `Return`. To wait a turn, press `Return` without any previous input._

## Interface

The number of enemies is displayed at the bottom of the screen, along with the player's HP. To the right of the map grid are the HP values corresponding to the enemies still alive, at the same horizontal level.
