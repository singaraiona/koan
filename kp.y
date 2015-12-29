%{
    #include <stdio.h>
    #include "kt.h"
    I yylex();
    I yyerror(S);
    I plus(I x,I y);
%}

%token INT
%token CHR
%%

line:
    line expr '\n' {P("%d\n",$2);}
    |/*nothing*/
    ;
item:
    INT
    | CHR
    ;
list:
    item
    | list ' ' item {$$=666;}
    ;
expr:
    list {$$=$0;}
    | expr '+' expr {$$=plus($1,$3);}
    | expr '-' expr {$$=$1-$3;}
    | expr '*' expr {$$=$1*$3;}
    | expr '#' expr {yyerror("nyi");}
    ;
%%

I plus(I x,I y){R x+y;}
I minus(I x,I y){R x-y;}

I yyerror(S s){OL(s);R 1;}
I main(){yyparse();R 0;}