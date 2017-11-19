/* Command untuk take, use, dan drop */

del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]):- del(X,Tail,Tail1).

take(I) :- player(X,Y,S,Lp,H,T,W,L), length(L,5), !, write('Your inventory is full.').
take(I) :- I==water, player(X,Y,S,Lp,H,T,W,L), item1(XI,YI,'available','water'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item1(XI,YI,'available','water')),asserta(item1(XI,YI,'taken','water')).
take(I) :- I==water, player(X,Y,S,Lp,H,T,W,L), item2(XI,YI,'available','water'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item2(XI,YI,'available','water')),asserta(item2(XI,YI,'taken','water')).
take(I) :- I==water, player(X,Y,S,Lp,H,T,W,L), item3(XI,YI,'available','water'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item3(XI,YI,'available','water')),asserta(item3(XI,YI,'taken','water')).
take(I) :- I==food, player(X,Y,S,Lp,H,T,W,L), item4(XI,YI,'available','food'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item4(XI,YI,'available','food')),asserta(item4(XI,YI,'taken','food')).
take(I) :- I==food, player(X,Y,S,Lp,H,T,W,L), item5(XI,YI,'available','food'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item5(XI,YI,'available','food')),asserta(item5(XI,YI,'taken','food')).
take(I) :- I==food, player(X,Y,S,Lp,H,T,W,L), item6(XI,YI,'available','food'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item6(XI,YI,'available','food')),asserta(item6(XI,YI,'taken','food')).
take(I) :- I==food, player(X,Y,S,Lp,H,T,W,L), item7(XI,YI,'available','food'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item7(XI,YI,'available','food')),asserta(item7(XI,YI,'taken','food')).
take(I) :- I==medicine, player(X,Y,S,Lp,H,T,W,L), item8(XI,YI,'available','medicine'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item9(XI,YI,'available','medicine')),asserta(item8(XI,YI,'taken','medicine')).
take(I) :- I==medicine, player(X,Y,S,Lp,H,T,W,L), item9(XI,YI,'available','medicine'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item9(XI,YI,'available','medicine')),asserta(item9(XI,YI,'taken','medicine')).
take(I) :- I==radar, player(X,Y,S,Lp,H,T,W,L), item10(XI,YI,'available','radar'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item10(XI,YI,'available','radar')),asserta(item10(XI,YI,'taken','radar')).
take(_) :- player(_,_,S,Lp,H,T,W,L),!, write('You haven\'t got any item in your proximity to take.\n').


use(I) :- player(X,Y,S,Lp,H,T,W,L), \+(member(I,L)),!,write('You don\'t have '),write(I),write(' to use.\n').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, member(I,L), H<85, H1 is H + 15, del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H1,T,W,L1)),!,write('You successfully increased your energy by 15 points.\n').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, member(I,L), T<85, T1 is T + 15, del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T1,W,L1)),!,write('You successfully increased your hydration by 15 points.\n').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==medicine, member(I,L), H<85, Lp1 is Lp + 15, del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),!,write('You successfully increased your health point by 15 points.\n').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==bazooka, member(I,L),!, retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,1,L)), write('You now have a bazooka on your hand.\n').

drop(I) :- player(X,Y,S,Lp,H,T,W,L), \+(member(I,L)),!,write('You don\'t have '),write(I),write(' anyway. What do you want to drop?\n').
drop(I) :- player(X,Y,S,Lp,H,T,W,L), member(I,L), del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),!,write('You just dropped a(n) '),write(I),write('.\n').