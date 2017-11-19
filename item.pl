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
:-dynamic(item11/4).
:-dynamic(item12/4).
:-dynamic(item13/4).
:-dynamic(item14/4).
:-dynamic(item15/4).

initItem:-
        random(1,8,X),random(1,11,Y),asserta(item1(X,Y,'available','water')),
        random(8,15,X2),random(1,11,Y2),asserta(item2(X2,Y2,'available','water')),
        random(15,21,X3),random(1,11,Y3),asserta(item3(X3,Y3,'available','water')),
        random(1,6,X4),random(1,11,Y4),asserta(item4(X4,Y4,'available','food')),
        random(6,11,X5),random(1,11,Y5),asserta(item5(X5,Y5,'available','food')),
        random(11,16,X6),random(1,11,Y6),asserta(item6(X6,Y6,'available','food')),
        random(16,21,X7),random(1,11,Y7),asserta(item7(X7,Y7,'available','food')),
        random(1,11,X8),random(1,11,Y8),asserta(item8(X8,Y8,'available','medicine')),
        random(11,21,X9),random(1,11,Y9),asserta(item9(X9,Y9,'available','medicine')),
        random(1,21,X10),random(1,11,Y10),asserta(item10(X10,Y10,'available','radar')),
        random(1,5,X11),random(1,11,Y11),asserta(item11(X11,Y11,'available','bazooka')),
        random(5,9,X12),random(1,11,Y12),asserta(item12(X12,Y12,'available','bazooka')),
        random(9,13,X13),random(1,11,Y13),asserta(item13(X13,Y13,'available','bazooka')),
        random(13,17,X14),random(1,11,Y14),asserta(item14(X14,Y14,'available','bazooka')),
        random(17,21,X15),random(1,11,Y15),asserta(item15(X15,Y15,'available','bazooka')).

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
