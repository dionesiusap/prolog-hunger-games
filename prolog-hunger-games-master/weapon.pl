/* baca file eksternal */
readWeapon :- 
        open('weapon.txt',read,F),
        rWeapon(F,Weapon),
        close(F),
        write(Weapon), nl.

rWeapon(F,[]) :- at_end_of_stream(F), !.

rWeapon(F,[X|L]) :- 
        \+ at_end_of_stream(F), !,
        read(F,X),
        rWeapon(F,L).

writeWeapon :-
        open('weapon.txt',write,F),
        rand(F,1),
        close(F).

rand(F,11) :- !.
rand(F,X) :-
        write(F,'\n'),
        write(F,'bazooka'),
        write(F,'.\n'),
        random(1,21,N),
        write(F,N),
        write(F,'.\n'),
        random(1,11,M),
        write(F,M),
        write(F,'.'),
        X1 is X+1,
        rand(F,X1).