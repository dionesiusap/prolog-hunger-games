map:-writeRow(0,0).

tembok(21,X):- X>=0, X =<11.
tembok(Y,11):- Y>=0, Y =<21.
tembok(0,X):- X>=0, X =<11.
tembok(Y,0):- Y>=0, Y =<21.

writeRow(12,J):-!.
writeRow(I,J):-writeCol(I,0).

writeCol(I,22):-I1 is I+1,write('\n'),writeRow(I1,0).
writeCol(I,J):-elmt(J,I),J1 is J+1,writeCol(I,J1).

elmt(I,J):-tembok(I,J),write('#').
elmt(I,J):-e1(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e2(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e3(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e4(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e5(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e6(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e7(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e8(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e9(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-e10(I,J,'alive',_,_),write('E'),!.
elmt(I,J):-player(I,J,'alive',_,_,_,_,_,_),write('P'),!.
elmt(I,J):-write(' ').