/* baca file eksternal */
:-dynamic(e1/4).
:-dynamic(e2/4).
:-dynamic(e3/4).
:-dynamic(e4/4).
:-dynamic(e5/4).
:-dynamic(e6/4).
:-dynamic(e7/4).
:-dynamic(e8/4).
:-dynamic(e9/4).
:-dynamic(e10/4).

initEnemy:-
        random(1,11,X),random(1,11,Y),random(1,5,I),itemNum(I,O),asserta(e1(X,Y,'alive',O)),
        random(1,21,X2),random(1,11,Y2),random(1,5,I2),itemNum(I2,O2),asserta(e2(X2,Y2,'alive',O2)),
        random(1,21,X3),random(1,11,Y3),random(1,5,I3),itemNum(I3,O3),asserta(e3(X3,Y3,'alive',O3)),
        random(1,21,X4),random(1,11,Y4),random(1,5,I4),itemNum(I4,O4),asserta(e4(X4,Y4,'alive',O4)),
        random(1,21,X5),random(1,11,Y5),random(1,5,I5),itemNum(I5,O5),asserta(e5(X5,Y5,'alive',O5)),
        random(1,21,X6),random(1,11,Y6),random(1,5,I6),itemNum(I6,O6),asserta(e6(X6,Y6,'alive',O6)),
        random(1,21,X7),random(1,11,Y7),random(1,5,I7),itemNum(I7,O7),asserta(e7(X7,Y7,'alive',O7)),
        random(1,21,X8),random(1,11,Y8),random(1,5,I8),itemNum(I8,O8),asserta(e8(X8,Y8,'alive',O8)),
        random(1,21,X9),random(1,11,Y9),random(1,5,I9),itemNum(I9,O9),asserta(e9(X9,Y9,'alive',O9)),
        random(1,21,X10),random(1,11,Y10),random(1,5,I10),itemNum(I10,O10),asserta(e10(X10,Y10,'alive',O10)).

itemNum(1,O):-O = 'Food'.
itemNum(2,O):-O = 'Water'.
itemNum(3,O):-O = 'Axe'.
itemNum(4,O):-O = 'Medicine'.
itemNum(5,O):-O = ''.

/*readEnemy :- 
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
        rand(F,X1).*/
