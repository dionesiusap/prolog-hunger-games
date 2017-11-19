/***** MAP *****/

map:- player(X,Y,S,Lp,H,T,W,L), member(radar,L),!, writeRow(0,0).
map:- player(X,Y,S,Lp,H,T,W,L), \+(member(radar,L)),!,write('You need a radar to see the entire map.\n').

:-dynamic(x1/2).
:-dynamic(x3/2).
:-dynamic(x5/2).
:-dynamic(x7/2).
:-dynamic(x9/2).
:-dynamic(x11/2).
:-dynamic(x13/2).
:-dynamic(x15/2).
:-dynamic(x17/2).
:-dynamic(x19/2).


tembok(21,X):- X>=0, X =<11.
tembok(Y,11):- Y>=0, Y =<21.
tembok(0,X):- X>=0, X =<11.
tembok(Y,0):- Y>=0, Y =<21.

/*set X and -*/
initMap:-
    random(1,11,Y1),asserta(x1(1,Y1)),
    random(1,11,Y3),asserta(x3(3,Y3)),
    random(1,11,Y5),asserta(x5(5,Y5)),
    random(1,11,Y7),asserta(x7(7,Y7)),
    random(1,11,Y9),asserta(x9(9,Y9)),
    random(1,11,Y11),asserta(x11(11,Y11)),
    random(1,11,Y13),asserta(x13(13,Y13)),
    random(1,11,Y15),asserta(x15(15,Y15)),
    random(1,11,Y17),asserta(x17(17,Y17)),
    random(1,11,Y19),asserta(x19(19,Y19)).



writeRow(12,J):-!.
writeRow(I,J):-writeCol(I,0).

writeCol(I,22):-I1 is I+1,write('\n'),writeRow(I1,0).
writeCol(I,J):-elmt(J,I),J1 is J+1,writeCol(I,J1).

elmt(I,J):-tembok(I,J),write('#').
elmt(I,J):-e1(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e2(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e3(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e4(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e5(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e6(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e7(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e8(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e9(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e10(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-player(I,J,'alive',_,_,_,_,_),write('P'),!.
elmt(I,J):-write(' ').
