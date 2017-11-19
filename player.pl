/* baca file eksternal */
/*(X,Y,status,Health,Hungry,Thirst,Weapon,Item)*/


:-dynamic(player/8).

initPlayer:-random(1,21,X),random(1,11,Y),asserta(player(X,Y,'alive',100,100,100,1,['a'])).
n:-player(X,Y,S,Lp,H,T,W,[L]),moveenemy,Y\==1,Y1 is Y - 1,look_pos(X,Y1),!,write('cant move there\n').
n:-player(X,Y,S,Lp,H,T,W,[L]),Y\==1,Y1 is Y - 1,retract(player(X,Y,S,Lp,H,T,W,[L])),asserta(player(X,Y1,S,Lp,H,T,W,[L])),lookTerrain(X,Y1),moveenemy,!.
e:-player(X,Y,S,Lp,H,T,W,[L]),moveenemy,X\==20,X1 is X + 1,look_pos(X1,Y),!,write('cant move there\n').
e:-player(X,Y,S,Lp,H,T,W,[L]),X\==20,X1 is X + 1,retract(player(X,Y,S,Lp,H,T,W,[L])),asserta(player(X1,Y,S,Lp,H,T,W,[L])),lookTerrain(X1,Y),moveenemy,!.
s:-player(X,Y,S,Lp,H,T,W,[L]),moveenemy,Y\==10,Y1 is Y + 1,look_pos(X,Y1),!,write('cant move there\n').
s:-player(X,Y,S,Lp,H,T,W,[L]),Y\==10,Y1 is Y + 1,retract(player(X,Y,S,Lp,H,T,W,[L])),asserta(player(X,Y1,S,Lp,H,T,W,[L])),lookTerrain(X,Y1),moveenemy,!.
w:-player(X,Y,S,Lp,H,T,W,[L]),moveenemy,X\==1,X1 is X - 1,look_pos(X1,Y),!,write('cant move there\n').
w:-player(X,Y,S,Lp,H,T,W,[L]),X\==1,X1 is X - 1,retract(player(X,Y,S,Lp,H,T,W,[L])),asserta(player(X1,Y,S,Lp,H,T,W,[L])),lookTerrain(X1,Y),moveenemy,!.

look:-player(X,Y,S,Lp,H,T,W,[L]),writeItem(X,Y).

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
look_elmt(I,J):-x1(I,J),write('X'),!.
look_elmt(I,J):-x2(I,J),write('X'),!.
look_elmt(I,J):-x3(I,J),write('X'),!.
look_elmt(I,J):-x4(I,J),write('X'),!.
look_elmt(I,J):-x5(I,J),write('X'),!.
look_elmt(I,J):-x6(I,J),write('X'),!.
look_elmt(I,J):-x7(I,J),write('X'),!.
look_elmt(I,J):-x8(I,J),write('X'),!.
look_elmt(I,J):-x9(I,J),write('X'),!.
look_elmt(I,J):-x10(I,J),write('X'),!.
look_elmt(I,J):-x11(I,J),write('X'),!.
look_elmt(I,J):-x12(I,J),write('X'),!.
look_elmt(I,J):-x13(I,J),write('X'),!.
look_elmt(I,J):-x14(I,J),write('X'),!.
look_elmt(I,J):-x15(I,J),write('X'),!.
look_elmt(I,J):-x16(I,J),write('X'),!.
look_elmt(I,J):-x17(I,J),write('X'),!.
look_elmt(I,J):-x18(I,J),write('X'),!.
look_elmt(I,J):-x19(I,J),write('X'),!.
look_elmt(I,J):-x20(I,J),write('X'),!.
look_elmt(I,J):-e1(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e2(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e3(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e4(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e5(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e6(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e7(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e8(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e9(I,J,'alive',_,_),write('E'),!.
look_elmt(I,J):-e10(I,J,'alive',_,_),write('E'),!.
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
look_elmt(I,J):-player(I,J,'alive',_,_,_,_,_),write('P'),!.
look_elmt(I,J):-write('-').

look_pos(I,J):-x1(I,J),write('X'),!.
look_pos(I,J):-x2(I,J),write('X'),!.
look_pos(I,J):-x3(I,J),write('X'),!.
look_pos(I,J):-x4(I,J),write('X'),!.
look_pos(I,J):-x5(I,J),write('X'),!.
look_pos(I,J):-x6(I,J),write('X'),!.
look_pos(I,J):-x7(I,J),write('X'),!.
look_pos(I,J):-x8(I,J),write('X'),!.
look_pos(I,J):-x9(I,J),write('X'),!.
look_pos(I,J):-x10(I,J),write('X'),!.
look_pos(I,J):-x11(I,J),write('X'),!.
look_pos(I,J):-x12(I,J),write('X'),!.
look_pos(I,J):-x13(I,J),write('X'),!.
look_pos(I,J):-x14(I,J),write('X'),!.
look_pos(I,J):-x15(I,J),write('X'),!.
look_pos(I,J):-x16(I,J),write('X'),!.
look_pos(I,J):-x17(I,J),write('X'),!.
look_pos(I,J):-x18(I,J),write('X'),!.
look_pos(I,J):-x19(I,J),write('X'),!.
look_pos(I,J):-x20(I,J),write('X'),!.