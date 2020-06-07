/* seccion de definiciones */
DIGITO [0-9]
NUMERO {DIGITO}+
%{
    int numero1 = 0;
    void multiploTres();
%}
/* seccion de reglas*/
%%
            {printf("Primera expresion regular \n");}
            {printf("Segunda expresion regular \n");}
            {printf("Tercera expresion regular \n");}
[\n]            {printf("Cuarta expresion regular \n");}
.         {printf("No se reconoce");}
%%
/* seccion de codigo de usuario*/
int yywrap(){}

int main(){
  printf("Equivalencia de AF a ER \n");
  printf("Ingrese la cadena a evaluar \n");
  yylex();
  return 0;
}