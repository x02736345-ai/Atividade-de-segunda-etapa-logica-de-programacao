programa  
{  
    funcao inicio()  
    {  
        inteiro tab
        inteiro numero  
        escreva("Digite um número positivo e inteiro")
        leia(numero)
       
     
        se (numero<=0)
        {
        escreva("Valor invalido")
        }
        senao
      {
 
       
        para (inteiro c=1; c<=10; c++)
        {  
            tab=c*numero
            escreva (numero, "x" , c, " = ", tab, "\n")  
        }  
      }
   }
}  
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 451; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */