:- dynamic(usereduc/2).

start:-
  writeToFile,
  readFromFile,
  usereduc(C,D),
  writef(C),
  writef(D).

writeToFile:-
  writef('What is your Name'),nl,
  read(Name),
  writef('What is your country'),nl,
  read(Country),
  writef('What is your education'),nl,
  read(Education),
  setup_call_cleanup(
    open('output.txt',write,Out),
    (
      write_term(Out,usercountry(Name,Country), [fullstop(true)]),nl(Out),
      write_term(Out,usereduc(Name,Education), [fullstop(true)])
    ),
    close(Out)
  ).

readFromFile:-
  setup_call_cleanup(
    open('output.txt',read,In),
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