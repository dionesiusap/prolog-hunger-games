/********** COMMAND UNTUK TAKE, USE, DAN DROP **********/

del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]):- del(X,Tail,Tail1).

/* TAKE */
take(I) :- player(X,Y,S,Lp,H,T,W,L), length(L,5), !, write('Your inventory is full.'),isAttacked.
take(I) :- I==water, player(X,Y,S,Lp,H,T,W,L), item1(XI,YI,'available','water'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item1(XI,YI,'available','water')),asserta(item1(XI,YI,'taken','water')),\+ isAttacked, moveenemy.
take(I) :- I==water, player(X,Y,S,Lp,H,T,W,L), item2(XI,YI,'available','water'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item2(XI,YI,'available','water')),asserta(item2(XI,YI,'taken','water')),\+ isAttacked, moveenemy.
take(I) :- I==water, player(X,Y,S,Lp,H,T,W,L), item3(XI,YI,'available','water'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item3(XI,YI,'available','water')),asserta(item3(XI,YI,'taken','water')),\+ isAttacked, moveenemy.
take(I) :- I==food, player(X,Y,S,Lp,H,T,W,L), item4(XI,YI,'available','food'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item4(XI,YI,'available','food')),asserta(item4(XI,YI,'taken','food')),\+ isAttacked, moveenemy.
take(I) :- I==food, player(X,Y,S,Lp,H,T,W,L), item5(XI,YI,'available','food'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item5(XI,YI,'available','food')),asserta(item5(XI,YI,'taken','food')),\+ isAttacked, moveenemy.
take(I) :- I==food, player(X,Y,S,Lp,H,T,W,L), item6(XI,YI,'available','food'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item6(XI,YI,'available','food')),asserta(item6(XI,YI,'taken','food')),\+ isAttacked, moveenemy.
take(I) :- I==food, player(X,Y,S,Lp,H,T,W,L), item7(XI,YI,'available','food'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item7(XI,YI,'available','food')),asserta(item7(XI,YI,'taken','food')),\+ isAttacked, moveenemy.
take(I) :- I==medicine, player(X,Y,S,Lp,H,T,W,L), item8(XI,YI,'available','medicine'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item9(XI,YI,'available','medicine')),asserta(item8(XI,YI,'taken','medicine')),\+ isAttacked, moveenemy.
take(I) :- I==medicine, player(X,Y,S,Lp,H,T,W,L), item9(XI,YI,'available','medicine'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item9(XI,YI,'available','medicine')),asserta(item9(XI,YI,'taken','medicine')),\+ isAttacked, moveenemy.
take(I) :- I==radar, player(X,Y,S,Lp,H,T,W,L), item10(XI,YI,'available','radar'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item10(XI,YI,'available','radar')),asserta(item10(XI,YI,'taken','radar')),\+ isAttacked, moveenemy.
take(I) :- I==bazooka, player(X,Y,S,Lp,H,T,W,L), item11(XI,YI,'available','bazooka'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item11(XI,YI,'available','bazooka')),asserta(item11(XI,YI,'taken','bazooka')),\+ isAttacked, moveenemy.
take(I) :- I==bazooka, player(X,Y,S,Lp,H,T,W,L), item12(XI,YI,'available','bazooka'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item12(XI,YI,'available','bazooka')),asserta(item12(XI,YI,'taken','bazooka')),\+ isAttacked, moveenemy.
take(I) :- I==bazooka, player(X,Y,S,Lp,H,T,W,L), item13(XI,YI,'available','bazooka'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item13(XI,YI,'available','bazooka')),asserta(item13(XI,YI,'taken','bazooka')),\+ isAttacked, moveenemy.
take(I) :- I==bazooka, player(X,Y,S,Lp,H,T,W,L), item14(XI,YI,'available','bazooka'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item14(XI,YI,'available','bazooka')),asserta(item14(XI,YI,'taken','bazooka')),\+ isAttacked, moveenemy.
take(I) :- I==bazooka, player(X,Y,S,Lp,H,T,W,L), item15(XI,YI,'available','bazooka'), \+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(item15(XI,YI,'available','bazooka')),asserta(item15(XI,YI,'taken','bazooka')),\+ isAttacked, moveenemy.
take(I) :-player(X,Y,S,Lp,H,T,W,L), itemE1(XI,YI,'available',O), I==O,\+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(itemE1(XI,YI,'available',O)),asserta(itemE1(XI,YI,'taken',O)),\+ isAttacked, moveenemy.
take(I) :-player(X,Y,S,Lp,H,T,W,L), itemE2(XI,YI,'available',O), I==O,\+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(itemE2(XI,YI,'available',O)),asserta(itemE2(XI,YI,'taken',O)),\+ isAttacked, moveenemy.
take(I) :-player(X,Y,S,Lp,H,T,W,L), itemE3(XI,YI,'available',O), I==O,\+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(itemE3(XI,YI,'available',O)),asserta(itemE3(XI,YI,'taken',O)),\+ isAttacked, moveenemy.
take(I) :-player(X,Y,S,Lp,H,T,W,L), itemE4(XI,YI,'available',O), I==O,\+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(itemE4(XI,YI,'available',O)),asserta(itemE4(XI,YI,'taken',O)),\+ isAttacked, moveenemy.
take(I) :-player(X,Y,S,Lp,H,T,W,L), itemE5(XI,YI,'available',O), I==O,\+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(itemE5(XI,YI,'available',O)),asserta(itemE5(XI,YI,'taken',O)),\+ isAttacked, moveenemy.
take(I) :-player(X,Y,S,Lp,H,T,W,L), itemE6(XI,YI,'available',O), I==O,\+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(itemE6(XI,YI,'available',O)),asserta(itemE6(XI,YI,'taken',O)),\+ isAttacked, moveenemy.
take(I) :-player(X,Y,S,Lp,H,T,W,L), itemE7(XI,YI,'available',O), I==O,\+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(itemE7(XI,YI,'available',O)),asserta(itemE7(XI,YI,'taken',O)),\+ isAttacked, moveenemy.
take(I) :-player(X,Y,S,Lp,H,T,W,L), itemE8(XI,YI,'available',O), I==O,\+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(itemE9(XI,YI,'available',O)),asserta(itemE8(XI,YI,'taken',O)),\+ isAttacked, moveenemy.
take(I) :-player(X,Y,S,Lp,H,T,W,L), itemE9(XI,YI,'available',O), I==O,\+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(itemE9(XI,YI,'available',O)),asserta(itemE9(XI,YI,'taken',O)),\+ isAttacked, moveenemy.
take(I) :-player(X,Y,S,Lp,H,T,W,L), itemE10(XI,YI,'available',O), I==O,\+(length(L,5)), X==XI, Y==YI, append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n'),retract(itemE10(XI,YI,'available',O)),asserta(itemE10(XI,YI,'taken',O)),\+ isAttacked, moveenemy.
take(_) :- player(_,_,S,Lp,H,T,W,L),!, write('You haven\'t got any item in your proximity to take.\n'),isAttacked.

/* USE */
use(I) :- player(X,Y,S,Lp,H,T,W,L), \+(member(I,L)),!,write('You don\'t have '),write(I),write(' to use.\n'),isAttacked.
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, member(I,L), H<75, H1 is H + 25, del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H1,T,W,L1)),!,write('You successfully increased your energy by 25 points.\n'),\+ isAttacked, moveenemy.
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, member(I,L), H>=75, !, write('Your hunger is not low enough to eat some food.').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, member(I,L), T<75, T1 is T + 25, del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T1,W,L1)),!,write('You successfully increased your hydration by 25 points.\n'),\+ isAttacked, moveenemy.
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, member(I,L), T>=75, !, write('Your thirst is not low enough to drink some more water.').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==medicine, member(I,L), Lp<75, Lp1 is Lp + 25, del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),!,write('You successfully increased your health point by 25 points.\n'),\+ isAttacked, moveenemy.
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, member(I,L), Lp>=75, !, write('Your health is not low enough to use some medicine.').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==bazooka, member(I,L),!, retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,1,L)), write('You now have a bazooka on your hand.\n'),\+ isAttacked, moveenemy,isAttacked.

/* DROP */
drop(I) :- player(X,Y,S,Lp,H,T,W,L), \+(member(I,L)),!,write('You don\'t have '),write(I),write(' anyway. What do you want to drop?\n'),isAttacked.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, item(XI,YI,'taken','water'), member(I,L),!, del(I,L,L1), retract(item(XI,YI,'taken','water')), asserta(item(X,Y,'available','water')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, item2(XI,YI,'taken','water'), member(I,L),!, del(I,L,L1), retract(item2(XI,YI,'taken','water')), asserta(item2(X,Y,'available','water')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, item3(XI,YI,'taken','water'), member(I,L),!, del(I,L,L1), retract(item3(XI,YI,'taken','water')), asserta(item3(X,Y,'available','water')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, item4(XI,YI,'taken','food'), member(I,L),!, del(I,L,L1), retract(item4(XI,YI,'taken','food')), asserta(item4(X,Y,'available','food')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, item5(XI,YI,'taken','food'), member(I,L),!, del(I,L,L1), retract(item5(XI,YI,'taken','food')), asserta(item5(X,Y,'available','food')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, item6(XI,YI,'taken','food'), member(I,L),!, del(I,L,L1), retract(item6(XI,YI,'taken','food')), asserta(item6(X,Y,'available','food')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, item7(XI,YI,'taken','food'), member(I,L),!, del(I,L,L1), retract(item7(XI,YI,'taken','food')), asserta(item7(X,Y,'available','food')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==medicine, item8(XI,YI,'taken','medicine'), member(I,L),!, del(I,L,L1), retract(item8(XI,YI,'taken','medicine')), asserta(item8(X,Y,'available','medicine')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==medicine, item9(XI,YI,'taken','medicine'), member(I,L),!, del(I,L,L1), retract(item9(XI,YI,'taken','medicine')), asserta(item9(X,Y,'available','medicine')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==radar, item10(XI,YI,'taken','radar'), member(I,L),!, del(I,L,L1), retract(item10(XI,YI,'taken','radar')), asserta(item10(X,Y,'available','radar')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, itemE(XI,YI,'taken','water'), member(I,L),!, del(I,L,L1), retract(itemE(XI,YI,'taken','water')), asserta(itemE(X,Y,'available','water')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, itemE2(XI,YI,'taken','water'), member(I,L),!, del(I,L,L1), retract(itemE2(XI,YI,'taken','water')), asserta(itemE2(X,Y,'available','water')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, itemE3(XI,YI,'taken','water'), member(I,L),!, del(I,L,L1), retract(itemE3(XI,YI,'taken','water')), asserta(itemE3(X,Y,'available','water')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, itemE4(XI,YI,'taken','food'), member(I,L),!, del(I,L,L1), retract(itemE4(XI,YI,'taken','food')), asserta(itemE4(X,Y,'available','food')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, itemE5(XI,YI,'taken','food'), member(I,L),!, del(I,L,L1), retract(itemE5(XI,YI,'taken','food')), asserta(itemE5(X,Y,'available','food')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, itemE6(XI,YI,'taken','food'), member(I,L),!, del(I,L,L1), retract(itemE6(XI,YI,'taken','food')), asserta(itemE6(X,Y,'available','food')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, itemE7(XI,YI,'taken','food'), member(I,L),!, del(I,L,L1), retract(itemE7(XI,YI,'taken','food')), asserta(itemE7(X,Y,'available','food')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==medicine, itemE8(XI,YI,'taken','medicine'), member(I,L),!, del(I,L,L1), retract(itemE8(XI,YI,'taken','medicine')), asserta(itemE8(X,Y,'available','medicine')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==medicine, itemE9(XI,YI,'taken','medicine'), member(I,L),!, del(I,L,L1), retract(itemE9(XI,YI,'taken','medicine')), asserta(itemE9(X,Y,'available','medicine')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.
drop(I) :- player(X,Y,S,Lp,H,T,W,L), I==radar, itemE10(XI,YI,'taken','radar'), member(I,L),!, del(I,L,L1), retract(itemE10(XI,YI,'taken','radar')), asserta(itemE10(X,Y,'available','radar')), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),write('You just dropped a(n) '),write(I),write('.\n'),!,\+ isAttacked, moveenemy.

