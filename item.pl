/* baca file eksternal */

/*(X,Y,taken,type)*/
:-dynamic(item1/4).
:-dynamic(item2/4).
:-dynamic(item3/4).
:-dynamic(item4/4).
:-dynamic(item5/4).
:-dynamic(item6/4).
:-dynamic(item7/4).
:-dynamic(item8/4).
:-dynamic(item9/4).
:-dynamic(item10/4).
initItem:-
        random(1,11,X),random(1,11,Y),asserta(item1(X,Y,'available','water')),
        random(1,21,X2),random(1,11,Y2),asserta(item2(X2,Y2,'available','water')),
        random(1,21,X3),random(1,11,Y3),asserta(item3(X3,Y3,'available','water')),
        random(1,21,X4),random(1,11,Y4),asserta(item4(X4,Y4,'available','food')),
        random(1,21,X5),random(1,11,Y5),asserta(item5(X5,Y5,'available','food')),
        random(1,21,X6),random(1,11,Y6),asserta(item6(X6,Y6,'available','food')),
        random(1,21,X7),random(1,11,Y7),asserta(item7(X7,Y7,'available','food')),
        random(1,21,X8),random(1,11,Y8),asserta(item8(X8,Y8,'available','medicine')),
        random(1,21,X9),random(1,11,Y9),asserta(item9(X9,Y9,'available','medicine')),   
        random(1,21,X10),random(1,11,Y10),asserta(item10(X10,Y10,'available','radar')).


/*readItem :- 
        open('item.txt',read,F),
        rItem(F,Item),
        close(F),
        write(Item), nl.

rItem(F,[]) :- at_end_of_stream(F), !.

rItem(F,[X|L]) :- 
        \+ at_end_of_stream(F), !,
        read(F,X),
        rItem(F,L).

writeItem :-
        open('item.txt',write,F),
        rand(F,1),
        close(F).

itemNum(1,'food').
itemNum(2,'drink').
itemNum(3,'medicine').
itemNum(4,'radar').

rand(F,11) :- !.
rand(F,X) :-
        write(F,'\n'),
        
        itemNum(I,Z),
        write(F,Z),
        write(F,'.\n'),
        random(1,21,N),
        write(F,N),
        write(F,'.\n'),
        random(1,11,M),
        write(F,M),
        write(F,'.'),
        X1 is X+1,
        rand(F,X1).*/