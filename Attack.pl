/*command untuk attack, hanya bisa menyerang musuh yang ada di petak yang sama) */
attack :- player(X,Y,S,Lp,H,T,W,I1,I2),e1(X,Y,'alive',Atk1,O), asserta(e1(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,I1,I2),e2(X,Y,'alive',Atk1,O), asserta(e2(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,I1,I2),e3(X,Y,'alive',Atk1,O), asserta(e3(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,I1,I2),e4(X,Y,'alive',Atk1,O), asserta(e4(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,I1,I2),e5(X,Y,'alive',Atk1,O), asserta(e5(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,I1,I2),e6(X,Y,'alive',Atk1,O), asserta(e6(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,I1,I2),e7(X,Y,'alive',Atk1,O), asserta(e7(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,I1,I2),e8(X,Y,'alive',Atk1,O), asserta(e8(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,I1,I2),e9(X,Y,'alive',Atk1,O), asserta(e9(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- player(X,Y,S,Lp,H,T,W,I1,I2),e10(X,Y,'alive',Atk1,O), asserta(e10(X,Y,'Dead',Atk1,O)),write('an enemy killed').
attack :- write('No enemy to attack').