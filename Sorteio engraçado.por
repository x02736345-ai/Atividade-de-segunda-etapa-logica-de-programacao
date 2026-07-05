programa
{
    inclua biblioteca Matematica --> M
    inclua biblioteca Util --> U
    inclua biblioteca Texto --> TX
    funcao inicio()
    {
        inteiro n1, n2, n3
        inteiro maior,maior1, menor,menor1
        escreva(TX.caixa_alta("Bem-vindo ao sorteio!\n"))
        escreva(TX.caixa_baixa("vamos descobrir os números sorteados...\n\n")) 
        n1 = U.sorteia(1, 50)
        n2 = U.sorteia(1, 50)
        n3 = U.sorteia(1, 50) 
        escreva("Sorteando!\n")
        U.aguarde(5000)
        escreva("Espere mais um pouco.\n")
        U.aguarde(5000)
        escreva("Um pouquinho?\n")
        U.aguarde(9000)
        escreva("Sinceramente, você tem nada para fazer?\n")
        U.aguarde(6000)
        escreva("Espere mais um pouco...\n")
        U.aguarde(7000)
        escreva("O estagiário derrubou o computador. Não foi eu...\n")
        U.aguarde(5000)
        escreva("Ligando de novo...\n")
        U.aguarde(3000)
        escreva("Pronto! Agora foi!\n\n")
        maior=M.maior_numero(n1, n2)
        maior1=M.maior_numero(maior,n3)
        menor=M.menor_numero(n1, n2)
        menor1=M.menor_numero(menor, n3)
        escreva("Números sorteados: ", n1, ", ", n2, " e ", n3, "\n\n")
        escreva("Maior número: ", menor1, "\n")
        escreva("Menor número: ", maior1, "\n")
        escreva("...\n")
        U.aguarde(2000)
        escreva("Eita! Coloquei tudo ao contrário...\n")
        U.aguarde(2000)
        escreva("Agora sim.\n\n")
        escreva("Maior número: ", maior1, "\n")
        escreva("Menor número: ", menor1, "\n\n") 
        escreva(TX.caixa_alta("PARABÉNS AOS PARTICIPANTES!\n"))
        escreva(TX.caixa_baixa("Até o próximo sorteio!\n"))
    }
}
 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */