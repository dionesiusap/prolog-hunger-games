start:-write('Welcome to the 77th Hunger Games!\nYou have been chosen as one of the lucky contestants. Be the last man standing and you will be rembered as \none of the victors\n\n\n'),help.
help:-write('Available commands:\nstart.   --start the games!\nhelp.   --show available commands\nquit.   --quit the game\nlook.   --look around you\nn.s.e.w.   --move\nmap.   --look at the map and detect enemies(need radar to use)\ntake(Object).   --pick up an object\ndrop(Object).   --drop an object\nuse(Object).   --use an object\nattack.   --attack enemy that crosses your path\nstatus.   --show your status\nsave(Filename).   --save your game\nload(Filename).   --load previously saved game\n').

matrix([[1,2,3],[4,5,6],[7,8,9]]).
get_elmt(M,I,J,Elmt):-nth1(I,M,Row),repeat,get(Row,J,Elmt).
get([A|B],1,Elmt):-Elmt is A.
get([A|B],J,Elmt):-W is J-1,get(B,W,Elmt).