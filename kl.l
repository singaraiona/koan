%{
    #include "y.tab.h"
    #include "kt.h"
    #include <stdlib.h>
    void yyerror(char *);
%}
%%

[0-9]+ {yylval=atoi(yytext);R INT;}
[a-zA-Z]+ {R CHR;}
[+\-\*\%\!\&\|<>=~,\^#_\$\@\.\ ?\n] {return *yytext;}

. yyerror("parse");
%%

I yywrap() {R 1;}
