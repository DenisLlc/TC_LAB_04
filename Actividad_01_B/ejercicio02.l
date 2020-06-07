/* seccion de definiciones */
%{
%}
/* seccion de reglas*/
%%
          {printf("Primera expresion regular \n");}
yy+       {printf("Segunda expresion regular \n");}
x+y+      {printf("Tercera expresion regular \n");}
(yyy*yx|xx*yy*yx)(yy*yx|yxyyy*yx|yxxx*yy*yx)*((yx)?|(yxyyy*)?|(yxxx*yy*)?) {printf("Cuarta expresion regular \n");}
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