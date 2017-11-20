/* saving to external file */
saveGame(Fname) :- 
        e1(A,B,C,D,A1), e2(E,F,G,H,A2),
        e3(I,J,K,L,A3), e4(M,N,O,P,A4),
        e5(Q,R,S,T,A5), e6(U,V,W,X,A6),
        e7(Y,Z,AA,AB,A7), e8(AC,AD,AE,AF,A8),
        e9(AG,AH,AI,AJ,A9), e10(AK,AL,AM,AN,A10),
        player(AO,AP,AQ,AR,AS,AT,AU,LI),
         open(Fname,write,Out),
                write(Out, e1(A,B,C,D,A1)), write(Out,'.'),nl(Out),
                write(Out, e2(E,F,G,H,A2)), write(Out,'.'),nl(Out),
                write(Out, e3(I,J,K,L,A3)), write(Out,'.'),nl(Out),
                write(Out, e4(M,N,O,P,A4)), write(Out,'.'),nl(Out),
                write(Out, e5(Q,R,S,T,A5)), write(Out,'.'),nl(Out),
                write(Out, e6(U,V,W,X,A6)), write(Out,'.'),nl(Out),
                write(Out, e7(Y,Z,AA,AB,A7)), write(Out,'.'),nl(Out),
                write(Out, e8(AC,AD,AE,AF,A8)), write(Out,'.'),nl(Out),
                write(Out, e9(AG,AH,AI,AJ,A9)), write(Out,'.'),nl(Out),
                write(Out, e10(AK,AL,AM,AN,A10)), write(Out,'.'),nl(Out),
                write(Out, player(AO,AP,AQ,AR,AS,AT,AU,LI)), write(Out,'.'),nl(Out),
         close(Out).

delEverything :-
        e1(A,B,C,D,A1), e2(E,F,G,H,A2),
        e3(I,J,K,L,A3), e4(M,N,O,P,A4),
        e5(Q,R,S,T,A5), e6(U,V,W,X,A6),
        e7(Y,Z,AA,AB,A7), e8(AC,AD,AE,AF,A8),
        e9(AG,AH,AI,AJ,A9), e10(AK,AL,AM,AN,A10),
        player(AO,AP,AQ,AR,AS,AT,AU,L),
        retract(e1(A,B,C,D,A1)), retract(e2(E,F,G,H,A2)),
        retract(e3(I,J,K,L,A3)), retract(e4(M,N,O,P,A4)),
        retract(e5(Q,R,S,T,A5)), retract(e6(U,V,W,X,A6)),
        retract(e7(Y,Z,AA,AB,A7)), retract(e8(AC,AD,AE,AF,A8)),
        retract(e9(AG,AH,AI,AJ,A9)), retract(e10(AK,AL,AM,AN,A10)),
        retract(player(AO,AP,AQ,AR,AS,AT,AU,L)).

/* baca file eksternal */
loadGame(Fname) :-
        delEverything,
        open(Fname,read,In),
        readFile(In),
        close(In).

readFile(In):-
        repeat,
        read(In, X),
        readfactsFromfile(X),asserta(X), !.

readfactsFromfile(end_of_file):- !.
readfactsFromfile(X):-
        asserta(X),!,
        fail.
