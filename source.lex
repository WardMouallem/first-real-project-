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
/* Rules Section */
{digits}+			showToken("number");
{letter}+@{letter}+\.com		showToken("email address");
{whitespace}		;
.		printf("Lex doesn't know what this is !\n");
%%
some random change