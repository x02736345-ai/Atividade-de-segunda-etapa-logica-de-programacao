programa
{
 
  funcao inicio()
  {
    real total_valor
    inteiro opcao=1
    real numero1
    real numero2
 
    escreva("Escreva um número\n")
    leia(numero1)
    escreva("Escreva um número\n")
    leia(numero2)
 
      escreva("1 - adição\n")
      escreva("2 - subtração\n")
      escreva("3 - multiplicação\n")
      escreva("4 - divisão\n")
 
       escreva("Escolha uma opção:\n\n")
       leia(opcao)
       escolha (opcao)  
      {
        caso 1:
          total_valor = numero1+numero2
          escreva("O seu valor total é ", total_valor)
          pare  
        caso 2:
          total_valor = numero1-numero2
          escreva("O seu valor total é ", total_valor)
          pare  
        caso 3:
          total_valor = numero1*numero2
          escreva("O seu valor total é ", total_valor)
          pare
        caso 4:
         se (numero2 == 0)
          {
           escreva("valor inavalida")
          }
          senao
          {
          total_valor= numero1/numero2
         
          escreva(" O seu valor total é ", total_valor)
          pare
          }
      }
  }
}