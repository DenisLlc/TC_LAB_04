/*seccion de definiciones*/
HOR  ([0-9]|0[0-9]|1[0-9]|2[0-3])
MIN  [0-5][0-9]
SEG  [0-5][0-9]
SEP [\:]
%{

%}
/*seccion de reglas*/
%%
{HOR}:{MIN}(:{SEG})?     {printf("Expresion reconocida\n");}
.           {printf("No se reconoce\n");}
%%
/*seccionde codigo de usuario*/
int yywrap(){}

int main(){
    printf("Ingrese la cadena a evaluar \n");
    yylex();
    return 0;
}