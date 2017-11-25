/* baca file eksternal */
/*X,Y,status,atk,item*/
:-dynamic(e1/5).
:-dynamic(e2/5).
:-dynamic(e3/5).
:-dynamic(e4/5).
:-dynamic(e5/5).
:-dynamic(e6/5).
:-dynamic(e7/5).
:-dynamic(e8/5).
:-dynamic(e9/5).
:-dynamic(e10/5).



initEnemy:-
        random(1,21,X),random(1,11,Y),itemNum(2,O),random(5,15,Atk1),asserta(e1(4,4,'alive',Atk1,O)),
        random(1,21,X2),random(1,11,Y2),itemNum(2,O2),random(5,15,Atk2),asserta(e2(X2,Y2,'alive',Atk2,O2)),
        random(1,21,X3),random(1,11,Y3),itemNum(2,O3),random(5,15,Atk3),asserta(e3(X3,Y3,'alive',Atk3,O3)),
        random(1,21,X4),random(1,11,Y4),itemNum(1,O4),random(5,15,Atk4),asserta(e4(X4,Y4,'alive',Atk4,O4)),
        random(1,21,X5),random(1,11,Y5),itemNum(1,O5),random(5,15,Atk5),asserta(e5(X5,Y5,'alive',Atk5,O5)),
        random(1,21,X6),random(1,11,Y6),itemNum(1,O6),random(5,15,Atk6),asserta(e6(X6,Y6,'alive',Atk6,O6)),
        random(1,21,X7),random(1,11,Y7),itemNum(1,O7),random(5,15,Atk7),asserta(e7(X7,Y7,'alive',Atk7,O7)),
        random(1,21,X8),random(1,11,Y8),itemNum(4,O8),random(5,15,Atk8),asserta(e8(X8,Y8,'alive',Atk8,O8)),
        random(1,21,X9),random(1,11,Y9),itemNum(4,O9),random(5,15,Atk9),asserta(e9(X9,Y9,'alive',Atk9,O9)),
        random(1,21,X10),random(1,11,Y10),itemNum(3,O10),random(5,15,Atk10),asserta(e10(X10,Y10,'alive',Atk10,O10)).

/*Move AI*/
moveenemy:-e1(X1,Y1,'alive',Atk1,O1),movement(X1,Y1,XX1,YY1),retract(e1(X1,Y1,'alive',Atk1,O1)),asserta(e1(XX1,YY1,'alive',Atk1,O1)).
moveenemy:-e2(X2,Y2,'alive',Atk2,O2),movement(X2,Y2,XX2,YY2),retract(e2(X2,Y2,'alive',Atk2,O2)),asserta(e2(XX2,YY2,'alive',Atk2,O2)).
moveenemy:-e3(X3,Y3,'alive',Atk3,O3),movement(X3,Y3,XX3,YY3),retract(e3(X3,Y3,'alive',Atk3,O3)),asserta(e3(XX3,YY3,'alive',Atk3,O3)).
moveenemy:-e4(X4,Y4,'alive',Atk4,O4),movement(X4,Y4,XX4,YY4),retract(e4(X4,Y4,'alive',Atk4,O4)),asserta(e4(XX4,YY4,'alive',Atk4,O4)).
moveenemy:-e5(X5,Y5,'alive',Atk5,O5),movement(X5,Y5,XX5,YY5),retract(e5(X5,Y5,'alive',Atk5,O5)),asserta(e5(XX5,YY5,'alive',Atk5,O5)).
moveenemy:-e6(X6,Y6,'alive',Atk6,O6),movement(X6,Y6,XX6,YY6),retract(e6(X6,Y6,'alive',Atk6,O6)),asserta(e6(XX6,YY6,'alive',Atk6,O6)).
moveenemy:-e7(X7,Y7,'alive',Atk7,O7),movement(X7,Y7,XX7,YY7),retract(e7(X7,Y7,'alive',Atk7,O7)),asserta(e7(XX7,YY7,'alive',Atk7,O7)).
moveenemy:-e8(X8,Y8,'alive',Atk8,O8),movement(X8,Y8,XX8,YY8),retract(e8(X8,Y8,'alive',Atk8,O8)),asserta(e8(XX8,YY8,'alive',Atk8,O8)).
moveenemy:-e9(X9,Y9,'alive',Atk9,O9),movement(X9,Y9,XX9,YY9),retract(e9(X9,Y9,'alive',Atk9,O9)),asserta(e9(XX9,YY9,'alive',Atk9,O9)).
moveenemy:-e10(X10,Y10,'alive',Atk10,O10),movement(X10,Y10,XX10,YY10),retract(e10(X10,Y10,'alive',Atk10,O10)),asserta(e10(XX10,YY10,'alive',Atk10,O10)),!.


/*1 atas 2 kanan 3 bawah 4 kiri*/
movement(1,1,X1,Y1):-random(2,4,M),change_movement(1,1,X1,Y1,M),!.
movement(20,1,X1,Y1):-random(3,5,M),change_movement(20,1,X1,Y1,M),!.
movement(20,10,X1,Y1):-change_movement(20,10,X1,Y1,1),!.
movement(1,10,X1,Y1):-random(1,3,M),change_movement(1,10,X1,Y1,M),!.
movement(1,Y,X1,Y1):-random(1,4,M),change_movement(1,Y,X1,Y1,M),!.
movement(20,Y,X1,Y1):-random(1,5,M),M=\=2,!,change_movement(20,Y,X1,Y1,M).
movement(20,Y,X1,Y1):-random(1,5,M),M==2,M1=1,change_movement(20,Y,X1,Y1,M1),!.
movement(X,1,X1,Y1):-random(2,5,M),change_movement(X,1,X1,Y1,M),!.
movement(X,10,X1,Y1):-random(1,5,M),M=\=3,!,change_movement(X,10,X1,Y1,M),!.
movement(X,10,X1,Y1):-random(1,5,M),M==3,M1 =4,change_movement(X,10,X1,Y1,M1),!.
movement(X,Y,X1,Y1):-random(1,5,M),change_movement(X,Y,X1,Y1,M),!.

change_movement(X,Y,X,Y1,1):-Y1 is Y - 1.
change_movement(X,Y,X1,Y,2):-X1 is X + 1.
change_movement(X,Y,X,Y1,3):-Y1 is Y + 1.
change_movement(X,Y,X1,Y,4):-X1 is X - 1.

itemNum(1,O):-O = 'food'.
itemNum(2,O):-O = 'water'.
itemNum(3,O):-O = 'radar'.
itemNum(4,O):-O = 'medicine'.


