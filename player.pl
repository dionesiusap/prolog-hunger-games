/* baca file eksternal */
/*(X,Y,status,LifePoint,Hungry,Thirst,Weapon,ItemList)*/


:-dynamic(player/8).

initPlayer:-random(1,21,X),random(1,11,Y),look_pos(X,Y),!,initPlayer.
initPlayer:-random(1,21,X),random(1,11,Y),asserta(player(X,Y,'alive',100,100,100,0,[radar])).

n:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==1,Y1 is Y - 1,look_pos(X,Y1),!,write('Can\'t move there\n'),moveenemy.
n:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==1,Y1 is Y - 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X,Y1,S,Lp,H1,T1,W,L)),lookTerrain(X,Y1),moveenemy,!,lookNow(X,Y1).
e:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==20,X1 is X + 1,look_pos(X1,Y),!,write('Can\'t move there\n'),moveenemy.
e:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==20,X1 is X + 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X1,Y,S,Lp,H1,T1,W,L)),lookTerrain(X1,Y),moveenemy,!,lookNow(X1,Y).
s:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==10,Y1 is Y + 1,look_pos(X,Y1),!,write('Can\'t move there\n'),moveenemy.
s:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==10,Y1 is Y + 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X,Y1,S,Lp,H1,T1,W,L)),lookTerrain(X,Y1),moveenemy,!,lookNow(X,Y1).
w:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==1,X1 is X - 1,look_pos(X1,Y),!,write('Can\'t move there\n'),moveenemy.
w:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==1,X1 is X - 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X1,Y,S,Lp,H1,T1,W,L)),lookTerrain(X1,Y),moveenemy,!,lookNow(X1,Y).

sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,1), H<90,!, retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H+10, Lp1 is Lp-10, asserta(player(X,Y,S,Lp1,H1,T,W,L)),write('You tried to sleep in a forest.\nYou found fruits in the forest and ate them before sleep. Your energy is now recharged.\nHowever, the forest was cold and wet and unfortunately you caught flu. Your health drops by 10 points.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,1), H>=90,! ,retract(player(X,Y,S,Lp,H,T,W,L)), Lp1 is Lp-10, asserta(player(X,Y,S,Lp1,100,T,W,L)),write('You tried to sleep in a forest.\nYou found fruits in the forest and ate them before sleep. Your energy is now recharged.\nHowever, the forest was cold and wet and unfortunately you caught flu. Your health drops by 10 points.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,2), Lp<80,!, retract(player(X,Y,S,Lp,H,T,W,L)),F is Lp+20, asserta(player(X,Y,S,F,H,T,W,L)),write('You tried to sleep in a cave. Good choice!\nAfter a good sleep, your health is now recharged.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,2), Lp>=80,! ,retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,100,H,T,W,L)),write('You tried to sleep in a cave. Good choice!\nAfter a good sleep, your health is now recharged.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,3),!, retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,100,W,L)),write('You found an empty camp near the lake. You tried to sleep there.\nYou had unlimited supply of water for the night and now you\'re fully hydrated.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,4),\+(unlucky),!,retract(player(X,Y,S,Lp,H,T,W,L)),F is Lp-20, asserta(player(X,Y,S,F,H,T,W,L)),write('You tried to sleep outside.\nYou were hit by a rabbit and your health dropped by 20.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y,4),unlucky,!,retract(player(X,Y,S,Lp,H,T,W,L)),F is Lp-20, deletelst([food,water],L,L1), asserta(player(X,Y,S,F,H,T,W,L1)),write('You tried to sleep outside.\nYou were hit by a rabbit and your health dropped by 20.\nBut wait, there\'s more!\nUnlucky for you, one of the enemies found you sleeping on an open space and stole all food and drinks.\n'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.

dead:-player(_,_,_,Lp,H,T,_,_),Lp=<0,write('You are dead'),halt.
dead:-player(_,_,_,Lp,H,T,_,_),H=<0,write('You are dead'),halt.
dead:-player(_,_,_,Lp,H,T,_,_),T=<0,write('You are dead'),halt.

look:-player(X,Y,S,Lp,H,T,W,L),writeItem(X,Y).

status:-player(X,Y,S,Lp,H,T,W,L),
    write('Health: '),write(Lp),write('\n'),
    write('Hungry: '),write(H),write('\n'),
    write('Thirst: '),write(T),write('\n'),
    write('Weapon: '),writeWeapon(W),write('\n'),
    write('Inventory: '),write('\n'),writeInventory(L),write('\n').

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
lookNow(I,J):-e1(I,J,'alive',_,_),write('You see an enemy\n').
lookNow(I,J):-e2(I,J,'alive',_,_),write('You see an enemy\n').
lookNow(I,J):-e3(I,J,'alive',_,_),write('You see an enemy\n').
lookNow(I,J):-e4(I,J,'alive',_,_),write('You see an enemy\n').
lookNow(I,J):-e5(I,J,'alive',_,_),write('You see an enemy\n').
lookNow(I,J):-e6(I,J,'alive',_,_),write('You see an enemy\n').
lookNow(I,J):-e7(I,J,'alive',_,_),write('You see an enemy\n').
lookNow(I,J):-e8(I,J,'alive',_,_),write('You see an enemy\n').
lookNow(I,J):-e9(I,J,'alive',_,_),write('You see an enemy\n').
lookNow(I,J):-e10(I,J,'alive',_,_),write('You see an enemy\n').
lookNow(I,J):-item1(I,J,'available','water'),write('You see some water\n').
lookNow(I,J):-item2(I,J,'available','water'),write('You see some water\n').
lookNow(I,J):-item3(I,J,'available','water'),write('You see some water\n').
lookNow(I,J):-item4(I,J,'available','food'),write('You see some food\n').
lookNow(I,J):-item5(I,J,'available','food'),write('You see some food\n').
lookNow(I,J):-item6(I,J,'available','food'),write('You see some food\n').
lookNow(I,J):-item7(I,J,'available','food'),write('You see some food\n').
lookNow(I,J):-item8(I,J,'available','medecine'),write('You see some medicine\n').
lookNow(I,J):-item9(I,J,'available','medecine'),write('You see some medicine\n').
lookNow(I,J):-item10(I,J,'available','radar'),write('You see a radar\n').
lookNow(I,J):-itemE1(I,J,'available','water'),write('You see some water\n').
lookNow(I,J):-itemE2(I,J,'available','water'),write('You see some water\n').
lookNow(I,J):-itemE3(I,J,'available','water'),write('You see some water\n').
lookNow(I,J):-itemE4(I,J,'available','food'),write('You see some food\n').
lookNow(I,J):-itemE5(I,J,'available','food'),write('You see some food\n').
lookNow(I,J):-itemE6(I,J,'available','food'),write('You see some food\n').
lookNow(I,J):-itemE7(I,J,'available','food'),write('You see some food\n').
lookNow(I,J):-itemE8(I,J,'available','medecine'),write('You see some medicine\n').
lookNow(I,J):-itemE9(I,J,'available','medecine'),write('You see some medicine\n').
lookNow(I,J):-itemE10(I,J,'available','radar'),write('You see a radar\n').
lookNow(I,J):-item11(I,J,'available','bazooka'),write('you see a bazooka'),!.
lookNow(I,J):-item12(I,J,'available','bazooka'),write('you see a bazooka'),!.
lookNow(I,J):-item13(I,J,'available','bazooka'),write('you see a bazooka'),!.
lookNow(I,J):-item14(I,J,'available','bazooka'),write('you see a bazooka'),!.
lookNow(I,J):-item15(I,J,'available','bazooka'),write('you see a bazooka'),!.
lookNow(I,J):-write(''),!.



lookTerrainNow(I,J,T):-t1(J,I,T),!.
lookTerrainNow(I,J,T):-t2(J,I,T),!.
lookTerrainNow(I,J,T):-t3(J,I,T),!.
lookTerrainNow(I,J,T):-t4(J,I,T),!.
lookTerrainNow(I,J,T):-t5(J,I,T),!.
lookTerrainNow(I,J,T):-t6(J,I,T),!.
lookTerrainNow(I,J,T):-t7(J,I,T),!.
lookTerrainNow(I,J,T):-t8(J,I,T),!.
lookTerrainNow(I,J,T):-t9(J,I,T),!.
lookTerrainNow(I,J,T):-t10(J,I,T),!.
lookTerrainNow(I,J,T):-t11(J,I,T),!.
lookTerrainNow(I,J,T):-t12(J,I,T),!.
lookTerrainNow(I,J,T):-t13(J,I,T),!.
lookTerrainNow(I,J,T):-t14(J,I,T),!.
lookTerrainNow(I,J,T):-t15(J,I,T),!.
lookTerrainNow(I,J,T):-t16(J,I,T),!.
lookTerrainNow(I,J,T):-t17(J,I,T),!.
lookTerrainNow(I,J,T):-t18(J,I,T),!.
lookTerrainNow(I,J,T):-t19(J,I,T),!.
lookTerrainNow(I,J,T):-t20(J,I,T),!.
lookTerrainNow(I,J,T):-t21(J,I,T),!.
lookTerrainNow(I,J,T):-t22(J,I,T),!.
lookTerrainNow(I,J,T):-t23(J,I,T),!.
lookTerrainNow(I,J,T):-t24(J,I,T),!.
lookTerrainNow(I,J,T):-t25(J,I,T),!.
lookTerrainNow(I,J,T):-t26(J,I,T),!.
lookTerrainNow(I,J,T):-t27(J,I,T),!.
lookTerrainNow(I,J,T):-t28(J,I,T),!.
lookTerrainNow(I,J,T):-t29(J,I,T),!.
lookTerrainNow(I,J,T):-t30(J,I,T),!.
lookTerrainNow(I,J,T):-t31(J,I,T),!.
lookTerrainNow(I,J,T):-t32(J,I,T),!.
lookTerrainNow(I,J,T):-t33(J,I,T),!.
lookTerrainNow(I,J,T):-t34(J,I,T),!.
lookTerrainNow(I,J,T):-t35(J,I,T),!.
lookTerrainNow(I,J,T):-t36(J,I,T),!.
lookTerrainNow(I,J,T):-t37(J,I,T),!.
lookTerrainNow(I,J,T):-t38(J,I,T),!.
lookTerrainNow(I,J,T):-t39(J,I,T),!.
lookTerrainNow(I,J,T):-t40(J,I,T),!.
lookTerrainNow(I,J,T):-t41(J,I,T),!.
lookTerrainNow(I,J,T):-t42(J,I,T),!.
lookTerrainNow(I,J,T):-t43(J,I,T),!.
lookTerrainNow(I,J,T):-t44(J,I,T),!.
lookTerrainNow(I,J,T):-t45(J,I,T),!.
lookTerrainNow(I,J,T):-t46(J,I,T),!.
lookTerrainNow(I,J,T):-t47(J,I,T),!.
lookTerrainNow(I,J,T):-t48(J,I,T),!.
lookTerrainNow(I,J,T):-t49(J,I,T),!.
lookTerrainNow(I,J,T):-t50(J,I,T),!.
lookTerrainNow(I,J,T):-t51(J,I,T),!.
lookTerrainNow(I,J,T):-t52(J,I,T),!.
lookTerrainNow(I,J,T):-t53(J,I,T),!.
lookTerrainNow(I,J,T):-t54(J,I,T),!.
lookTerrainNow(I,J,T):-t55(J,I,T),!.
lookTerrainNow(I,J,T):-t56(J,I,T),!.
lookTerrainNow(I,J,T):-t57(J,I,T),!.
lookTerrainNow(I,J,T):-t58(J,I,T),!.
lookTerrainNow(I,J,T):-t59(J,I,T),!.
lookTerrainNow(I,J,T):-t60(J,I,T),!.
lookTerrainNow(I,J,T):-t61(J,I,T),!.
lookTerrainNow(I,J,T):-t62(J,I,T),!.
lookTerrainNow(I,J,T):-t63(J,I,T),!.
lookTerrainNow(I,J,T):-t64(J,I,T),!.
lookTerrainNow(I,J,T):-t65(J,I,T),!.
lookTerrainNow(I,J,T):-t66(J,I,T),!.
lookTerrainNow(I,J,T):-t67(J,I,T),!.
lookTerrainNow(I,J,T):-t68(J,I,T),!.
lookTerrainNow(I,J,T):-t69(J,I,T),!.
lookTerrainNow(I,J,T):-t70(J,I,T),!.
lookTerrainNow(I,J,T):-t71(J,I,T),!.
lookTerrainNow(I,J,T):-t72(J,I,T),!.
lookTerrainNow(I,J,T):-t73(J,I,T),!.
lookTerrainNow(I,J,T):-t74(J,I,T),!.
lookTerrainNow(I,J,T):-t75(J,I,T),!.
lookTerrainNow(I,J,T):-t76(J,I,T),!.
lookTerrainNow(I,J,T):-t77(J,I,T),!.
lookTerrainNow(I,J,T):-t78(J,I,T),!.
lookTerrainNow(I,J,T):-t79(J,I,T),!.
lookTerrainNow(I,J,T):-t80(J,I,T),!.
lookTerrainNow(I,J,T):-t81(J,I,T),!.
lookTerrainNow(I,J,T):-t82(J,I,T),!.
lookTerrainNow(I,J,T):-t83(J,I,T),!.
lookTerrainNow(I,J,T):-t84(J,I,T),!.
lookTerrainNow(I,J,T):-t85(J,I,T),!.
lookTerrainNow(I,J,T):-t86(J,I,T),!.
lookTerrainNow(I,J,T):-t87(J,I,T),!.
lookTerrainNow(I,J,T):-t88(J,I,T),!.
lookTerrainNow(I,J,T):-t89(J,I,T),!.
lookTerrainNow(I,J,T):-t90(J,I,T),!.
lookTerrainNow(I,J,T):-t91(J,I,T),!.
lookTerrainNow(I,J,T):-t92(J,I,T),!.
lookTerrainNow(I,J,T):-t93(J,I,T),!.
lookTerrainNow(I,J,T):-t94(J,I,T),!.
lookTerrainNow(I,J,T):-t95(J,I,T),!.
lookTerrainNow(I,J,T):-t96(J,I,T),!.
lookTerrainNow(I,J,T):-t97(J,I,T),!.
lookTerrainNow(I,J,T):-t98(J,I,T),!.
lookTerrainNow(I,J,T):-t99(J,I,T),!.
lookTerrainNow(I,J,T):-t100(J,I,T),!.
lookTerrainNow(I,J,T):-t101(J,I,T),!.
lookTerrainNow(I,J,T):-t102(J,I,T),!.
lookTerrainNow(I,J,T):-t103(J,I,T),!.
lookTerrainNow(I,J,T):-t104(J,I,T),!.
lookTerrainNow(I,J,T):-t105(J,I,T),!.
lookTerrainNow(I,J,T):-t106(J,I,T),!.
lookTerrainNow(I,J,T):-t107(J,I,T),!.
lookTerrainNow(I,J,T):-t108(J,I,T),!.
lookTerrainNow(I,J,T):-t109(J,I,T),!.
lookTerrainNow(I,J,T):-t110(J,I,T),!.
lookTerrainNow(I,J,T):-t111(J,I,T),!.
lookTerrainNow(I,J,T):-t112(J,I,T),!.
lookTerrainNow(I,J,T):-t113(J,I,T),!.
lookTerrainNow(I,J,T):-t114(J,I,T),!.
lookTerrainNow(I,J,T):-t115(J,I,T),!.
lookTerrainNow(I,J,T):-t116(J,I,T),!.
lookTerrainNow(I,J,T):-t117(J,I,T),!.
lookTerrainNow(I,J,T):-t118(J,I,T),!.
lookTerrainNow(I,J,T):-t119(J,I,T),!.
lookTerrainNow(I,J,T):-t120(J,I,T),!.
lookTerrainNow(I,J,T):-t121(J,I,T),!.
lookTerrainNow(I,J,T):-t122(J,I,T),!.
lookTerrainNow(I,J,T):-t123(J,I,T),!.
lookTerrainNow(I,J,T):-t124(J,I,T),!.
lookTerrainNow(I,J,T):-t125(J,I,T),!.
lookTerrainNow(I,J,T):-t126(J,I,T),!.
lookTerrainNow(I,J,T):-t127(J,I,T),!.
lookTerrainNow(I,J,T):-t128(J,I,T),!.
lookTerrainNow(I,J,T):-t129(J,I,T),!.
lookTerrainNow(I,J,T):-t130(J,I,T),!.
lookTerrainNow(I,J,T):-t131(J,I,T),!.
lookTerrainNow(I,J,T):-t132(J,I,T),!.
lookTerrainNow(I,J,T):-t133(J,I,T),!.
lookTerrainNow(I,J,T):-t134(J,I,T),!.
lookTerrainNow(I,J,T):-t135(J,I,T),!.
lookTerrainNow(I,J,T):-t136(J,I,T),!.
lookTerrainNow(I,J,T):-t137(J,I,T),!.
lookTerrainNow(I,J,T):-t138(J,I,T),!.
lookTerrainNow(I,J,T):-t139(J,I,T),!.
lookTerrainNow(I,J,T):-t140(J,I,T),!.
lookTerrainNow(I,J,T):-t141(J,I,T),!.
lookTerrainNow(I,J,T):-t142(J,I,T),!.
lookTerrainNow(I,J,T):-t143(J,I,T),!.
lookTerrainNow(I,J,T):-t144(J,I,T),!.
lookTerrainNow(I,J,T):-t145(J,I,T),!.
lookTerrainNow(I,J,T):-t146(J,I,T),!.
lookTerrainNow(I,J,T):-t147(J,I,T),!.
lookTerrainNow(I,J,T):-t148(J,I,T),!.
lookTerrainNow(I,J,T):-t149(J,I,T),!.
lookTerrainNow(I,J,T):-t150(J,I,T),!.
lookTerrainNow(I,J,T):-t151(J,I,T),!.
lookTerrainNow(I,J,T):-t152(J,I,T),!.
lookTerrainNow(I,J,T):-t153(J,I,T),!.
lookTerrainNow(I,J,T):-t154(J,I,T),!.
lookTerrainNow(I,J,T):-t155(J,I,T),!.
lookTerrainNow(I,J,T):-t156(J,I,T),!.
lookTerrainNow(I,J,T):-t157(J,I,T),!.
lookTerrainNow(I,J,T):-t158(J,I,T),!.
lookTerrainNow(I,J,T):-t159(J,I,T),!.
lookTerrainNow(I,J,T):-t160(J,I,T),!.
lookTerrainNow(I,J,T):-t161(J,I,T),!.
lookTerrainNow(I,J,T):-t162(J,I,T),!.
lookTerrainNow(I,J,T):-t163(J,I,T),!.
lookTerrainNow(I,J,T):-t164(J,I,T),!.
lookTerrainNow(I,J,T):-t165(J,I,T),!.
lookTerrainNow(I,J,T):-t166(J,I,T),!.
lookTerrainNow(I,J,T):-t167(J,I,T),!.
lookTerrainNow(I,J,T):-t168(J,I,T),!.
lookTerrainNow(I,J,T):-t169(J,I,T),!.
lookTerrainNow(I,J,T):-t170(J,I,T),!.
lookTerrainNow(I,J,T):-t171(J,I,T),!.
lookTerrainNow(I,J,T):-t172(J,I,T),!.
lookTerrainNow(I,J,T):-t173(J,I,T),!.
lookTerrainNow(I,J,T):-t174(J,I,T),!.
lookTerrainNow(I,J,T):-t175(J,I,T),!.
lookTerrainNow(I,J,T):-t176(J,I,T),!.
lookTerrainNow(I,J,T):-t177(J,I,T),!.
lookTerrainNow(I,J,T):-t178(J,I,T),!.
lookTerrainNow(I,J,T):-t179(J,I,T),!.
lookTerrainNow(I,J,T):-t180(J,I,T),!.
lookTerrainNow(I,J,T):-t181(J,I,T),!.
lookTerrainNow(I,J,T):-t182(J,I,T),!.
lookTerrainNow(I,J,T):-t183(J,I,T),!.
lookTerrainNow(I,J,T):-t184(J,I,T),!.
lookTerrainNow(I,J,T):-t185(J,I,T),!.
lookTerrainNow(I,J,T):-t186(J,I,T),!.
lookTerrainNow(I,J,T):-t187(J,I,T),!.
lookTerrainNow(I,J,T):-t188(J,I,T),!.
lookTerrainNow(I,J,T):-t189(J,I,T),!.
lookTerrainNow(I,J,T):-t190(J,I,T),!.
lookTerrainNow(I,J,T):-t191(J,I,T),!.
lookTerrainNow(I,J,T):-t192(J,I,T),!.
lookTerrainNow(I,J,T):-t193(J,I,T),!.
lookTerrainNow(I,J,T):-t194(J,I,T),!.
lookTerrainNow(I,J,T):-t195(J,I,T),!.
lookTerrainNow(I,J,T):-t196(J,I,T),!.
lookTerrainNow(I,J,T):-t197(J,I,T),!.
lookTerrainNow(I,J,T):-t198(J,I,T),!.
lookTerrainNow(I,J,T):-t199(J,I,T),!.
lookTerrainNow(I,J,T):-t200(J,I,T),!.

unlucky :- random(1,4,X), X=:=1.

nonElement(_, []).
nonElement(X, [Y|Z]) :- dif(X, Y), nonElement(X,Z).

deletelst(_, [], []).
deletelst(Y, [X|W], Z)     :- member(X, Y), deletelst(Y, W, Z).
deletelst(Y, [X|W], [X|Z]) :- nonElement(X, Y), deletelst(Y, W, Z).

/********** TAKE, USE, AND DROP COMMANDS **********/
/*
del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]):- del(X,Tail,Tail1).

take(I) :- player(X,Y,S,Lp,H,T,W,L), length(L,5), !, write('Your inventory is full.').
take(I) :- player(X,Y,S,Lp,H,T,W,L), \+(length(L,5)), append([I],L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T,W,L1)),!,write('You just took a(n) '),write(I),write('.\n').

use(I) :- player(X,Y,S,Lp,H,T,W,L), \+(member(I,L)),!,write('You don\'t have '),write(I),write(' to use.\n').
use(food) :- player(X,Y,S,Lp,H,T,W,L), member(food,L), Lp=<85, Lp1 is Lp + 15, del(food,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),!,write('You successfully increased your energy by 15 points.\n').
use(drink) :- player(X,Y,S,Lp,H,T,W,L), member(drink,L), T=<85, T1 is T + 15, del(drink,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H,T1,W,L1)),!,write('You successfully increased your hydration by 15 points.\n').
use(medicine) :- player(X,Y,S,Lp,H,T,W,L), member(medicine,L), H=<85, H1 is H + 15, del(medicine,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp,H1,T,W,L1)),!,write('You successfully increased your health point by 15 points.\n').
use(bazooka) :- player(X,Y,S,Lp,H,T,W,L), member(bazooka,L),!,write('You now have a bazooka on your hand.\n').

drop(I) :- player(X,Y,S,Lp,H,T,W,L), \+(member(I,L)),!,write('You don\'t have '),write(I),write(' anyway. What do you want to drop?\n').
drop(I) :- player(X,Y,S,Lp,H,T,W,L), member(I,L), del(I,L,L1), retract(player(X,Y,S,Lp,H,T,W,L)), asserta(player(X,Y,S,Lp1,H,T,W,L1)),!,write('You just dropped a(n) '),write(I),write('.\n').*/