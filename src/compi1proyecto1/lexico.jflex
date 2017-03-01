/*----------IMPORTS----------*/
package compi1proyecto1;
import java_cup.runtime.Symbol;

%%
/*----------JFLEX----------*/
%cupsym sym1
%cup
%public
%unicode
%ignorecase

%class AnalizadorLexico
%line
%char
%column

Letras = [a-zA-ZñÑáéíóúÁÉÍÓÚ]
ERsyms = ("+"|"*"|"."|"?"|"["|"]"|":"|"\""|"/")
Enteros = [0-9]
Espacio = [" "|\t\r\n]
Id = {Letras}({Letras}|{Enteros}|"_")*
ER = ({ERsyms}({Letras}|{Enteros}|{ERsyms})*)

%%

/*----------TOKENS----------*/
"CONJ"      {return new Symbol(sym1.conj, yycolumn, yyline + 1, yytext());}
"RESERV"    {return new Symbol(sym1.reserv, yycolumn, yyline + 1, yytext());}
":"         {return new Symbol(sym1.dospts, yycolumn, yyline + 1, yytext());}
";"         {return new Symbol(sym1.ptycma, yycolumn, yyline + 1, yytext());}
"~"         {return new Symbol(sym1.ene, yycolumn, yyline + 1, yytext());}

"->"        {}
{id}        {return new Symbol(sym1.id, yycolumn, yyline + 1, yytext());}
