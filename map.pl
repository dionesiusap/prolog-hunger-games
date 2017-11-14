map:-write('######################\n'),writeRow(10,20),write('######################').

writeRow(0,J):-!.
writeRow(I,J):-write('#'),writeCol(I,20).

writeCol(I,0):-I1 is I-1,write('#'),write('\n'),writeRow(I1,20).
writeCol(I,J):-elmt(J,I),J1 is J-1,writeCol(I,J1).

elmt(I,J):-player(I,J,'alive',_,_,_,_,_,_),write('P'),!.
elmt(I,J):-e1(I,J,'alive',_),write('E'),!.
elmt(I,J):-e2(I,J,'alive',_),write('E'),!.
elmt(I,J):-e3(I,J,'alive',_),write('E'),!.
elmt(I,J):-e4(I,J,'alive',_),write('E'),!.
elmt(I,J):-e5(I,J,'alive',_),write('E'),!.
elmt(I,J):-e6(I,J,'alive',_),write('E'),!.
elmt(I,J):-e7(I,J,'alive',_),write('E'),!.
elmt(I,J):-e8(I,J,'alive',_),write('E'),!.
elmt(I,J):-e9(I,J,'alive',_),write('E'),!.
elmt(I,J):-e10(I,J,'alive',_),write('E'),!.
elmt(I,J):-write(' ').