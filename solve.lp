%Run with clingo
color(C) :- cell(A,B,C).
1 { queen(A,B) : cell(A,B,C) } 1 :- color(C).

:- queen(A,B), queen(A,C), B!=C.
:- queen(A,B), queen(C,B), A!=C.
:- queen(A,B), queen(C,D), A!=C, diag(A,B,C,D).
:- queen(A,B), queen(C,D), A!=C, antidiag(A,B,C,D).
diag(A,B,A+1,B+1) :- cell(A,B,_).
antidiag(A,B+1,A+1,B) :- cell(A,B,_).
%diag(A,B,C,D) :- cell(A,B,_),cell(C,D,_),A+D=C+B.
%antidiag(A,B,C,D) :- cell(A,B,_),cell(C,D,_),A+B=C+D.
%:- queen(A,B), queen(C,D), A!=C, diag(A,B,C,D).
%:- queen(A,B), queen(C,D), A!=C, antidiag(A,B,C,D).

%diag(A,B,A+1,B+1) :- cell(A,B,C).
%diag(A,B,C,D) :- diag(C,D,A,B).
%diag(A,B,C,D) :- diag(A,B,E,F),diag(C,D,E,F).
%
%antidiag(A,B+1,A+1,B) :- cell(A,B,C).
%antidiag(A,B,C,D) :- antidiag(C,D,A,B).
%antidiag(A,B,C,D) :- antidiag(A,B,E,F),antidiag(C,D,E,F).

#show.
#show queen/2.
%#maximize {1,A,B : queen(A,B)}.
