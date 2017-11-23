# Hunger Games Prolog

A simple adventure survival game in Prolog (GNU) based on the Hunger Games sequel.  
Made as a final project for IF2121 Course, 2017.  
Written by:  
Ayrton Cyril N./13516019  
Dionesius Agung Andika P./13516043
M. Aditya Farizki/13516082  
Nicholas Wijaya/13516121  

## Getting Started
We assume you have got Prolog GNU already installed on your computer. Run main.pl by simply double-clicking  on the file or open Prolog GNU and type in
```
consult(main.pl).
```

## How to Use
This is how to play the game.

### Program setup
To start a new game, type in
```
start.
```
  
To load a saved game, type in
```
loadGame('<savegame>.pl').
```
Replace <savegame> with your saved game file name.

### Basic instructions
List of basic instructions:
```
start.   --start a new game
help.   --show available commands
quit.   --quit the game
look.   --look around you
n.s.e.w.   --move
map.   --look at the map and detect enemies(need radar to use)
take(Object).   --pick up an object
drop(Object).   --drop an object
use(Object).   --use an object
attack.   --attack enemy that crosses your path
status.   --show your status
saveGame('Filename.pl').   --save your game
loadGame('Filename.pl').   --load previously saved game
```

To save a played game, type in
```
saveGame('<loadgame>.pl').
```
Replace <savegame> with your saved game file name.

## Closing
We wish you a good time and good luck playing the game!