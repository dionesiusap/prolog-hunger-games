/* saving to external file */
save(Fname) :- 
        e1(A,B,C,D), e2(E,F,G,H),
        e3(I,J,K,L), e4(M,N,O,P),
        e5(Q,R,S,T), e6(U,V,W,X),
        e7(Y,Z,AA,AB), e8(AC,AD,AE,AF),
        e9(AG,AH,AI,AJ), e10(AK,AL,AM,AN),
        player(AO,AP,AQ,AR,AS,AT,AU,AV,AW),
        setup_call_cleanup(
         open(Fname,write,Out),
          (
           
           write_term(Out, e1(A,B,C,D), [fullstop(true)]),nl(Out),
           write_term(Out, player(AO,AP,AQ,AR,AS,AT,AU,AV,AW),[fullstop(true)]),nl(Out),
           write_term(Out, e2(E,F,G,H), [fullstop(true)]),nl(Out),
           write_term(Out, e3(I,J,K,L), [fullstop(true)]),nl(Out),
           write_term(Out, e4(M,N,O,P), [fullstop(true)]),nl(Out),
           write_term(Out, e5(Q,R,S,T), [fullstop(true)]),nl(Out),
           write_term(Out, e6(U,V,W,X), [fullstop(true)]),nl(Out),
           write_term(Out, e7(Y,Z,AA,AB),[fullstop(true)]),nl(Out),
           write_term(Out, e8(AC,AD,AE,AF),[fullstop(true)]),nl(Out),
           write_term(Out, e9(AG,AH,AI,AJ),[fullstop(true)]),nl(Out),
           write_term(Out, e10(AK,AL,AM,AN),[fullstop(true)]),nl(Out)
           
          ),
         close(Out)
        ).

delEverything :-
        e1(A,B,C,D), e2(E,F,G,H),
        e3(I,J,K,L), e4(M,N,O,P),
        e5(Q,R,S,T), e6(U,V,W,X),
        e7(Y,Z,AA,AB), e8(AC,AD,AE,AF),
        e9(AG,AH,AI,AJ), e10(AK,AL,AM,AN),
        player(AO,AP,AQ,AR,AS,AT,AU,AV,AW),
        retract(e1(A,B,C,D)), retract(e2(E,F,G,H)),
        retract(e3(I,J,K,L)), retract(e4(M,N,O,P)),
        retract(e5(Q,R,S,T)), retract(e6(U,V,W,X)),
        retract(e7(Y,Z,AA,AB)), retract(e8(AC,AD,AE,AF)),
        retract(e9(AG,AH,AI,AJ)), retract(e10(AK,AL,AM,AN)),
        retract(player(AO,AP,AQ,AR,AS,AT,AU,AV,AW)).

/* baca file eksternal */
load(Fname) :-
        setup_call_cleanup(
         open(Fname,read,In),
          (
           repeat,
           read_term(In, X, []),
           readfactsFromfile(X),asserta(X), !
          ),
         close(In)
        ).

readfactsFromfile(end_of_file):- !.
readfactsFromfile(X):-
        asserta(X),!,
        fail.

/*read :- 
        open('enemy.txt',read,F),
        readEnemy(F,Enemy),
        close(F),
        write(Enemy), nl.

readEnemy(F,[]) :- at_end_of_stream(F), !.

readEnemy(F,[X|L]) :- 
        \+ at_end_of_stream(F), !,
        read(F,X),
        readEnemy(F,L).

writeEnemy :-
        open('enemy.txt',write,F),
        rand(F,1),
        close(F).

rand(F,11) :- !.
rand(F,X) :-
        write(F,'\n'),
        write(F,'enemy'),
        write(F,X),
        write(F,'.\n'),
        random(1,20,N),
        write(F,N),
        write(F,'.\n'),
        random(1,10,M),
        write(F,M),
        write(F,'.\n'),
        write(F,'alive.\n'),
        random(1,5,O),
        write(F,O),
        write(F,'.'),
        X1 is X+1,
        rand(F,X1).*/
