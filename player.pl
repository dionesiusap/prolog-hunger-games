/* baca file eksternal */
/*(X,Y,status,Health,Hungry,Thirst,Weapon,ItemList)*/


:-dynamic(player/8).

initPlayer:-random(1,21,X),random(1,11,Y),look_pos(X,Y),!,initPlayer.
initPlayer:-random(1,21,X),random(1,11,Y),asserta(player(X,Y,'alive',100,100,100,0,[])).

n:-player(X,Y,S,Lp,H,T,W,L),Y\==1,Y1 is Y - 1,look_pos(X,Y1),!,write('cant move there\n'),moveenemy.
n:-player(X,Y,S,Lp,H,T,W,L),Y\==1,Y1 is Y - 1,retract(player(X,Y,S,Lp,H,T,W,L)),asserta(player(X,Y1,S,Lp,H,T,W,L)),lookTerrain(X,Y1),moveenemy,!.
e:-player(X,Y,S,Lp,H,T,W,L),X\==20,X1 is X + 1,look_pos(X1,Y),!,write('cant move there\n'),moveenemy.
e:-player(X,Y,S,Lp,H,T,W,L),X\==20,X1 is X + 1,retract(player(X,Y,S,Lp,H,T,W,L)),asserta(player(X1,Y,S,Lp,H,T,W,L)),lookTerrain(X1,Y),moveenemy,!.
s:-player(X,Y,S,Lp,H,T,W,L),Y\==10,Y1 is Y + 1,look_pos(X,Y1),!,write('cant move there\n'),moveenemy.
s:-player(X,Y,S,Lp,H,T,W,L),Y\==10,Y1 is Y + 1,retract(player(X,Y,S,Lp,H,T,W,L)),asserta(player(X,Y1,S,Lp,H,T,W,L)),lookTerrain(X,Y1),moveenemy,!.
w:-player(X,Y,S,Lp,H,T,W,L),X\==1,X1 is X - 1,look_pos(X1,Y),!,write('cant move there\n'),moveenemy.
w:-player(X,Y,S,Lp,H,T,W,L),X\==1,X1 is X - 1,retract(player(X,Y,S,Lp,H,T,W,L)),asserta(player(X1,Y,S,Lp,H,T,W,L)),lookTerrain(X1,Y),moveenemy,!.

look:-player(X,Y,S,Lp,H,T,W,L),writeItem(X,Y).

writeItem(X,Y):-X1 is X-1,Y1 is Y-1,X2 is X+1,Y2 is Y+1,
    look_elmt(X1,Y1),
    look_elmt(X,Y1),
    look_elmt(X2,Y1),write('\n'),
    look_elmt(X1,Y),
    look_elmt(X,Y),
    look_elmt(X2,Y),write('\n'),
    look_elmt(X1,Y2),
    look_elmt(X,Y2),
    look_elmt(X2,Y2),write('\n').


look_elmt(I,J):-tembok(I,J),write('#').
look_elmt(I,J):-x1(I,J),write('X'),!.
look_elmt(I,J):-x3(I,J),write('X'),!.
look_elmt(I,J):-x5(I,J),write('X'),!.
look_elmt(I,J):-x7(I,J),write('X'),!.
look_elmt(I,J):-x9(I,J),write('X'),!.
look_elmt(I,J):-x11(I,J),write('X'),!.
look_elmt(I,J):-x13(I,J),write('X'),!.
look_elmt(I,J):-x15(I,J),write('X'),!.
look_elmt(I,J):-x17(I,J),write('X'),!.
look_elmt(I,J):-x19(I,J),write('X'),!.
look_elmt(I,J):-e1(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e2(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e3(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e4(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e5(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e6(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e7(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e8(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e9(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e10(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-item1(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-item2(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-item3(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-item4(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-item5(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-item6(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-item7(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-item8(I,J,'available','medecine'),write('M'),!.
look_elmt(I,J):-item9(I,J,'available','medecine'),write('M'),!.
look_elmt(I,J):-item10(I,J,'available','radar'),write('R'),!.
look_elmt(I,J):-player(I,J,'alive',_,_,_,_,_),write('P'),!.
look_elmt(I,J):-write('-').

look_pos(I,J):-x1(I,J),!.
look_pos(I,J):-x3(I,J),!.
look_pos(I,J):-x5(I,J),!.
look_pos(I,J):-x7(I,J),!.
look_pos(I,J):-x9(I,J),!.
look_pos(I,J):-x11(I,J),!.
look_pos(I,J):-x13(I,J),!.
look_pos(I,J):-x15(I,J),!.
look_pos(I,J):-x17(I,J),!.
look_pos(I,J):-x19(I,J),!.


/********** TAKE, USE, AND DROP COMMANDS **********/
/*
del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]):- del(X,Tail,Tail1).

take(I) :- player(X,Y,S,Lp,H,T,W,L), length(L,5), !, write('Your inventory is full.').
take(I) :- player(X,Y,S,Lp,H,T,W,L), \+(length(L,5)), append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n').

use(I) :- player(X,Y,S,Lp,H,T,W,L), \+(member(I,L)),!,write('You don\'t have '),write(I),write(' to use.\n').
use(food) :- player(X,Y,S,Lp,H,T,W,L), member(food,L), Lp=<85, Lp1 is Lp + 15, del(food,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),!,write('You successfully increased your energy by 15 points.\n').
use(drink) :- player(X,Y,S,Lp,H,T,W,L), member(drink,L), T=<85, T1 is T + 15, del(drink,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T1,W,L1)),!,write('You successfully increased your hydration by 15 points.\n').
use(medicine) :- player(X,Y,S,Lp,H,T,W,L), member(medicine,L), H=<85, H1 is H + 15, del(medicine,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H1,T,W,L1)),!,write('You successfully increased your health point by 15 points.\n').
use(bazooka) :- player(X,Y,S,Lp,H,T,W,L), member(bazooka,L),!,write('You now have a bazooka on your hand.\n').

drop(I) :- player(X,Y,S,Lp,H,T,W,L), \+(member(I,L)),!,write('You don\'t have '),write(I),write(' anyway. What do you want to drop?\n').
drop(I) :- player(X,Y,S,Lp,H,T,W,L), member(I,L), del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),!,write('You just dropped a(n) '),write(I),write('.\n').*/