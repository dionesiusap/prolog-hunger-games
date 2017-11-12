/* baca file eksternal */
read :- 
        open('enemy.txt',read,F),
        readEnemy(F,Enemy),
        close(F),
        write(Enemy), nl.

readEnemy(F,[]) :- at_end_of_stream(F), !.

readEnemy(F,[X|L]) :- 
        \+ at_end_of_stream(F), !,
        read(F,X),
        readEnemy(F,L).

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
        random(1,20,N),
        write(F,N),
        write(F,'.\n'),
        random(1,10,M),
        write(F,M),
        write(F,'.\n'),
        write(F,'alive.\n'),
        random(1,5,O),
        write(F,O),
        write(F,'.'),
        X1 is X+1,
        rand(F,X1).
