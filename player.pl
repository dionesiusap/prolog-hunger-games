/* baca file eksternal */


:- dynamic(locP/2).
locP(0,0).

n:-locP(X,Y),Y1 is Y +1,retract(locP(X,Y)),asserta(locP(X,Y1)).
e:-locP(X,Y),X1 is X +1,retract(locP(X,Y)),asserta(locP(X1,Y)).
s:-locP(X,Y),Y1 is Y -1,retract(locP(X,Y)),asserta(locP(X,Y1)).
w:-locP(X,Y),X1 is X -1,retract(locP(X,Y)),asserta(locP(X1,Y)).

		
