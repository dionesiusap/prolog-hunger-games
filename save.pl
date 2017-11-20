/* saving to external file */
saveGame(Fname) :- 
        e1(A,B,C,D,A1), e2(E,F,G,H,A2),
        e3(I,J,K,L,A3), e4(M,N,O,P,A4),
        e5(Q,R,S,T,A5), e6(U,V,W,X,A6),
        e7(Y,Z,AA,AB,A7), e8(AC,AD,AE,AF,A8),
        e9(AG,AH,AI,AJ,A9), e10(AK,AL,AM,AN,A10),
        player(AO,AP,AQ,AR,AS,AT,AU,LI),
        item1(B1,B2,B3,B4),
        item2(B5,B6,B7,B8),
        item3(B9,B10,B11,B12),
        item4(B13,B14,B15,B16),
        item5(B17,B18,B19,B20),
        item6(B21,B22,B23,B24),
        item7(B25,B26,B27,B28),
        item8(B29,B30,B31,B32),
        item9(B33,B34,B35,B36),
        item10(B37,B38,B39,B40),
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
                write(Out, item1(B1,B2,B3,B4)), write(Out,'.'), nl(Out),
                write(Out, item2(B5,B6,B7,B8)), write(Out,'.'), nl(Out),
                write(Out, item3(B9,B10,B11,B12)), write(Out,'.'), nl(Out),
                write(Out, item4(B13,B14,B15,B16)), write(Out,'.'), nl(Out),
                write(Out, item5(B17,B18,B19,B20)), write(Out,'.'), nl(Out),
                write(Out, item6(B21,B22,B23,B24)), write(Out,'.'), nl(Out),
                write(Out, item7(B25,B26,B27,B28)), write(Out,'.'), nl(Out),
                write(Out, item8(B29,B30,B31,B32)), write(Out,'.'), nl(Out),
                write(Out, item9(B33,B34,B35,B36)), write(Out,'.'), nl(Out),
                write(Out, item10(B37,B38,B39,B40)), write(Out,'.'), nl(Out),
         close(Out).

delEverything :-
        e1(A,B,C,D,A1), e2(E,F,G,H,A2),
        e3(I,J,K,L,A3), e4(M,N,O,P,A4),
        e5(Q,R,S,T,A5), e6(U,V,W,X,A6),
        e7(Y,Z,AA,AB,A7), e8(AC,AD,AE,AF,A8),
        e9(AG,AH,AI,AJ,A9), e10(AK,AL,AM,AN,A10),
        player(AO,AP,AQ,AR,AS,AT,AU,LI),
        item1(B1,B2,B3,B4),
        item2(B5,B6,B7,B8),
        item3(B9,B10,B11,B12),
        item4(B13,B14,B15,B16),
        item5(B17,B18,B19,B20),
        item6(B21,B22,B23,B24),
        item7(B25,B26,B27,B28),
        item8(B29,B30,B31,B32),
        item9(B33,B34,B35,B36),
        item10(B37,B38,B39,B40),
        retract(e1(A,B,C,D,A1)), retract(e2(E,F,G,H,A2)),
        retract(e3(I,J,K,L,A3)), retract(e4(M,N,O,P,A4)),
        retract(e5(Q,R,S,T,A5)), retract(e6(U,V,W,X,A6)),
        retract(e7(Y,Z,AA,AB,A7)), retract(e8(AC,AD,AE,AF,A8)),
        retract(e9(AG,AH,AI,AJ,A9)), retract(e10(AK,AL,AM,AN,A10)),
        retract(player(AO,AP,AQ,AR,AS,AT,AU,LI)),
        retract(item1(B1,B2,B3,B4)),
        retract(item2(B5,B6,B7,B8)),
        retract(item3(B9,B10,B11,B12)),
        retract(item4(B13,B14,B15,B16)),
        retract(item5(B17,B18,B19,B20)),
        retract(item6(B21,B22,B23,B24)),
        retract(item7(B25,B26,B27,B28)),
        retract(item8(B29,B30,B31,B32)),
        retract(item9(B33,B34,B35,B36)),
        retract(item10(B37,B38,B39,B40)).

/* baca file eksternal */
loadGame(Fname) :-
        delEverything,
        consult(Fname).

readFile(In):-
        repeat,
        read(In, X),
        readfactsFromfile(X),asserta(X), !.

readfactsFromfile(end_of_file):- !.
readfactsFromfile(X):-
        asserta(X),!,fail.
