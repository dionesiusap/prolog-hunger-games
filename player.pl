/* baca file eksternal */
/*(X,Y,status,Health,Hungry,Thirst,Weapon,Item1,Item2)*/


:-dynamic(player/9).

initPlayer:-random(1,21,X),random(1,11,Y),asserta(player(X,Y,'alive',100,100,100,1,'','')).
n:-player(X,Y,S,Lp,H,T,W,I1,I2),Y1 is Y +1,retract(player(X,Y,S,Lp,H,T,W,I1,I2)),asserta(player(X,Y1,S,Lp,H,T,W,I1,I2)).
e:-player(X,Y,S,Lp,H,T,W,I1,I2),X1 is X +1,retract(player(X,Y,S,Lp,H,T,W,I1,I2)),asserta(player(X1,Y,S,Lp,H,T,W,I1,I2)).
s:-player(X,Y,S,Lp,H,T,W,I1,I2),Y1 is Y -1,retract(player(X,Y,S,Lp,H,T,W,I1,I2)),asserta(player(X,Y1,S,Lp,H,T,W,I1,I2)).
w:-player(X,Y,S,Lp,H,T,W,I1,I2),X1 is X -1,retract(player(X,Y,S,Lp,H,T,W,I1,I2)),asserta(player(X1,Y,S,Lp,H,T,W,I1,I2)).