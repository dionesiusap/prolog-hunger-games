/* baca file eksternal */

readEnemy :- 
        open('enemy.txt',read,F),
        rEnemy(F,Enemy),
        close(F),
        write(Enemy), nl.

rEnemy(F,[]) :- at_end_of_stream(F), !.

rEnemy(F,[X|L]) :- 
        \+ at_end_of_stream(F), !,
        read(F,X),
        rEnemy(F,L).

writeEnemy :-
        open('enemy.txt',write,F),
        rand(F,1),
        close(F).

rand(F,11) :- !.
rand(F,X) :-
        write(F,'\n'),
        write(F,'enemy'),
        write(F,X),
        write(F,'.\n'),
        random(1,21,N),
        write(F,N),
        write(F,'.\n'),
        random(1,11,M),
        write(F,M),
        write(F,'.\n'),
        write(F,'alive.\n'),
        random(1,5,I),
        itemNum(I,O),
        write(F,O),
        write(F,'.'),
        X1 is X+1,
        rand(F,X1).
