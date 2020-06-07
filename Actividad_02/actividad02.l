/* seccion de definiciones */
%{

%}
/* seccion de reglas*/
%%
(0|3|6|9)+                                            {printf("Primera expresion regular \n");}
((0|3|6|9)*(1|4|7)(0|3|6|9)*((2|5|8)|(1|4|7){2}))+    {printf("Segunda expresion regular \n");}
((0|3|6|9)*(2|5|8)(0|3|6|9)*((1|4|7)|(2|5|8){2}))+    {printf("Tercera expresion regular \n");}
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