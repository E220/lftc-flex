%{
    #include <stdio.h>
    int lineNr = 0;
%}



%%

"let"  printf("reserved: %s\n", yytext);
"be"  printf("reserved: %s\n", yytext);
"a"  printf("reserved: %s\n", yytext);
"string"  printf("reserved: %s\n", yytext);
"strings"  printf("reserved: %s\n", yytext);
"number"  printf("reserved: %s\n", yytext);
"numbers"  printf("reserved: %s\n", yytext);
"vector"  printf("reserved: %s\n", yytext);
"vectors"  printf("reserved: %s\n", yytext);
"length"  printf("reserved: %s\n", yytext);
"of"  printf("reserved: %s\n", yytext);
"if"  printf("reserved: %s\n", yytext);
"then"  printf("reserved: %s\n", yytext);
"else"  printf("reserved: %s\n", yytext);
"while"  printf("reserved: %s\n", yytext);
"do"  printf("reserved: %s\n", yytext);
"for"  printf("reserved: %s\n", yytext);
"from"  printf("reserved: %s\n", yytext);
"up"  printf("reserved: %s\n", yytext);
"down"  printf("reserved: %s\n", yytext);
"to"  printf("reserved: %s\n", yytext);
"read"  printf("reserved: %s\n", yytext);
"write"  printf("reserved: %s\n", yytext);
"and"  printf("reserved: %s\n", yytext);
"or"  printf("reserved: %s\n", yytext);

"+"  printf("operator: %s\n", yytext);
"-"  printf("operator: %s\n", yytext);
"/"  printf("operator: %s\n", yytext);
"*"  printf("operator: %s\n", yytext);
"<"  printf("operator: %s\n", yytext);
"<="  printf("operator: %s\n", yytext);
"="  printf("operator: %s\n", yytext);
"!="  printf("operator: %s\n", yytext);
">="  printf("operator: %s\n", yytext);
">"  printf("operator: %s\n", yytext);

"("  printf("separator: %s\n", yytext);
")"  printf("separator: %s\n", yytext);
"["  printf("separator: %s\n", yytext);
"]"  printf("separator: %s\n", yytext);
"{"  printf("separator: %s\n", yytext);
"}"  printf("separator: %s\n", yytext);
"."  printf("separator: %s\n", yytext);
","  printf("separator: %s\n", yytext);

[a-zA-Z][a-zA-Z0-9]* printf("identifier: %s\n", yytext);
\".*\" printf("string const: %s\n", yytext);
([+-]?([1-9][0-9]*)(\.[0-9]*[1-9])?|[+-]?0\.[0-9]*[1-9]|0) printf("number const: %s\n", yytext);

" " {}
\n { lineNr++; printf("\n"); }

. printf("error at line: %d\n", lineNr);

%%

int yywrap(){}
int main(int argc, char **argv)
{
    yylex();
}