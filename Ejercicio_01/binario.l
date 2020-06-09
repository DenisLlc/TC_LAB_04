/*seccion de definiciones*/
BIN [0-1]
%{

%}
/*seccion de reglas*/
%%
(0|1)*0     {printf("Es un numero binario\n");}
.           {printf("No se reconoce\n");}
%%
/*seccionde codigo de usuario*/
int yywrap(){}

int main(){
    printf("Ingrese la cadena a evaluar \n");
    yylex();
    return 0;
}