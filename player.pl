/* baca file eksternal */
/*(X,Y,status,LifePoint,Hungry,Thirst,Weapon,ItemList)*/


:-dynamic(player/8).

initPlayer:-random(1,21,X),random(1,11,Y),look_pos(X,Y),!,initPlayer.
initPlayer:-random(1,21,X),random(1,11,Y),asserta(player(X,Y,'alive',100,100,100,0,[])).

n:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==1,Y1 is Y - 1,look_pos(X,Y1),!,write('cant move there\n'),moveenemy.
n:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==1,Y1 is Y - 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X,Y1,S,Lp,H1,T1,W,L)),lookTerrain(X,Y1),moveenemy,!,lookNow(X,Y1).
e:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==20,X1 is X + 1,look_pos(X1,Y),!,write('cant move there\n'),moveenemy.
e:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==20,X1 is X + 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X1,Y,S,Lp,H1,T1,W,L)),lookTerrain(X1,Y),moveenemy,!,lookNow(X1,Y).
s:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==10,Y1 is Y + 1,look_pos(X,Y1),!,write('cant move there\n'),moveenemy.
s:-player(X,Y,S,Lp,H,T,W,L),\+dead,Y\==10,Y1 is Y + 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X,Y1,S,Lp,H1,T1,W,L)),lookTerrain(X,Y1),moveenemy,!,lookNow(X,Y1).
w:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==1,X1 is X - 1,look_pos(X1,Y),!,write('cant move there\n'),moveenemy.
w:-player(X,Y,S,Lp,H,T,W,L),\+dead,X\==1,X1 is X - 1,retract(player(X,Y,S,Lp,H,T,W,L)),H1 is H-2,T1 is T-1,asserta(player(X1,Y,S,Lp,H1,T1,W,L)),lookTerrain(X1,Y),moveenemy,!,lookNow(X1,Y).

sleep:-player(X,Y,S,Lp,H,T,W,L),lookTerrainNow(X,Y),!,retract(player(X,Y,S,Lp,H,T,W,L)),F is Lp+10, asserta(player(X,Y,S,F,H,T,W,L)),write('You fill your enery bar again'),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.
sleep:-player(X,Y,S,Lp,H,T,W,L),\+lookTerrainNow(X,Y),!,retract(player(X,Y,S,Lp,H,T,W,L)),F is Lp-20, asserta(player(X,Y,S,F,H,T,W,L)),write('you try to sleep outside...... you hit by rabbit your health drop by 20 '),moveenemy,moveenemy,moveenemy,moveenemy,moveenemy.

dead:-player(_,_,_,Lp,H,T,_,_),Lp=:=0,write('You are dead'),halt.
dead:-player(_,_,_,Lp,H,T,_,_),H=:=0,write('You are dead'),halt.
dead:-player(_,_,_,Lp,H,T,_,_),T=:=0,write('You are dead'),halt.

look:-player(X,Y,S,Lp,H,T,W,L),writeItem(X,Y).

status:-player(X,Y,S,Lp,H,T,W,L),
    write('Health: '),write(Lp),write('\n'),
    write('Hungry: '),write(H),write('\n'),
    write('Thirst: '),write(T),write('\n'),
    write('Weapon: '),writeWeapon(W),write('\n'),
    write('Inventory: '),write('\n'),writeInventory(L),write('\n').

writeWeapon(1):-write('bazooka').
writeWeapon(0):-write('bare Hands').

writeInventory([]):-write('\n').
writeInventory([H|T]):-write(H),write('\n'),writeInventory(T).

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
look_elmt(I,J):-itemE1(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-itemE2(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-itemE3(I,J,'available','water'),write('W'),!.
look_elmt(I,J):-itemE4(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-itemE5(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-itemE6(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-itemE7(I,J,'available','food'),write('F'),!.
look_elmt(I,J):-itemE8(I,J,'available','medecine'),write('M'),!.
look_elmt(I,J):-itemE9(I,J,'available','medecine'),write('M'),!.
look_elmt(I,J):-itemE10(I,J,'available','radar'),write('R'),!.
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



lookTerrainNow(I,J):-t1(J,I,2),!.
lookTerrainNow(I,J):-t2(J,I,2),!.
lookTerrainNow(I,J):-t3(J,I,2),!.
lookTerrainNow(I,J):-t4(J,I,2),!.
lookTerrainNow(I,J):-t5(J,I,2),!.
lookTerrainNow(I,J):-t6(J,I,2),!.
lookTerrainNow(I,J):-t7(J,I,2),!.
lookTerrainNow(I,J):-t8(J,I,2),!.
lookTerrainNow(I,J):-t9(J,I,2),!.
lookTerrainNow(I,J):-t10(J,I,2),!.
lookTerrainNow(I,J):-t11(J,I,2),!.
lookTerrainNow(I,J):-t12(J,I,2),!.
lookTerrainNow(I,J):-t13(J,I,2),!.
lookTerrainNow(I,J):-t14(J,I,2),!.
lookTerrainNow(I,J):-t15(J,I,2),!.
lookTerrainNow(I,J):-t16(J,I,2),!.
lookTerrainNow(I,J):-t17(J,I,2),!.
lookTerrainNow(I,J):-t18(J,I,2),!.
lookTerrainNow(I,J):-t19(J,I,2),!.
lookTerrainNow(I,J):-t20(J,I,2),!.
lookTerrainNow(I,J):-t21(J,I,2),!.
lookTerrainNow(I,J):-t22(J,I,2),!.
lookTerrainNow(I,J):-t23(J,I,2),!.
lookTerrainNow(I,J):-t24(J,I,2),!.
lookTerrainNow(I,J):-t25(J,I,2),!.
lookTerrainNow(I,J):-t26(J,I,2),!.
lookTerrainNow(I,J):-t27(J,I,2),!.
lookTerrainNow(I,J):-t28(J,I,2),!.
lookTerrainNow(I,J):-t29(J,I,2),!.
lookTerrainNow(I,J):-t30(J,I,2),!.
lookTerrainNow(I,J):-t31(J,I,2),!.
lookTerrainNow(I,J):-t32(J,I,2),!.
lookTerrainNow(I,J):-t33(J,I,2),!.
lookTerrainNow(I,J):-t34(J,I,2),!.
lookTerrainNow(I,J):-t35(J,I,2),!.
lookTerrainNow(I,J):-t36(J,I,2),!.
lookTerrainNow(I,J):-t37(J,I,2),!.
lookTerrainNow(I,J):-t38(J,I,2),!.
lookTerrainNow(I,J):-t39(J,I,2),!.
lookTerrainNow(I,J):-t40(J,I,2),!.
lookTerrainNow(I,J):-t41(J,I,2),!.
lookTerrainNow(I,J):-t42(J,I,2),!.
lookTerrainNow(I,J):-t43(J,I,2),!.
lookTerrainNow(I,J):-t44(J,I,2),!.
lookTerrainNow(I,J):-t45(J,I,2),!.
lookTerrainNow(I,J):-t46(J,I,2),!.
lookTerrainNow(I,J):-t47(J,I,2),!.
lookTerrainNow(I,J):-t48(J,I,2),!.
lookTerrainNow(I,J):-t49(J,I,2),!.
lookTerrainNow(I,J):-t50(J,I,2),!.
lookTerrainNow(I,J):-t51(J,I,2),!.
lookTerrainNow(I,J):-t52(J,I,2),!.
lookTerrainNow(I,J):-t53(J,I,2),!.
lookTerrainNow(I,J):-t54(J,I,2),!.
lookTerrainNow(I,J):-t55(J,I,2),!.
lookTerrainNow(I,J):-t56(J,I,2),!.
lookTerrainNow(I,J):-t57(J,I,2),!.
lookTerrainNow(I,J):-t58(J,I,2),!.
lookTerrainNow(I,J):-t59(J,I,2),!.
lookTerrainNow(I,J):-t60(J,I,2),!.
lookTerrainNow(I,J):-t61(J,I,2),!.
lookTerrainNow(I,J):-t62(J,I,2),!.
lookTerrainNow(I,J):-t63(J,I,2),!.
lookTerrainNow(I,J):-t64(J,I,2),!.
lookTerrainNow(I,J):-t65(J,I,2),!.
lookTerrainNow(I,J):-t66(J,I,2),!.
lookTerrainNow(I,J):-t67(J,I,2),!.
lookTerrainNow(I,J):-t68(J,I,2),!.
lookTerrainNow(I,J):-t69(J,I,2),!.
lookTerrainNow(I,J):-t70(J,I,2),!.
lookTerrainNow(I,J):-t71(J,I,2),!.
lookTerrainNow(I,J):-t72(J,I,2),!.
lookTerrainNow(I,J):-t73(J,I,2),!.
lookTerrainNow(I,J):-t74(J,I,2),!.
lookTerrainNow(I,J):-t75(J,I,2),!.
lookTerrainNow(I,J):-t76(J,I,2),!.
lookTerrainNow(I,J):-t77(J,I,2),!.
lookTerrainNow(I,J):-t78(J,I,2),!.
lookTerrainNow(I,J):-t79(J,I,2),!.
lookTerrainNow(I,J):-t80(J,I,2),!.
lookTerrainNow(I,J):-t81(J,I,2),!.
lookTerrainNow(I,J):-t82(J,I,2),!.
lookTerrainNow(I,J):-t83(J,I,2),!.
lookTerrainNow(I,J):-t84(J,I,2),!.
lookTerrainNow(I,J):-t85(J,I,2),!.
lookTerrainNow(I,J):-t86(J,I,2),!.
lookTerrainNow(I,J):-t87(J,I,2),!.
lookTerrainNow(I,J):-t88(J,I,2),!.
lookTerrainNow(I,J):-t89(J,I,2),!.
lookTerrainNow(I,J):-t90(J,I,2),!.
lookTerrainNow(I,J):-t91(J,I,2),!.
lookTerrainNow(I,J):-t92(J,I,2),!.
lookTerrainNow(I,J):-t93(J,I,2),!.
lookTerrainNow(I,J):-t94(J,I,2),!.
lookTerrainNow(I,J):-t95(J,I,2),!.
lookTerrainNow(I,J):-t96(J,I,2),!.
lookTerrainNow(I,J):-t97(J,I,2),!.
lookTerrainNow(I,J):-t98(J,I,2),!.
lookTerrainNow(I,J):-t99(J,I,2),!.
lookTerrainNow(I,J):-t100(J,I,2),!.
lookTerrainNow(I,J):-t101(J,I,2),!.
lookTerrainNow(I,J):-t102(J,I,2),!.
lookTerrainNow(I,J):-t103(J,I,2),!.
lookTerrainNow(I,J):-t104(J,I,2),!.
lookTerrainNow(I,J):-t105(J,I,2),!.
lookTerrainNow(I,J):-t106(J,I,2),!.
lookTerrainNow(I,J):-t107(J,I,2),!.
lookTerrainNow(I,J):-t108(J,I,2),!.
lookTerrainNow(I,J):-t109(J,I,2),!.
lookTerrainNow(I,J):-t110(J,I,2),!.
lookTerrainNow(I,J):-t111(J,I,2),!.
lookTerrainNow(I,J):-t112(J,I,2),!.
lookTerrainNow(I,J):-t113(J,I,2),!.
lookTerrainNow(I,J):-t114(J,I,2),!.
lookTerrainNow(I,J):-t115(J,I,2),!.
lookTerrainNow(I,J):-t116(J,I,2),!.
lookTerrainNow(I,J):-t117(J,I,2),!.
lookTerrainNow(I,J):-t118(J,I,2),!.
lookTerrainNow(I,J):-t119(J,I,2),!.
lookTerrainNow(I,J):-t120(J,I,2),!.
lookTerrainNow(I,J):-t121(J,I,2),!.
lookTerrainNow(I,J):-t122(J,I,2),!.
lookTerrainNow(I,J):-t123(J,I,2),!.
lookTerrainNow(I,J):-t124(J,I,2),!.
lookTerrainNow(I,J):-t125(J,I,2),!.
lookTerrainNow(I,J):-t126(J,I,2),!.
lookTerrainNow(I,J):-t127(J,I,2),!.
lookTerrainNow(I,J):-t128(J,I,2),!.
lookTerrainNow(I,J):-t129(J,I,2),!.
lookTerrainNow(I,J):-t130(J,I,2),!.
lookTerrainNow(I,J):-t131(J,I,2),!.
lookTerrainNow(I,J):-t132(J,I,2),!.
lookTerrainNow(I,J):-t133(J,I,2),!.
lookTerrainNow(I,J):-t134(J,I,2),!.
lookTerrainNow(I,J):-t135(J,I,2),!.
lookTerrainNow(I,J):-t136(J,I,2),!.
lookTerrainNow(I,J):-t137(J,I,2),!.
lookTerrainNow(I,J):-t138(J,I,2),!.
lookTerrainNow(I,J):-t139(J,I,2),!.
lookTerrainNow(I,J):-t140(J,I,2),!.
lookTerrainNow(I,J):-t141(J,I,2),!.
lookTerrainNow(I,J):-t142(J,I,2),!.
lookTerrainNow(I,J):-t143(J,I,2),!.
lookTerrainNow(I,J):-t144(J,I,2),!.
lookTerrainNow(I,J):-t145(J,I,2),!.
lookTerrainNow(I,J):-t146(J,I,2),!.
lookTerrainNow(I,J):-t147(J,I,2),!.
lookTerrainNow(I,J):-t148(J,I,2),!.
lookTerrainNow(I,J):-t149(J,I,2),!.
lookTerrainNow(I,J):-t150(J,I,2),!.
lookTerrainNow(I,J):-t151(J,I,2),!.
lookTerrainNow(I,J):-t152(J,I,2),!.
lookTerrainNow(I,J):-t153(J,I,2),!.
lookTerrainNow(I,J):-t154(J,I,2),!.
lookTerrainNow(I,J):-t155(J,I,2),!.
lookTerrainNow(I,J):-t156(J,I,2),!.
lookTerrainNow(I,J):-t157(J,I,2),!.
lookTerrainNow(I,J):-t158(J,I,2),!.
lookTerrainNow(I,J):-t159(J,I,2),!.
lookTerrainNow(I,J):-t160(J,I,2),!.
lookTerrainNow(I,J):-t161(J,I,2),!.
lookTerrainNow(I,J):-t162(J,I,2),!.
lookTerrainNow(I,J):-t163(J,I,2),!.
lookTerrainNow(I,J):-t164(J,I,2),!.
lookTerrainNow(I,J):-t165(J,I,2),!.
lookTerrainNow(I,J):-t166(J,I,2),!.
lookTerrainNow(I,J):-t167(J,I,2),!.
lookTerrainNow(I,J):-t168(J,I,2),!.
lookTerrainNow(I,J):-t169(J,I,2),!.
lookTerrainNow(I,J):-t170(J,I,2),!.
lookTerrainNow(I,J):-t171(J,I,2),!.
lookTerrainNow(I,J):-t172(J,I,2),!.
lookTerrainNow(I,J):-t173(J,I,2),!.
lookTerrainNow(I,J):-t174(J,I,2),!.
lookTerrainNow(I,J):-t175(J,I,2),!.
lookTerrainNow(I,J):-t176(J,I,2),!.
lookTerrainNow(I,J):-t177(J,I,2),!.
lookTerrainNow(I,J):-t178(J,I,2),!.
lookTerrainNow(I,J):-t179(J,I,2),!.
lookTerrainNow(I,J):-t180(J,I,2),!.
lookTerrainNow(I,J):-t181(J,I,2),!.
lookTerrainNow(I,J):-t182(J,I,2),!.
lookTerrainNow(I,J):-t183(J,I,2),!.
lookTerrainNow(I,J):-t184(J,I,2),!.
lookTerrainNow(I,J):-t185(J,I,2),!.
lookTerrainNow(I,J):-t186(J,I,2),!.
lookTerrainNow(I,J):-t187(J,I,2),!.
lookTerrainNow(I,J):-t188(J,I,2),!.
lookTerrainNow(I,J):-t189(J,I,2),!.
lookTerrainNow(I,J):-t190(J,I,2),!.
lookTerrainNow(I,J):-t191(J,I,2),!.
lookTerrainNow(I,J):-t192(J,I,2),!.
lookTerrainNow(I,J):-t193(J,I,2),!.
lookTerrainNow(I,J):-t194(J,I,2),!.
lookTerrainNow(I,J):-t195(J,I,2),!.
lookTerrainNow(I,J):-t196(J,I,2),!.
lookTerrainNow(I,J):-t197(J,I,2),!.
lookTerrainNow(I,J):-t198(J,I,2),!.
lookTerrainNow(I,J):-t199(J,I,2),!.
lookTerrainNow(I,J):-t200(J,I,2),!.



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