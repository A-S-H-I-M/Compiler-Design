%{
    #include<stdio.h>
%}
%%
(a|b)*a{printf("matched:%s\n",yytext);}
.|\n{/*Ignore other inputs*/}
%%
int main(){
    yylex();
    return 0;
}
int yywrapp(){
    return 1;
}
