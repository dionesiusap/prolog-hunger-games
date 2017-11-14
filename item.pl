/* baca file eksternal */
readItem :- 
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
        random(1,5,I),
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
        rand(F,X1).