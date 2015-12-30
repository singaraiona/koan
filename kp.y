/*
* @Author: Anton Kundenko
* @Date:   2015-12-30 13:21:52
* @Last Modified by:   Anton Kundenko
* @Last Modified time: 2015-12-30 13:22:35
*/
%{
    #include <stdio.h>
    #include "kt.h"
    #include "k.h"
    I yylex();
    I yyerror(S);
%}

%token INT
%token CHR
%token SYM
%token SPC
%%

line:
    line expr '\n' {P("%d\n",$2);prompt();}
    |/*nothing*/
    ;
item:
    INT
    | SYM
    ;
list:
    item
    | list SPC item {$$=666;}
    ;
expr:
    list
    | list SPC {$$=$1;}
    | expr SPC {$$=$1;}
    | SPC expr {$$=$2;}
    | expr '+' expr {$$=plus($1,$3);}
    | expr '-' expr {$$=$1-$3;}
    | expr '*' expr {$$=$1*$3;}
    | expr '#' expr {yyerror("nyi");}
    ;
%%

I yyerror(S s){OL(s);R 1;}
I main(){title();yyparse();R 0;}
