/*command untuk attack, hanya bisa menyerang musuh yang ada di petak yang sama) */
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e1(X,Y,'alive',Atk1,O), retract(e1(X,Y,'alive',Atk1,O)), asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e2(X,Y,'alive',Atk1,O), retract(e2(X,Y,'alive',Atk1,O)), asserta(e2(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e3(X,Y,'alive',Atk1,O), retract(e3(X,Y,'alive',Atk1,O)), asserta(e3(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e4(X,Y,'alive',Atk1,O), retract(e4(X,Y,'alive',Atk1,O)), asserta(e4(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e5(X,Y,'alive',Atk1,O), retract(e5(X,Y,'alive',Atk1,O)), asserta(e5(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e6(X,Y,'alive',Atk1,O), retract(e6(X,Y,'alive',Atk1,O)), asserta(e6(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e7(X,Y,'alive',Atk1,O), retract(e7(X,Y,'alive',Atk1,O)), asserta(e7(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e8(X,Y,'alive',Atk1,O), retract(e8(X,Y,'alive',Atk1,O)), asserta(e8(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e9(X,Y,'alive',Atk1,O), retract(e9(X,Y,'alive',Atk1,O)), asserta(e9(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, e10(X,Y,'alive',Atk1,O),retract(e10(X,Y,'alive',Atk1,O)),asserta(e10(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,L), W =:= 1, write('No enemy to attack').
attack :- write('you\'re not using any weapon').