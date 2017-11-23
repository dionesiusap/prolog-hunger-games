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

initItemDrop :-
		asserta(itemE1(-1,-1,'taken',0)),
		asserta(itemE2(-1,-1,'taken',0)),
		asserta(itemE3(-1,-1,'taken',0)),
		asserta(itemE4(-1,-1,'taken',0)),
		asserta(itemE5(-1,-1,'taken',0)),
		asserta(itemE6(-1,-1,'taken',0)),
		asserta(itemE7(-1,-1,'taken',0)),
		asserta(itemE8(-1,-1,'taken',0)),
		asserta(itemE9(-1,-1,'taken',0)),
		asserta(itemE10(-1,-1,'taken',0)).

/*command untuk attack, hanya bisa menyerang musuh yang ada di petak yang sama) */
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e1(X,Y,'alive',Atk1,O), retract(e1(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\nk.'), retract(itemE1(-1,-1,'taken',0)),asserta(itemE1(X,Y,'available',O)),write('Your enemy dropped '),write(O),write('\n'),moveenemy,write('\n'), isWin.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e2(X,Y,'alive',Atk1,O), retract(e2(X,Y,'alive',Atk1,O)), 
		asserta(e2(X,Y,'dead',Atk1,O)),write('an enemy killed\n'),  retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), retract(itemE2(-1,-1,'taken',0)),asserta(itemE2(X,Y,'available',O)),write('Your enemy dropped '),write(O),write('\n'),moveenemy, write('\n'), isWin.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e3(X,Y,'alive',Atk1,O), retract(e3(X,Y,'alive',Atk1,O)), 
		asserta(e3(X,Y,'dead',Atk1,O)),write('an enemy killed\n'),  retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), retract(itemE3(-1,-1,'taken',0)),asserta(itemE3(X,Y,'available',O)),write('Your enemy dropped '),write(O),write('\n'),moveenemy, write('\n'), isWin.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e4(X,Y,'alive',Atk1,O), retract(e4(X,Y,'alive',Atk1,O)), 
		asserta(e4(X,Y,'dead',Atk1,O)),write('an enemy killed\n'),  retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), retract(itemE4(-1,-1,'taken',0)),asserta(itemE4(X,Y,'available',O)),write('Your enemy dropped '),write(O),write('\n'),moveenemy, write('\n'), isWin.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e5(X,Y,'alive',Atk1,O), retract(e5(X,Y,'alive',Atk1,O)), 
		asserta(e5(X,Y,'dead',Atk1,O)),write('an enemy killed\n'),  retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), retract(itemE5(-1,-1,'taken',0)),asserta(itemE5(X,Y,'available',O)),write('Your enemy dropped '),write(O),write('\n'),moveenemy, write('\n'), isWin.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e6(X,Y,'alive',Atk1,O), retract(e6(X,Y,'alive',Atk1,O)), 
		asserta(e6(X,Y,'dead',Atk1,O)),write('an enemy killed\n'),  retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), retract(itemE6(-1,-1,'taken',0)),asserta(itemE6(X,Y,'available',O)),write('Your enemy dropped '),write(O),write('\n'),moveenemy, write('\n'), isWin.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e7(X,Y,'alive',Atk1,O), retract(e7(X,Y,'alive',Atk1,O)), 
		asserta(e7(X,Y,'dead',Atk1,O)),write('an enemy killed\n'),  retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), retract(itemE7(-1,-1,'taken',0)),asserta(itemE7(X,Y,'available',O)),write('Your enemy dropped '),write(O),write('\n'),moveenemy, write('\n'), isWin.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e8(X,Y,'alive',Atk1,O), retract(e8(X,Y,'alive',Atk1,O)), 
		asserta(e8(X,Y,'dead',Atk1,O)),write('an enemy killed\n'),  retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), retract(itemE8(-1,-1,'taken',0)),asserta(itemE8(X,Y,'available',O)),write('Your enemy dropped '),write(O),write('\n'),moveenemy, write('\n'), isWin.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e9(X,Y,'alive',Atk1,O), retract(e9(X,Y,'alive',Atk1,O)), 
		asserta(e9(X,Y,'dead',Atk1,O)),write('an enemy killed\n'),  retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), retract(itemE9(-1,-1,'taken',0)),asserta(itemE9(X,Y,'available',O)),write('Your enemy dropped '),write(O),write('\n'),moveenemy, write('\n'), isWin.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e10(X,Y,'alive',Atk1,O), retract(e10(X,Y,'alive',Atk1,O)), 
		asserta(e10(X,Y,'dead',Atk1,O)),write('an enemy killed\n'),  retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), retract(itemE10(-1,-1,'taken',0)),asserta(itemE10(X,Y,'available',O)),write('Your enemy dropped '),write(O),write('\n'),moveenemy, write('\n'), isWin.
attack :- player(_,_,_,_,_,_,W,_), W =:= 1, write('No more enemy to attack in this place').
attack :- write('you\'re not using any weapon').

isAttacked :- player(X,Y,S,Lp,H,T,W,L), e1(X,Y,'alive',Atk1,O), getattacked(Atk1).
isAttacked :- player(X,Y,S,Lp,H,T,W,L), e2(X,Y,'alive',Atk1,O), getattacked(Atk1).
isAttacked :- player(X,Y,S,Lp,H,T,W,L), e3(X,Y,'alive',Atk1,O), getattacked(Atk1).
isAttacked :- player(X,Y,S,Lp,H,T,W,L), e4(X,Y,'alive',Atk1,O), getattacked(Atk1).
isAttacked :- player(X,Y,S,Lp,H,T,W,L), e5(X,Y,'alive',Atk1,O), getattacked(Atk1).
isAttacked :- player(X,Y,S,Lp,H,T,W,L), e6(X,Y,'alive',Atk1,O), getattacked(Atk1).
isAttacked :- player(X,Y,S,Lp,H,T,W,L), e7(X,Y,'alive',Atk1,O), getattacked(Atk1).
isAttacked :- player(X,Y,S,Lp,H,T,W,L), e8(X,Y,'alive',Atk1,O), getattacked(Atk1).
isAttacked :- player(X,Y,S,Lp,H,T,W,L), e9(X,Y,'alive',Atk1,O), getattacked(Atk1).
isAttacked :- player(X,Y,S,Lp,H,T,W,L), e10(X,Y,'alive',Atk1,O), getattacked(Atk1).


getattacked(Atk1) :- retract(player(X,Y,S,Lp,H,T,W,L)), F is Lp-Atk1, \+ isDead(F), asserta(player(X,Y,S,F,H,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP').

isDead(F) :- F =< 0, write('you\'re dead'), halt.

isWin:-
	e1(_,_,'dead',_,_),
	e2(_,_,'dead',_,_),
	e3(_,_,'dead',_,_),
	e4(_,_,'dead',_,_),
	e5(_,_,'dead',_,_),
	e6(_,_,'dead',_,_),
	e7(_,_,'dead',_,_),
	e8(_,_,'dead',_,_),
	e9(_,_,'dead',_,_),
	e10(_,_,'dead',_,_),
	write('All enemies are dead. Congratulations, you win!').