/* Command untuk take, use, dan drop */

del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]):- del(X,Tail,Tail1).

take(I) :- player(X,Y,S,Lp,H,T,W,L), length(L,5), !, write('Your inventory is full.').
take(I) :- player(X,Y,S,Lp,H,T,W,L), \+(length(L,5)), append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n').

use(I) :- player(X,Y,S,Lp,H,T,W,L), \+(member(I,L)),!,write('You don\'t have '),write(I),write(' to use.\n').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==food, member(I,L), Lp<85, Lp1 is Lp + 15, del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),!,write('You successfully increased your energy by 15 points.\n').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==water, member(I,L), T<85, T1 is T + 15, del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T1,W,L1)),!,write('You successfully increased your hydration by 15 points.\n').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==medicine, member(I,L), H<85, H1 is H + 15, del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H1,T,W,L1)),!,write('You successfully increased your health point by 15 points.\n').
use(I) :- player(X,Y,S,Lp,H,T,W,L), I==bazooka, member(I,L),!,write('You now have a bazooka on your hand.\n').

drop(I) :- player(X,Y,S,Lp,H,T,W,L), \+(member(I,L)),!,write('You don\'t have '),write(I),write(' anyway. What do you want to drop?\n').
drop(I) :- player(X,Y,S,Lp,H,T,W,L), member(I,L), del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),!,write('You just dropped a(n) '),write(I),write('.\n').