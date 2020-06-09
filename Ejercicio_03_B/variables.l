/*seccion de definiciones*/
DIGITO [0-9]
NUMERO [+-]?{DIGITO}+
REAL [+-]?{DIGITO}+[,.]?{DIGITO}+
CARACTER [a-zA-Z0-9_]
NOMBRE [a-zA-Z_][a-zA-Z0-9_]*
%{

%}
/*seccion de reglas*/
%%

int[ ]+{NOMBRE}[ ]*=[ ]*{NUMERO}[ ]*;       |{printf("Expresion reconocida, tipo de variable int\n");}
float[ ]+{NOMBRE}[ ]*=[ ]*{REAL}[ ]*;       {printf("Expresion reconocida, tipo de variable float\n");}
char[ ]+{NOMBRE}[ ]*=[ ]*[\']{CARACTER}[\'][ ]*;    {printf("Expresion reconocida, tipo de variable char\n");}
.       {printf("No se reconoce\n");}
%%
/*seccion de codigo de usuario*/
int yywrap(){}

int main(){
    printf("Ingrese la cadena a evaluar\n");
    yylex();
    return 0;
}