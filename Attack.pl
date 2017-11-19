/*command untuk attack, hanya bisa menyerang musuh yang ada di petak yang sama) */
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e1(X,Y,'alive',Atk1,O), retract(e1(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\nk.'), moveenemy.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e2(X,Y,'alive',Atk1,O), retract(e2(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), moveenemy.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e3(X,Y,'alive',Atk1,O), retract(e3(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), moveenemy.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e4(X,Y,'alive',Atk1,O), retract(e4(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), moveenemy.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e5(X,Y,'alive',Atk1,O), retract(e5(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), moveenemy.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e6(X,Y,'alive',Atk1,O), retract(e6(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), moveenemy.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e7(X,Y,'alive',Atk1,O), retract(e7(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), moveenemy.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e8(X,Y,'alive',Atk1,O), retract(e8(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), moveenemy.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e9(X,Y,'alive',Atk1,O), retract(e9(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), moveenemy.
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e10(X,Y,'alive',Atk1,O), retract(e10(X,Y,'alive',Atk1,O)), 
		asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed\n'), retract(player(X,Y,S,Lp,H,T,W,L)), 
		F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP\n'), moveenemy.
attack :- player(_,_,_,_,_,_,W,_), W =:= 1, write('No more enemy to attack in this place').
attack :- write('you\'re not using any weapon').

isAttacked :- player(X,Y,S,Lp,H,T,W,L), e1(X,Y,'alive',Atk1,O), getattacked.

getattacked :- retract(player(X,Y,S,Lp,H,T,W,L)), F is H-Atk1, \+ isDead(F), asserta(player(X,Y,S,Lp,F,T,W,L)), write('you\'ve been wounded -'),write(Atk1), write(' HP').

isDead(F) :- F =< 0, write('you\'re dead'), halt.