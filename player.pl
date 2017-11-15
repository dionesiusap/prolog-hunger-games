/* baca file eksternal */
/*(X,Y,status,Health,Hungry,Thirst,Weapon,Item1,Item2)*/


:-dynamic(player/9).

initPlayer:-random(1,21,X),random(1,11,Y),asserta(player(X,Y,'alive',100,100,100,1,'','')).
n:-player(X,Y,S,Lp,H,T,W,I1,I2),Y\==1,Y1 is Y - 1,retract(player(X,Y,S,Lp,H,T,W,I1,I2)),asserta(player(X,Y1,S,Lp,H,T,W,I1,I2)).
e:-player(X,Y,S,Lp,H,T,W,I1,I2),X\==20,X1 is X + 1,retract(player(X,Y,S,Lp,H,T,W,I1,I2)),asserta(player(X1,Y,S,Lp,H,T,W,I1,I2)).
s:-player(X,Y,S,Lp,H,T,W,I1,I2),Y\==10,Y1 is Y + 1,retract(player(X,Y,S,Lp,H,T,W,I1,I2)),asserta(player(X,Y1,S,Lp,H,T,W,I1,I2)).
w:-player(X,Y,S,Lp,H,T,W,I1,I2),X\==1,X1 is X - 1,retract(player(X,Y,S,Lp,H,T,W,I1,I2)),asserta(player(X1,Y,S,Lp,H,T,W,I1,I2)).

look:-player(X,Y,S,Lp,H,T,W,I1,I2),writeItem(X,Y).

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
look_elmt(I,J):-e1(I,J,'alive',_),write('E'),!.
look_elmt(I,J):-e2(I,J,'alive',_),write('E'),!.
look_elmt(I,J):-e3(I,J,'alive',_),write('E'),!.
look_elmt(I,J):-e4(I,J,'alive',_),write('E'),!.
look_elmt(I,J):-e5(I,J,'alive',_),write('E'),!.
look_elmt(I,J):-e6(I,J,'alive',_),write('E'),!.
look_elmt(I,J):-e7(I,J,'alive',_),write('E'),!.
look_elmt(I,J):-e8(I,J,'alive',_),write('E'),!.
look_elmt(I,J):-e9(I,J,'alive',_),write('E'),!.
look_elmt(I,J):-e10(I,J,'alive',_),write('E'),!.
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
look_elmt(I,J):-player(I,J,'alive',_,_,_,_,_,_),write('P'),!.
look_elmt(I,J):-write(' ').