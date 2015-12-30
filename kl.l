/*
* @Author: Anton Kundenko
* @Date:   2015-12-30 13:21:52
* @Last Modified by:   Anton Kundenko
* @Last Modified time: 2015-12-30 13:22:35
*/
%{
    #include "y.tab.h"
    #include "kt.h"
    #include <stdlib.h>
    void yyerror(char *);
%}
%%

[0-9]+ {yylval=atoi(yytext);R INT;}
\`[a-zA-Z]+[^ ]* {R SYM;}
[+\-\*\%\!\&\|<>=~,\^#_\$\@\.?\n] {R *yytext;}
[ ] {R SPC;}

%%

I yywrap() {R 1;}
