/*seccion de definiciones*/
DIGITO [0-9]
NUMERO [+-]?{DIGITO}+
REAL [+-]?{DIGITO}+[,.]?{DIGITO}+
CARACTER [a-zA-Z_]
%{

%}
/*seccion de reglas*/
%%

{NUMERO}        {printf("Expresion reconocida, tipo de variable int\n");}
{REAL}          {printf("Expresion reconocida, tipo de variable float\n");}
{CARACTER}      {printf("Expresion reconocida, tipo de variable char\n");}
.       {printf("No se reconoce\n");}
%%
/*seccion de codigo de usuario*/
int yywrap(){}

int main(){
    printf("Ingrese la cadena a evaluar\n");
    yylex();
    return 0;
}