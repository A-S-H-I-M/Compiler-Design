%{
#include <stdio.h>
%}
%%
(a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z)* { printf("matched: %s\n", yytext); }
.|\n       { /* Ignore other inputs */ }
%%
int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
