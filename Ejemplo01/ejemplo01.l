/* seccion de definiciones */
%{
%}
/* seccion de reglas*/
%%
xy              {printf("Primera expresion regular \n");}
xyxx*yx*        {printf("Segunda expresion regular \n");}
xyyx*           {printf("Tercera expresion regular \n");}
xyxy*x(xxy*x)*  {printf("Cuarta expresion regular \n");}
.               {printf("No se reconoce");}
%%
/* seccion de codigo de usuario*/
int yywrap(){}
int main(){
    printf("Equivalencia de AF a ER \n");
    printf("Ingrese la cadena a evaluar \n");
    yylex();
    return 0;
}