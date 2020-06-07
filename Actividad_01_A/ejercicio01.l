/* seccion de definiciones */
%{
%}
/* seccion de reglas*/
%%
aca* {printf("Primera expresion regular \n");}
abc* {printf("Segunda expresion regular \n");}
abc+b*ca(bb+ca)* {printf("Tercera expresion regular \n");}
. {printf("No se reconoce");}
%%
/* seccion de codigo de usuario*/
int yywrap(){}

int main(){
    printf("Equivalencia de AF a ER \n");
    printf("Ingrese la cadena a evaluar \n");
    yylex();
    return 0;
}