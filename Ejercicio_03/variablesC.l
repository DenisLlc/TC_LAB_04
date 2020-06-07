/*seccion de definiciones*/
%{

%}
/*seccion de reglas*/
%%

int     {printf("Expresion reconocida, tipo de variable int\n");}
float   {printf("Expresion reconocida, tipo de variable float\n");}
char    {printf("Expresion reconocida, tipo de variable char\n");}
.       {printf("No se reconoce\n");}
%%
/*seccion de codigo de usuario*/
int yywrap(){}

int main(){
    printf("Ingrese la cadena a evaluar\n");
    yylex();
    return 0;
}