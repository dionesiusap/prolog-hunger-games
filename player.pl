/* baca file eksternal */
/*(X,Y,status,LifePoint,Hungry,Thirst,Weapon,ItemList) */


:-dynamic(player/8).

initPlayer:-random(1,21,X),random(1,11,Y),look_pos(X,Y),!,initPlayer.
initPlayer:-random(1,21,X),random(1,11,Y),asserta(player(4,5,'alive',100,100,100,2,[])).

n:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==1,Y1 is Y - 1,look_pos(X,Y1),!,write('Can\'t move there\n'),moveenemy.
n:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==1,Y1 is Y - 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X,Y1,S,Lp,H1,T1,W,L)),lookTerrain(X,Y1),moveenemy,!,lookNow(X,Y1),fail.
e:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==20,X1 is X + 1,look_pos(X1,Y),!,write('Can\'t move there\n'),moveenemy.
e:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==20,X1 is X + 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X1,Y,S,Lp,H1,T1,W,L)),lookTerrain(X1,Y),moveenemy,!,lookNow(X1,Y),fail.
s:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==10,Y1 is Y + 1,look_pos(X,Y1),!,write('Can\'t move there\n'),moveenemy.
s:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==10,Y1 is Y + 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X,Y1,S,Lp,H1,T1,W,L)),lookTerrain(X,Y1),moveenemy,!,lookNow(X,Y1),fail.
w:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==1,X1 is X - 1,look_pos(X1,Y),!,write('Can\'t move there\n'),moveenemy.
w:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==1,X1 is X - 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X1,Y,S,Lp,H1,T1,W,L)),lookTerrain(X1,Y),moveenemy,!,lookNow(X1,Y),fail.

sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,1), H<90,!, retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H+10, Lp1 is Lp-10, asserta(player(X,Y,S,Lp1,H1,T,W,L)),write('You tried to sleep in a forest.\nYou found fruits in the forest and ate them before sleep. Your energy is now recharged.\nHowever, the forest was cold and wet and unfortunately you caught flu. Your health drops by 10 points.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,1), H>=90,! ,retract(player(X,Y,S,Lp,H,T,W,L)), Lp1 is Lp-10, asserta(player(X,Y,S,Lp1,100,T,W,L)),write('You tried to sleep in a forest.\nYou found fruits in the forest and ate them before sleep. Your energy is now recharged.\nHowever, the forest was cold and wet and unfortunately you caught flu. Your health drops by 10 points.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,2), Lp<80,!, retract(player(X,Y,S,Lp,H,T,W,L)),F is Lp+20, asserta(player(X,Y,S,F,H,T,W,L)),write('You tried to sleep in a cave. Good choice!\nAfter a good sleep, your health is now recharged.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,2), Lp>=80,! ,retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,100,H,T,W,L)),write('You tried to sleep in a cave. Good choice!\nAfter a good sleep, your health is now recharged.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,3),!, retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,100,W,L)),write('You found an empty camp near the lake. You tried to sleep there.\nYou had unlimited supply of water for the night and now you\'re fully hydrated.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,4),(unlucky(2);unlucky(3)),!,retract(player(X,Y,S,Lp,H,T,W,L)),F is Lp-20, asserta(player(X,Y,S,F,H,T,W,L)),write('You tried to sleep outside.\nYou were hit by a rabbit and your health dropped by 20.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
/*sleep:-player(X,Y,S,Lp,H,T,W,[]),lookTerrainNow(X,Y,4),unlucky,!,retract(player(X,Y,S,Lp,H,T,W,[])),F is Lp-20, asserta(player(X,Y,S,F,H,T,W,[])),write('You tried to sleep outside.\nYou were hit by a rabbit and your health dropped by 20.\nBut wait, there\'s more!\nDuring the night an enemy found you sleeping in the open.\nLuckily, you were poor and the enemy had nothing to steal from you.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.*/
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,4),unlucky(1),!,retract(player(X,Y,S,Lp,H,T,W,L)),F is Lp-20, deletelst([food,water],L,L1), asserta(player(X,Y,S,F,H,T,W,L1)),write('You tried to sleep outside.\nYou were hit by a rabbit and your health dropped by 20.\nBut wait, there\'s more!\nUnlucky for you, one of the enemies found you sleeping on an open space and stole all food and drinks.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.

dead:-player(_,_,_,Lp,H,T,_,_),Lp=:=0,write('You are dead'),halt.
dead:-player(_,_,_,Lp,H,T,_,_),H=:=0,write('You are dead'),halt.
dead:-player(_,_,_,Lp,H,T,_,_),T=:=0,write('You are dead'),halt.

look:-player(X,Y,S,Lp,H,T,W,L),writeItem(X,Y).

status:-player(X,Y,S,Lp,H,T,W,L),
    write('Health: '),write(Lp),write('\n'),
    write('Hunger: '),write(H),write('\n'),
    write('Thirst: '),write(T),write('\n'),
    write('Weapon: '),writeWeapon(W),write('\n'),
    write('Inventory: '),write('\n'),writeInventory(L),write('\n').

writeWeapon(2):-write('gojek').
writeWeapon(1):-write('bazooka').
writeWeapon(0):-write('bare hands').

writeInventory([]):-write('\n').
writeInventory([H|T]):-write('- '),write(H),write('\n'),writeInventory(T).

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
look_elmt(I,J):-x3(I,J),write('X'),!.
look_elmt(I,J):-x5(I,J),write('X'),!.
look_elmt(I,J):-x7(I,J),write('X'),!.
look_elmt(I,J):-x9(I,J),write('X'),!.
look_elmt(I,J):-x11(I,J),write('X'),!.
look_elmt(I,J):-x13(I,J),write('X'),!.
look_elmt(I,J):-x15(I,J),write('X'),!.
look_elmt(I,J):-x17(I,J),write('X'),!.
look_elmt(I,J):-x19(I,J),write('X'),!.
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
look_elmt(I,J):-item8(I,J,'available','medecine'),write('M'),!.
look_elmt(I,J):-item9(I,J,'available','medecine'),write('M'),!.
look_elmt(I,J):-itemE8(I,J,'available','medecine'),write('M'),!.
look_elmt(I,J):-itemE9(I,J,'available','medecine'),write('M'),!.
look_elmt(I,J):-item4(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-item5(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-item6(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-item7(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-itemE4(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-itemE5(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-itemE6(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-itemE7(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-item2(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-item3(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-itemE1(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-item1(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-itemE2(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-itemE3(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-itemE10(I,J,'available','radar'),write('R'),!.
look_elmt(I,J):-item10(I,J,'available','radar'),write('R'),!.
look_elmt(I,J):-item11(I,J,'available','bazooka'),write('B'),!.
look_elmt(I,J):-item12(I,J,'available','bazooka'),write('B'),!.
look_elmt(I,J):-item13(I,J,'available','bazooka'),write('B'),!.
look_elmt(I,J):-item14(I,J,'available','bazooka'),write('B'),!.
look_elmt(I,J):-item15(I,J,'available','bazooka'),write('B'),!.
/*looK_elmt(I,J):-goride(I,J,'available','goride'),write('G'),!.
looK_elmt(I,J):-gocar(I,J,'available','gocar'),write('G'),!.
looK_elmt(I,J):-gofood(I,J,'available','gofood'),write('G'),!.
looK_elmt(I,J):-gosend(I,J,'available','gosend'),write('G'),!.*/
look_elmt(I,J):-player(I,J,'alive',_,_,_,_,_),write('P'),!.
look_elmt(I,J):-write('-').

look_pos(I,J):-x1(I,J),!.
look_pos(I,J):-x3(I,J),!.
look_pos(I,J):-x5(I,J),!.
look_pos(I,J):-x7(I,J),!.
look_pos(I,J):-x9(I,J),!.
look_pos(I,J):-x11(I,J),!.
look_pos(I,J):-x13(I,J),!.
look_pos(I,J):-x15(I,J),!.
look_pos(I,J):-x17(I,J),!.
look_pos(I,J):-x19(I,J),!.


/*melihat petak dibawah ada apa*/
lookNow(I,J):-e1(I,J,'alive',_,_),write('You see an enemy.\n').
lookNow(I,J):-e2(I,J,'alive',_,_),write('You see an enemy.\n').
lookNow(I,J):-e3(I,J,'alive',_,_),write('You see an enemy.\n').
lookNow(I,J):-e4(I,J,'alive',_,_),write('You see an enemy.\n').
lookNow(I,J):-e5(I,J,'alive',_,_),write('You see an enemy.\n').
lookNow(I,J):-e6(I,J,'alive',_,_),write('You see an enemy.\n').
lookNow(I,J):-e7(I,J,'alive',_,_),write('You see an enemy.\n').
lookNow(I,J):-e8(I,J,'alive',_,_),write('You see an enemy.\n').
lookNow(I,J):-e9(I,J,'alive',_,_),write('You see an enemy.\n').
lookNow(I,J):-e10(I,J,'alive',_,_),write('You see an enemy.\n').
lookNow(I,J):-item1(I,J,'available','water'),write('You see some water.\n').
lookNow(I,J):-item2(I,J,'available','water'),write('You see some water.\n').
lookNow(I,J):-item3(I,J,'available','water'),write('You see some water.\n').
lookNow(I,J):-item4(I,J,'available','food'),write('You see some food.\n').
lookNow(I,J):-item5(I,J,'available','food'),write('You see some food.\n').
lookNow(I,J):-item6(I,J,'available','food'),write('You see some food.\n').
lookNow(I,J):-item7(I,J,'available','food'),write('You see some food.\n').
lookNow(I,J):-item8(I,J,'available','medecine'),write('You see some medicine.\n').
lookNow(I,J):-item9(I,J,'available','medecine'),write('You see some medicine.\n').
lookNow(I,J):-item10(I,J,'available','radar'),write('You see a radar.\n').
lookNow(I,J):-itemE1(I,J,'available','water'),write('You see some water.\n').
lookNow(I,J):-itemE2(I,J,'available','water'),write('You see some water.\n').
lookNow(I,J):-itemE3(I,J,'available','water'),write('You see some water.\n').
lookNow(I,J):-itemE4(I,J,'available','food'),write('You see some food.\n').
lookNow(I,J):-itemE5(I,J,'available','food'),write('You see some food.\n').
lookNow(I,J):-itemE6(I,J,'available','food'),write('You see some food.\n').
lookNow(I,J):-itemE7(I,J,'available','food'),write('You see some food.\n').
lookNow(I,J):-itemE8(I,J,'available','medecine'),write('You see some medicine.\n').
lookNow(I,J):-itemE9(I,J,'available','medecine'),write('You see some medicine.\n').
lookNow(I,J):-itemE10(I,J,'available','radar'),write('You see a radar.\n').
lookNow(I,J):-item11(I,J,'available','bazooka'),write('you see a bazooka.\n').
lookNow(I,J):-item12(I,J,'available','bazooka'),write('you see a bazooka.\n').
lookNow(I,J):-item13(I,J,'available','bazooka'),write('you see a bazooka.\n').
lookNow(I,J):-item14(I,J,'available','bazooka'),write('you see a bazooka.\n').
lookNow(I,J):-item15(I,J,'available','bazooka'),write('you see a bazooka.\n').
lookNow(I,J):-goride(I,J,'available','goride'),write('you see a goride! Hmm, I wonder what it could do...\n'),!.
lookNow(I,J):-gocar(I,J,'available','gocar'),write('you see a gocar! Hmm, I wonder what it could do...\n'),!.
lookNow(I,J):-gofood(I,J,'available','gofood'),write('you see a gofood! Hmm, I wonder what it could do...\n'),!.
lookNow(I,J):-gosend(I,J,'available','gosend'),write('you see a gosend! Hmm, I wonder what it could do...\n'),!.
lookNow(I,J):-write(''),!.



lookTerrainNow(I,J,K):-t1(J,I,K),!.
lookTerrainNow(I,J,K):-t2(J,I,K),!.
lookTerrainNow(I,J,K):-t3(J,I,K),!.
lookTerrainNow(I,J,K):-t4(J,I,K),!.
lookTerrainNow(I,J,K):-t5(J,I,K),!.
lookTerrainNow(I,J,K):-t6(J,I,K),!.
lookTerrainNow(I,J,K):-t7(J,I,K),!.
lookTerrainNow(I,J,K):-t8(J,I,K),!.
lookTerrainNow(I,J,K):-t9(J,I,K),!.
lookTerrainNow(I,J,K):-t10(J,I,K),!.
lookTerrainNow(I,J,K):-t11(J,I,K),!.
lookTerrainNow(I,J,K):-t12(J,I,K),!.
lookTerrainNow(I,J,K):-t13(J,I,K),!.
lookTerrainNow(I,J,K):-t14(J,I,K),!.
lookTerrainNow(I,J,K):-t15(J,I,K),!.
lookTerrainNow(I,J,K):-t16(J,I,K),!.
lookTerrainNow(I,J,K):-t17(J,I,K),!.
lookTerrainNow(I,J,K):-t18(J,I,K),!.
lookTerrainNow(I,J,K):-t19(J,I,K),!.
lookTerrainNow(I,J,K):-t20(J,I,K),!.
lookTerrainNow(I,J,K):-t21(J,I,K),!.
lookTerrainNow(I,J,K):-t22(J,I,K),!.
lookTerrainNow(I,J,K):-t23(J,I,K),!.
lookTerrainNow(I,J,K):-t24(J,I,K),!.
lookTerrainNow(I,J,K):-t25(J,I,K),!.
lookTerrainNow(I,J,K):-t26(J,I,K),!.
lookTerrainNow(I,J,K):-t27(J,I,K),!.
lookTerrainNow(I,J,K):-t28(J,I,K),!.
lookTerrainNow(I,J,K):-t29(J,I,K),!.
lookTerrainNow(I,J,K):-t30(J,I,K),!.
lookTerrainNow(I,J,K):-t31(J,I,K),!.
lookTerrainNow(I,J,K):-t32(J,I,K),!.
lookTerrainNow(I,J,K):-t33(J,I,K),!.
lookTerrainNow(I,J,K):-t34(J,I,K),!.
lookTerrainNow(I,J,K):-t35(J,I,K),!.
lookTerrainNow(I,J,K):-t36(J,I,K),!.
lookTerrainNow(I,J,K):-t37(J,I,K),!.
lookTerrainNow(I,J,K):-t38(J,I,K),!.
lookTerrainNow(I,J,K):-t39(J,I,K),!.
lookTerrainNow(I,J,K):-t40(J,I,K),!.
lookTerrainNow(I,J,K):-t41(J,I,K),!.
lookTerrainNow(I,J,K):-t42(J,I,K),!.
lookTerrainNow(I,J,K):-t43(J,I,K),!.
lookTerrainNow(I,J,K):-t44(J,I,K),!.
lookTerrainNow(I,J,K):-t45(J,I,K),!.
lookTerrainNow(I,J,K):-t46(J,I,K),!.
lookTerrainNow(I,J,K):-t47(J,I,K),!.
lookTerrainNow(I,J,K):-t48(J,I,K),!.
lookTerrainNow(I,J,K):-t49(J,I,K),!.
lookTerrainNow(I,J,K):-t50(J,I,K),!.
lookTerrainNow(I,J,K):-t51(J,I,K),!.
lookTerrainNow(I,J,K):-t52(J,I,K),!.
lookTerrainNow(I,J,K):-t53(J,I,K),!.
lookTerrainNow(I,J,K):-t54(J,I,K),!.
lookTerrainNow(I,J,K):-t55(J,I,K),!.
lookTerrainNow(I,J,K):-t56(J,I,K),!.
lookTerrainNow(I,J,K):-t57(J,I,K),!.
lookTerrainNow(I,J,K):-t58(J,I,K),!.
lookTerrainNow(I,J,K):-t59(J,I,K),!.
lookTerrainNow(I,J,K):-t60(J,I,K),!.
lookTerrainNow(I,J,K):-t61(J,I,K),!.
lookTerrainNow(I,J,K):-t62(J,I,K),!.
lookTerrainNow(I,J,K):-t63(J,I,K),!.
lookTerrainNow(I,J,K):-t64(J,I,K),!.
lookTerrainNow(I,J,K):-t65(J,I,K),!.
lookTerrainNow(I,J,K):-t66(J,I,K),!.
lookTerrainNow(I,J,K):-t67(J,I,K),!.
lookTerrainNow(I,J,K):-t68(J,I,K),!.
lookTerrainNow(I,J,K):-t69(J,I,K),!.
lookTerrainNow(I,J,K):-t70(J,I,K),!.
lookTerrainNow(I,J,K):-t71(J,I,K),!.
lookTerrainNow(I,J,K):-t72(J,I,K),!.
lookTerrainNow(I,J,K):-t73(J,I,K),!.
lookTerrainNow(I,J,K):-t74(J,I,K),!.
lookTerrainNow(I,J,K):-t75(J,I,K),!.
lookTerrainNow(I,J,K):-t76(J,I,K),!.
lookTerrainNow(I,J,K):-t77(J,I,K),!.
lookTerrainNow(I,J,K):-t78(J,I,K),!.
lookTerrainNow(I,J,K):-t79(J,I,K),!.
lookTerrainNow(I,J,K):-t80(J,I,K),!.
lookTerrainNow(I,J,K):-t81(J,I,K),!.
lookTerrainNow(I,J,K):-t82(J,I,K),!.
lookTerrainNow(I,J,K):-t83(J,I,K),!.
lookTerrainNow(I,J,K):-t84(J,I,K),!.
lookTerrainNow(I,J,K):-t85(J,I,K),!.
lookTerrainNow(I,J,K):-t86(J,I,K),!.
lookTerrainNow(I,J,K):-t87(J,I,K),!.
lookTerrainNow(I,J,K):-t88(J,I,K),!.
lookTerrainNow(I,J,K):-t89(J,I,K),!.
lookTerrainNow(I,J,K):-t90(J,I,K),!.
lookTerrainNow(I,J,K):-t91(J,I,K),!.
lookTerrainNow(I,J,K):-t92(J,I,K),!.
lookTerrainNow(I,J,K):-t93(J,I,K),!.
lookTerrainNow(I,J,K):-t94(J,I,K),!.
lookTerrainNow(I,J,K):-t95(J,I,K),!.
lookTerrainNow(I,J,K):-t96(J,I,K),!.
lookTerrainNow(I,J,K):-t97(J,I,K),!.
lookTerrainNow(I,J,K):-t98(J,I,K),!.
lookTerrainNow(I,J,K):-t99(J,I,K),!.
lookTerrainNow(I,J,K):-t100(J,I,K),!.
lookTerrainNow(I,J,K):-t101(J,I,K),!.
lookTerrainNow(I,J,K):-t102(J,I,K),!.
lookTerrainNow(I,J,K):-t103(J,I,K),!.
lookTerrainNow(I,J,K):-t104(J,I,K),!.
lookTerrainNow(I,J,K):-t105(J,I,K),!.
lookTerrainNow(I,J,K):-t106(J,I,K),!.
lookTerrainNow(I,J,K):-t107(J,I,K),!.
lookTerrainNow(I,J,K):-t108(J,I,K),!.
lookTerrainNow(I,J,K):-t109(J,I,K),!.
lookTerrainNow(I,J,K):-t110(J,I,K),!.
lookTerrainNow(I,J,K):-t111(J,I,K),!.
lookTerrainNow(I,J,K):-t112(J,I,K),!.
lookTerrainNow(I,J,K):-t113(J,I,K),!.
lookTerrainNow(I,J,K):-t114(J,I,K),!.
lookTerrainNow(I,J,K):-t115(J,I,K),!.
lookTerrainNow(I,J,K):-t116(J,I,K),!.
lookTerrainNow(I,J,K):-t117(J,I,K),!.
lookTerrainNow(I,J,K):-t118(J,I,K),!.
lookTerrainNow(I,J,K):-t119(J,I,K),!.
lookTerrainNow(I,J,K):-t120(J,I,K),!.
lookTerrainNow(I,J,K):-t121(J,I,K),!.
lookTerrainNow(I,J,K):-t122(J,I,K),!.
lookTerrainNow(I,J,K):-t123(J,I,K),!.
lookTerrainNow(I,J,K):-t124(J,I,K),!.
lookTerrainNow(I,J,K):-t125(J,I,K),!.
lookTerrainNow(I,J,K):-t126(J,I,K),!.
lookTerrainNow(I,J,K):-t127(J,I,K),!.
lookTerrainNow(I,J,K):-t128(J,I,K),!.
lookTerrainNow(I,J,K):-t129(J,I,K),!.
lookTerrainNow(I,J,K):-t130(J,I,K),!.
lookTerrainNow(I,J,K):-t131(J,I,K),!.
lookTerrainNow(I,J,K):-t132(J,I,K),!.
lookTerrainNow(I,J,K):-t133(J,I,K),!.
lookTerrainNow(I,J,K):-t134(J,I,K),!.
lookTerrainNow(I,J,K):-t135(J,I,K),!.
lookTerrainNow(I,J,K):-t136(J,I,K),!.
lookTerrainNow(I,J,K):-t137(J,I,K),!.
lookTerrainNow(I,J,K):-t138(J,I,K),!.
lookTerrainNow(I,J,K):-t139(J,I,K),!.
lookTerrainNow(I,J,K):-t140(J,I,K),!.
lookTerrainNow(I,J,K):-t141(J,I,K),!.
lookTerrainNow(I,J,K):-t142(J,I,K),!.
lookTerrainNow(I,J,K):-t143(J,I,K),!.
lookTerrainNow(I,J,K):-t144(J,I,K),!.
lookTerrainNow(I,J,K):-t145(J,I,K),!.
lookTerrainNow(I,J,K):-t146(J,I,K),!.
lookTerrainNow(I,J,K):-t147(J,I,K),!.
lookTerrainNow(I,J,K):-t148(J,I,K),!.
lookTerrainNow(I,J,K):-t149(J,I,K),!.
lookTerrainNow(I,J,K):-t150(J,I,K),!.
lookTerrainNow(I,J,K):-t151(J,I,K),!.
lookTerrainNow(I,J,K):-t152(J,I,K),!.
lookTerrainNow(I,J,K):-t153(J,I,K),!.
lookTerrainNow(I,J,K):-t154(J,I,K),!.
lookTerrainNow(I,J,K):-t155(J,I,K),!.
lookTerrainNow(I,J,K):-t156(J,I,K),!.
lookTerrainNow(I,J,K):-t157(J,I,K),!.
lookTerrainNow(I,J,K):-t158(J,I,K),!.
lookTerrainNow(I,J,K):-t159(J,I,K),!.
lookTerrainNow(I,J,K):-t160(J,I,K),!.
lookTerrainNow(I,J,K):-t161(J,I,K),!.
lookTerrainNow(I,J,K):-t162(J,I,K),!.
lookTerrainNow(I,J,K):-t163(J,I,K),!.
lookTerrainNow(I,J,K):-t164(J,I,K),!.
lookTerrainNow(I,J,K):-t165(J,I,K),!.
lookTerrainNow(I,J,K):-t166(J,I,K),!.
lookTerrainNow(I,J,K):-t167(J,I,K),!.
lookTerrainNow(I,J,K):-t168(J,I,K),!.
lookTerrainNow(I,J,K):-t169(J,I,K),!.
lookTerrainNow(I,J,K):-t170(J,I,K),!.
lookTerrainNow(I,J,K):-t171(J,I,K),!.
lookTerrainNow(I,J,K):-t172(J,I,K),!.
lookTerrainNow(I,J,K):-t173(J,I,K),!.
lookTerrainNow(I,J,K):-t174(J,I,K),!.
lookTerrainNow(I,J,K):-t175(J,I,K),!.
lookTerrainNow(I,J,K):-t176(J,I,K),!.
lookTerrainNow(I,J,K):-t177(J,I,K),!.
lookTerrainNow(I,J,K):-t178(J,I,K),!.
lookTerrainNow(I,J,K):-t179(J,I,K),!.
lookTerrainNow(I,J,K):-t180(J,I,K),!.
lookTerrainNow(I,J,K):-t181(J,I,K),!.
lookTerrainNow(I,J,K):-t182(J,I,K),!.
lookTerrainNow(I,J,K):-t183(J,I,K),!.
lookTerrainNow(I,J,K):-t184(J,I,K),!.
lookTerrainNow(I,J,K):-t185(J,I,K),!.
lookTerrainNow(I,J,K):-t186(J,I,K),!.
lookTerrainNow(I,J,K):-t187(J,I,K),!.
lookTerrainNow(I,J,K):-t188(J,I,K),!.
lookTerrainNow(I,J,K):-t189(J,I,K),!.
lookTerrainNow(I,J,K):-t190(J,I,K),!.
lookTerrainNow(I,J,K):-t191(J,I,K),!.
lookTerrainNow(I,J,K):-t192(J,I,K),!.
lookTerrainNow(I,J,K):-t193(J,I,K),!.
lookTerrainNow(I,J,K):-t194(J,I,K),!.
lookTerrainNow(I,J,K):-t195(J,I,K),!.
lookTerrainNow(I,J,K):-t196(J,I,K),!.
lookTerrainNow(I,J,K):-t197(J,I,K),!.
lookTerrainNow(I,J,K):-t198(J,I,K),!.
lookTerrainNow(I,J,K):-t199(J,I,K),!.
lookTerrainNow(I,J,K):-t200(J,I,K),!.


unlucky(Y) :- random(1,4,X), Y =:= X.

nonElement(_, []).
nonElement(X, [Y|Z]) :- X\==Y, nonElement(X,Z).

deletelst(_, [], []).
deletelst(Y, [X|W], Z)     :- member(X, Y), deletelst(Y, W, Z).
deletelst(Y, [X|W], [X|Z]) :- nonElement(X, Y), deletelst(Y, W, Z).