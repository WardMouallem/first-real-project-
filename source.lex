%{
/* declarations section */
#include <stdio.h>
void showToken (char*);
%}
%option yylineno
%option noyywrap
digit			([0-9])
letter			([a-zA-Z])
whitespace		([\t\n ])

%%