:-dynamic(itemE1/4).
:-dynamic(itemE2/4).
:-dynamic(itemE3/4).
:-dynamic(itemE4/4).
:-dynamic(itemE5/4).
:-dynamic(itemE6/4).
:-dynamic(itemE7/4).
:-dynamic(itemE8/4).
:-dynamic(itemE9/4).
:-dynamic(itemE10/4).
/*command untuk attack, hanya bisa menyerang musuh yang ada di petak yang sama) */
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e1(X,Y,'alive',Atk1,O), retract(e1(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\nk.'), asserta(itemE1(X,Y,'available',O)),write('Your enemy drop '),write(O),moveenemy,write('\n').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e2(X,Y,'alive',Atk1,O), retract(e2(X,Y,'alive',Atk1,O)), 
		asserta(e2(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), asserta(itemE2(X,Y,'available',O)),write('Your enemy drop '),write(O),moveenemy,write('\n').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e3(X,Y,'alive',Atk1,O), retract(e3(X,Y,'alive',Atk1,O)), 
		asserta(e3(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), asserta(itemE3(X,Y,'available',O)),write('Your enemy drop '),write(O),moveenemy,write('\n').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e4(X,Y,'alive',Atk1,O), retract(e4(X,Y,'alive',Atk1,O)), 
		asserta(e4(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), asserta(itemE4(X,Y,'available',O)),write('Your enemy drop '),write(O),moveenemy,write('\n').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e5(X,Y,'alive',Atk1,O), retract(e5(X,Y,'alive',Atk1,O)), 
		asserta(e5(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), asserta(itemE5(X,Y,'available',O)),write('Your enemy drop '),write(O),moveenemy,write('\n').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e6(X,Y,'alive',Atk1,O), retract(e6(X,Y,'alive',Atk1,O)), 
		asserta(e6(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), asserta(itemE6(X,Y,'available',O)),write('Your enemy drop '),write(O),moveenemy,write('\n').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e7(X,Y,'alive',Atk1,O), retract(e7(X,Y,'alive',Atk1,O)), 
		asserta(e7(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), asserta(itemE7(X,Y,'available',O)),write('Your enemy drop '),write(O),moveenemy,write('\n').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e8(X,Y,'alive',Atk1,O), retract(e8(X,Y,'alive',Atk1,O)), 
		asserta(e8(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), asserta(itemE8(X,Y,'available',O)),write('Your enemy drop '),write(O),moveenemy,write('\n').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e9(X,Y,'alive',Atk1,O), retract(e9(X,Y,'alive',Atk1,O)), 
		asserta(e9(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), asserta(itemE9(X,Y,'available',O)),write('Your enemy drop '),write(O),moveenemy,write('\n').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e10(X,Y,'alive',Atk1,O), retract(e10(X,Y,'alive',Atk1,O)), 
		asserta(e10(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), asserta(itemE10(X,Y,'available',O)),write('Your enemy drop '),write(O),moveenemy,write('\n').
attack :- player(_,_,_,_,_,_,W,_), W =:= 1, write('No more enemy to attack in this place').
attack :- write('you\'re not using any weapon').

isAttacked :- player(X,Y,S,Lp,H,T,W,L), e1(X,Y,'alive',Atk1,O), getattacked.

getattacked :- retract(player(X,Y,S,Lp,H,T,W,L)), F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP').

isDead(F) :- F =< 0, write('you\'re dead'), halt.
isWin:-
	e1(_,_,'Dead',_,_),
	e2(_,_,'Dead',_,_),
	e3(_,_,'Dead',_,_),
	e4(_,_,'Dead',_,_),
	e5(_,_,'Dead',_,_),
	e6(_,_,'Dead',_,_),
	e7(_,_,'Dead',_,_),
	e8(_,_,'Dead',_,_),
	e9(_,_,'Dead',_,_),
	e10(_,_,'Dead',_,_),
	e1(_,_,'Dead',_,_),
	write('All enemy die you win').