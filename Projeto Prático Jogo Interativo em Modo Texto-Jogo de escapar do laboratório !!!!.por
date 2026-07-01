programa
{
	inclua biblioteca Util-->u
	funcao inicio()
	{
	cadeia jogador
	inteiro hp
	inteiro sala
	inteiro opcao
	logico sala1fecha
	logico sala2fecha
	logico sala3abre 
	inteiro acao
	cadeia senha
	inteiro monstro1hp
	inteiro defesa
	inteiro defendeu
	inteiro ataquemonstro1
	logico tempocao
	logico tembomba
	inteiro pocao
	inteiro bomba
     inteiro material
	cadeia senhadigitado
	inteiro coisa
	cadeia NOx
	inteiro desviou
	inteiro ataque1,ataque2,resultante,resposta
	logico ganhou
	inteiro dano,ganhahp,dadodecura,dadodeataque
	hp=100
	ganhou=falso
	sala1fecha=falso
	sala2fecha=falso
	sala3abre=falso
	tembomba=falso
	tempocao=falso
	pocao=1
	bomba=1
	dadodecura=1
	dadodeataque=1
	senha="D42x+ç@"
	NOx=""
	enquanto(hp>0 e ganhou==falso)
	{	
	     escreva("THE BLUE LAB\n\n")
	     escreva("Digite o seu nome para começar o jogo\n") 
	     leia(jogador)
		escreva("— Ai, minha cabeça... O que?.. Onde estou? - ", jogador,
		" questiona consigo mesmo(a), passando a mão pela cabeça.Você olha ao redor e percebe que está deitado em uma cama. A sala parece um hospital, mas era tudo meio azulado. \n\n ")
		u.aguarde(7000)
		escreva(jogador," se levanta meio atordoado e vê uma faca em cima de um carrinho de serviço de inox. Sem perder tempo, você pega o objeto para se defender de qualquer coisa que possa acontecer.\n\n ")
		u.aguarde(4000)
		escreva(jogador, " abre a porta bem devagar e olha pela brecha. Ao perceber que não há perigo iminente, você sai do quarto e chega no corredor. O local tem uma atmosfera azul, com canos do teto as paredes, tudo parecia gelado e incrivelmente limpo.\n\n")	
		u.aguarde(6000)	
		escreva("A porta futurista a frente está trancada por um código, mas há duas salas destrancadas: uma a direita, com uma placa pregada na porta escrito “Sala de testes” e uma sala a esquerda, chamada “Formação de substâncias”.\n\n")
		u.aguarde(6000)
		escreva("__________________________________________________________________________________________________________________________________________________________________________________________________________________________\n")
		enquanto(sala3abre==falso)
		{
		escreva("Qual sala você irá escolher: Direita(1),esquerda(2) ou porta da frente(3)?\n")
		u.aguarde(1000)
		leia(sala)
		se (sala<1 ou sala>3)
		{
			escreva("Opção inválida!Tente de novo\n")
		}
		senao
		escolha(sala)
		{
		caso 1:
		se (sala1fecha==falso)
		{
		escreva(jogador, "escolhe a sala da direita e encontra um humano, ou melhor, um “ex-humano”. O indivíduo, seja lá o que for isso, tem uma aparência assustadora, provavelmente foi uma cobaia desse laboratório.\n\n")
		u.aguarde(1000)
		monstro1hp=60
		enquanto(monstro1hp>0 e hp>0)
		{	
		escreva(jogador,":",hp,"hp\n")
		 u.aguarde(1000)
		escreva("monstro:",monstro1hp,"hp\n")
		u.aguarde(1000)
		escreva("Escolhe a sua ação\n")
		escreva("1.Ataque\n")
		escreva("2.Defesa\n")
		escreva("3.Ataque forte\n")
		escreva("4.Usar mochila\n")
		leia(acao)
		escolha(acao)
		{
		caso 1:
		monstro1hp=monstro1hp-15
		hp=hp-10
		escreva("Você atacou 15hp de monstro, mas você também foi atacado 10 hp\n")	
		pare
		caso 2:
		 defesa=u.sorteia(0,20)
		 defendeu=defesa-10
		 se (defendeu<0)
		 {
		 defendeu=-defendeu
		 hp=hp-defendeu
		 escreva("Você foi atacado!\n")		
		 }
		 senao
		 se (defendeu==0)
		 {
		 escreva("Você desviou!\n")	
		 }
		 senao
		 {
		 monstro1hp=monstro1hp-defendeu
		 escreva("A defesa conseguiu fazer o dano do monstro ser refletido para si\n")
		 }
		pare
		caso 3:
		 {
		monstro1hp=monstro1hp-20
		ataquemonstro1=u.sorteia(5,15)
		hp=hp-ataquemonstro1
		escreva("Você atacou forte, mas a aproximação também permitiu o monstro atacar você\n")
		pare
		 }
		caso 4:
	{
	escreva("-------------------MOCHILA------------------------\n\n")
	u.aguarde(1000)
	escreva("Poção de cura: ", pocao, " unidade(s)\n")
	escreva("Bomba: ", bomba, " unidade(s)\n\n")
	escreva("Dado de cura: ",dadodecura," unidade(s)\n")
	escreva("Dado de ataque: ",dadodeataque," unidade(s)\n")
	escreva("1. Usar poção\n")
	escreva("2. Usar bomba\n")
	escreva("3. Usar dado de cura\n")
	escreva("4. Usar dado de ataque\n")
	escreva("5. Fechar mochila\n")
	leia(material)
	se (material<1 ou material>5)
	{
	escreva("Opção inválida! Você perdeu a vez.\n")
	hp = hp - 10
	}
	senao
	{
	escolha(material)
	{
	caso 1:
	se (pocao > 0)
	{
	hp = hp + 30
	pocao = pocao - 1
	escreva("Você recuperou 30 HP!\n")
	}
	senao
	{
	escreva("Você não possui poções e perdeu a chance.\n")
	hp=hp-10
	}
	pare        
	caso 2:
	se (bomba > 0)
	{
	monstro1hp = monstro1hp - 30
	bomba = bomba - 1
	escreva("Você lançou uma bomba!\n")
	}
	senao
	{
	escreva("Você não possui bombas e perdeu a chance.\n")
	hp=hp-10
	}
	pare
	caso 3:
	se (dadodecura > 0)
	{
	ganhahp=u.sorteia(0,50)	
	hp=hp+ganhahp
	dadodecura = dadodecura - 1
	escreva("Você usou o dado de cura e curou ",ganhahp,"\n")
	}
	senao
	{
	escreva("Você não possui dado de cura e perdeu a chance.\n")
	hp=hp-10
	}
	caso 4:
	se (dadodeataque > 0)
	{
	dano=u.sorteia(0,50)	
	monstro1hp = monstro1hp - dano
	dadodeataque = dadodeataque - 1
	escreva("Você usou o dado de ataque e atacou ",dano,"\n")
	}
	senao
	{
	escreva("Você não possui dado de ataque e perdeu a chance.\n")
	hp=hp-10
	}
	caso 5:
	escreva("Você fechou a mochila e continuou a batalha.\n")
	pare 	           
	}
	}
	}
           pare
            }
		  }
	    sala1fecha=verdadeiro
	    escreva("Você conseguiu matar o ex-humano!\n\n")
	    escreva("Ganhou um papel com codigo 'D42x+ç@'\n")
		pare
		   }
		senao
		{
	     escreva("A sala já foi conquistado.\n")
		}
		pare
		caso 2:
		se (sala2fecha==falso)
		{
		escreva(jogador, "escolhe a sala da esquerda e encontra um humano, ou melhor, um “ex-humano”. O indivíduo, seja lá o que for isso, tem uma aparência assustadora, provavelmente foi uma cobaia desse laboratório.\n\n")
		u.aguarde(1000)
		monstro1hp=60
		enquanto(monstro1hp>0 e hp>0)
		{	
		escreva(jogador,":",hp,"hp\n")
		 u.aguarde(1000)
		escreva("monstro:",monstro1hp,"hp\n")
		u.aguarde(1000)
		escreva("Escolhe a sua ação\n")
		escreva("1.Ataque\n")
		escreva("2.Defesa\n")
		escreva("3.Ataque forte\n")
		escreva("4.Usar mochila\n")
		leia(acao)
		escolha(acao)
		{
		caso 1:
		monstro1hp=monstro1hp-15
		hp=hp-10
		escreva("Você atacou 15hp de monstro, mas você também foi atacado 10 hp\n")	
		pare
		caso 2:
		 defesa=u.sorteia(5,15)
		 defendeu=defesa-10
		 se (defendeu<0)
		 {
		 defendeu=-defendeu
		 hp=hp-defendeu
		 escreva("Você foi atacado!\n")		
		 }
		 senao
		 se (defendeu==0)
		 {
		 escreva("Você desviou!\n")	
		 }
		 senao
		 {
		 monstro1hp=monstro1hp-defendeu
		 escreva("A defesa conseguiu fazer o dano do monstro ser refletido para si\n")
		 }
		pare
		caso 3:
		 {
		monstro1hp=monstro1hp-20
		ataquemonstro1=u.sorteia(5,15)
		hp=hp-ataquemonstro1
		escreva("Você atacou forte, mas a aproximação também permitiu o monstro atacar você\n")
		pare
		 }
		caso 4:
	{
	escreva("-------------------MOCHILA------------------------\n\n")
	u.aguarde(1000)
	escreva("Poção de cura: ", pocao, " unidade(s)\n")
	escreva("Bomba: ", bomba, " unidade(s)\n\n")
	escreva("Dado de cura: ",dadodecura," unidade(s)\n")
	escreva("Dado de ataque: ",dadodeataque," unidade(s)\n")
	escreva("1. Usar poção\n")
	escreva("2. Usar bomba\n")
	escreva("3. Usar dado de cura\n")
	escreva("4. Usar dado de ataque\n")
	escreva("5. Fechar mochila\n")
	leia(material)
	se (material<1 ou material>5)
	{
	escreva("Opção inválida! Você perdeu a vez.\n")
	hp = hp - 10
	}
	senao
	{
	escolha(material)
	{
	caso 1:
	se (pocao > 0)
	{
	hp = hp + 30
	pocao = pocao - 1
	escreva("Você recuperou 30 HP!\n")
	}
	senao
	{
	escreva("Você não possui poções e perdeu a chance.\n")
	hp=hp-10
	}
	pare        
	caso 2:
	se (bomba > 0)
	{
	monstro1hp = monstro1hp - 30
	bomba = bomba - 1
	escreva("Você lançou uma bomba!\n")
	}
	senao
	{
	escreva("Você não possui bombas e perdeu a chance.\n")
	hp=hp-10
	}
	pare
	caso 3:
	se (dadodecura > 0)
	{
	ganhahp=u.sorteia(0,50)	
	hp=hp+ganhahp
	dadodecura = dadodecura - 1
	escreva("Você usou o dado de cura e curou ",ganhahp,"\n")
	}
	senao
	{
	escreva("Você não possui dado de cura e perdeu a chance.\n")
	hp=hp-10
	}
	caso 4:
	se (dadodeataque > 0)
	{
	dano=u.sorteia(0,50)	
	monstro1hp = monstro1hp - dano
	dadodeataque = dadodeataque - 1
	escreva("Você usou o dado de ataque e atacou ",dano,"\n")
	}
	senao
	{
	escreva("Você não possui dado de ataque e perdeu a chance.\n")
	hp=hp-10
	}
	caso 5:
	escreva("Você fechou a mochila e continuou a batalha.\n")
	pare 	           
	}
	}
	}
           pare
            }
		  }
	    sala2fecha=verdadeiro
	    escreva("Você conseguiu matar o ex-humano!\n\n")
	    escreva("Você percebeu dois materiais e pode escolher uma para levar\n")
	    escreva("poção de cura(1) ou bomba(2).\n")
	    leia(coisa)
	    escolha(coisa)
	    {
	    caso 1:
	    escreva("Você ganhou uma poção de cura!\n")
	    pocao=pocao+1
	    pare
	    caso 2:
	    escreva("Você ganhou uma bomba!\n")
	    bomba=bomba+1
	    pare
	    }	    
		pare
		   }
		senao
		{
	     escreva("A sala já foi conquistado.\n")
		}
		pare		
		caso 3:
		{
           escreva("Digite o codigo da porta.\n")
           leia(senhadigitado)
           se (senhadigitado!=senha) 
           {
           escreva("Senha incorreta, volte para corredor\n")
           }
           senao
             {
           escreva("Você digitou o codigo certo e a porta abriu.\n")
           sala3abre=verdadeiro
             }
           pare
             }
		  }
		 }
		u.aguarde(1000)
		escreva("No momento em que você abre a porta, lembra-se de que, na verdade, é um cientista pesquisando mutações genéticas e aplicando injeções em indivíduos durante experimentos.\n\n")
          u.aguarde(4000)
          escreva("Mas, enquanto você continua a se lembrar, uma mistura sanguinolenta e pungente de remédio e sangue sai do quarto e entra em suas narinas.\n\n")
          u.aguarde(3000)
          escreva("A cena diante de você era a de um ex-humano está batendo na outra porta e corpo está tudo sujo.\n\n")
          u.aguarde(3000)
          escreva("Ele virou lentamente a cabeça em sua direção, e você, reprimindo a náusea e o medo, preparou seu corpo para a batalha, pronto para enfrentar o desafio.\n\n")
          u.aguarde(4000)
          monstro1hp=80
		enquanto(monstro1hp>0 e hp>0)
		{	
		escreva(jogador,":",hp,"hp\n")
		u.aguarde(1000)
		escreva("monstro:",monstro1hp,"hp\n")
		u.aguarde(1000)
		escreva("Escolhe a sua ação\n")
		escreva("1.Ataque\n")
		escreva("2.Defesa\n")
		escreva("3.Ataque forte\n")
		escreva("4.Usar mochila\n")
		leia(acao)
		escolha(acao)
		{
		caso 1:
		monstro1hp=monstro1hp-15
		hp=hp-15
		escreva("Você atacou 15hp de monstro, mas você também foi atacado 15 hp\n")	
		pare
		caso 2:
		 defesa=u.sorteia(0,20)
		 defendeu=defesa-15
		 se (defendeu<0)
		 {
		 defendeu=-defendeu
		 hp=hp-defendeu
		 escreva("Você foi atacado!\n")		
		 }
		 senao
		 se (defendeu==0)
		 {
		 escreva("Você desviou!\n")	
		 }
		 senao
		 {
		 monstro1hp=monstro1hp-defendeu
		 escreva("A defesa conseguiu fazer o dano do monstro ser refletido para si\n")
		 }
		pare
		caso 3:
		 {
		monstro1hp=monstro1hp-20
		ataquemonstro1=u.sorteia(5,20)
		hp=hp-ataquemonstro1
		escreva("Você atacou forte, mas a aproximação também permitiu o monstro atacar você\n")
		pare
		 }
		caso 4:
	{
	escreva("-------------------MOCHILA------------------------\n\n")
	u.aguarde(1000)
	escreva("Poção de cura: ", pocao, " unidade(s)\n")
	escreva("Bomba: ", bomba, " unidade(s)\n\n")
	escreva("Dado de cura: ",dadodecura," unidade(s)\n")
	escreva("Dado de ataque: ",dadodeataque," unidade(s)\n")
	escreva("1. Usar poção\n")
	escreva("2. Usar bomba\n")
	escreva("3. Usar dado de cura\n")
	escreva("4. Usar dado de ataque\n")
	escreva("5. Fechar mochila\n")
	leia(material)
	se (material<1 ou material>5)
	{
	escreva("Opção inválida! Você perdeu a vez.\n")
	hp = hp - 15
	}
	senao
	{
	escolha(material)
	{
	caso 1:
	se (pocao > 0)
	{
	hp = hp + 30
	pocao = pocao - 1
	escreva("Você recuperou 30 HP!\n")
	}
	senao
	{
	escreva("Você não possui poções e perdeu a chance.\n")
	hp=hp-15
	}
	pare        
	caso 2:
	se (bomba > 0)
	{
	monstro1hp = monstro1hp - 30
	bomba = bomba - 1
	escreva("Você lançou uma bomba!\n")
	}
	senao
	{
	escreva("Você não possui bombas e perdeu a chance.\n")
	hp=hp-15
	}
	pare
	caso 3:
	se (dadodecura > 0)
	{
	ganhahp=u.sorteia(0,50)	
	hp=hp+ganhahp
	dadodecura = dadodecura - 1
	escreva("Você usou o dado de cura e curou ",ganhahp,"\n")
	}
	senao
	{
	escreva("Você não possui dado de cura e perdeu a chance.\n")
	hp=hp-15
	}
	caso 4:
	se (dadodeataque > 0)
	{
	dano=u.sorteia(0,50)	
	monstro1hp = monstro1hp - dano
	dadodeataque = dadodeataque - 1
	escreva("Você usou o dado de ataque e atacou ",dano,"\n")
	}
	senao
	{
	escreva("Você não possui dado de ataque e perdeu a chance.\n")
	hp=hp-15
	}
	caso 5:
	escreva("Você fechou a mochila e continuou a batalha.\n")
	pare 	           
	}
	}
	}
           pare
            }
		}
		escreva("Você conseguiu matar o ex-humano!\n")		
          u.aguarde(1000)
		escreva("Ao olhar para esse ex-humano morto, você se lembra de que ele era um sujeito de experimentos e que estava todo sorridente antes do experimento, mas sua faca afiada o apunhalou.\n\n")
          u.aguarde(5000)
		escreva("E você lembrou que foi seu erro pessoal durante o experimento causou caos em todo o laboratório.\n\n")
          u.aguarde(2000)
		escreva("Você se sente culpado por ter causado a morte de tantas pessoas que antes tinham famílias felizes, e não consegue se perdoar pelo mal que causou.\n\n")
          u.aguarde(3000)
		escreva("Mas nenhuma quantidade de auto-culpa pode mudar o presente, então você opta por continuar procurando pistas para chegar à próxima porta.\n\n")
          u.aguarde(3000)
		escreva("Após revistar todos os armários, você encontra um bilhete com a senha da porta de saída e, abaixo dele, uma linha de texto.\n\n")
          u.aguarde(3000)
          enquanto(NOx!="Redução de 4 unidades")
          {
		escreva("Considerando as transformações químicas,o NOx de carbono de reagente e produto no processo de Ciclo de Calvin apresenta uma redução ou oxidação de quantas unidades.\n\n")
          u.aguarde(4000)
		escreva("(Sua resposta deveria ser escrita dessa forma:'Redução de 1 unidades')\n\n")
		u.aguarde(2000)
		leia(NOx)
		se(NOx=="Redução de 4 unidades")
		{
		escreva("Senha correta!Conseguiu abrir a porta.\n")	
		}
		senao
		escreva("Senha incorreta!!!A porta não abriu.\n")
          }  
          escreva("Ao abrir aquela porta, um ser aparentemente ex-humano com deficiência se apresenta diante de você, e atrás dele está o portão da liberdade.\n")
          u.aguarde(3000)
          escreva("Você assume uma postura de batalha, pronto para lutar contra esse ex-humano a qualquer momento.\n")
          u.aguarde(2000)
          monstro1hp=40
		enquanto(monstro1hp>0 e hp>0)
		{	
		escreva(jogador,":",hp,"hp\n")
		u.aguarde(1000)
		escreva("monstro:",monstro1hp,"hp\n")
		u.aguarde(1000)
		escreva("Escolhe a sua ação\n")
		escreva("1.Ataque\n")
		escreva("2.Defesa\n")
		escreva("3.Ataque forte\n")
		escreva("4.Usar mochila\n")
		leia(acao)
		escolha(acao)
		{
		caso 1:
		monstro1hp=monstro1hp-15
		hp=hp-10
		escreva("Você atacou 15hp de monstro, mas você também foi atacado 10 hp\n")	
		pare
		caso 2:
		 defesa=u.sorteia(10000000,99999999)
		 defendeu=u.sorteia(1, 15)
           escreva("O número ",defesa," é importante!\n")
           u.aguarde(7000)
           limpa()
           escreva("Qual é o número:")
           leia(desviou)
		 se (desviou==defesa)
		 {
		 monstro1hp=monstro1hp-defendeu
		 escreva("Você conseguiu refletir ",defendeu,"hp\n")	
		 }
		 senao{
		 hp=hp-10
		 escreva("Você não conseguiu refletir o ataque e perdeu 10hp\n")}
		pare
		caso 3:
		 {
		monstro1hp=monstro1hp-20
		ataquemonstro1=u.sorteia(5,15)
		hp=hp-ataquemonstro1
		escreva("Você atacou forte, mas a aproximação também permitiu o monstro atacar você\n")
		pare
		 }
		caso 4:
	{
	escreva("-------------------MOCHILA------------------------\n\n")
	u.aguarde(1000)
	escreva("Poção de cura: ", pocao, " unidade(s)\n")
	escreva("Bomba: ", bomba, " unidade(s)\n\n")
	escreva("Dado de cura: ",dadodecura," unidade(s)\n")
	escreva("Dado de ataque: ",dadodeataque," unidade(s)\n")
	escreva("1. Usar poção\n")
	escreva("2. Usar bomba\n")
	escreva("3. Usar dado de cura\n")
	escreva("4. Usar dado de ataque\n")
	escreva("5. Fechar mochila\n")
	leia(material)
	se (material<1 ou material>5)
	{
	escreva("Opção inválida! Você perdeu a vez.\n")
	hp = hp - 10
	}
	senao
	{
	escolha(material)
	{
	caso 1:
	se (pocao > 0)
	{
	hp = hp + 30
	pocao = pocao - 1
	escreva("Você recuperou 30 HP!\n")
	}
	senao
	{
	escreva("Você não possui poções e perdeu a chance.\n")
	hp=hp-10
	}
	pare        
	caso 2:
	se (bomba > 0)
	{
	monstro1hp = monstro1hp - 30
	bomba = bomba - 1
	escreva("Você lançou uma bomba!\n")
	}
	senao
	{
	escreva("Você não possui bombas e perdeu a chance.\n")
	hp=hp-10
	}
	pare
	caso 3:
	se (dadodecura > 0)
	{
	ganhahp=u.sorteia(0,50)	
	hp=hp+ganhahp
	dadodecura = dadodecura - 1
	escreva("Você usou o dado de cura e curou ",ganhahp,"\n")
	}
	senao
	{
	escreva("Você não possui dado de cura e perdeu a chance.\n")
	hp=hp-10
	}
	caso 4:
	se (dadodeataque > 0)
	{
	dano=u.sorteia(0,50)	
	monstro1hp = monstro1hp - dano
	dadodeataque = dadodeataque - 1
	escreva("Você usou o dado de ataque e atacou ",dano,"\n")
	}
	senao
	{
	escreva("Você não possui dado de ataque e perdeu a chance.\n")
	hp=hp-10
	}
	caso 5:
	escreva("Você fechou a mochila e continuou a batalha.\n")
	pare 	           
	}
	}
	}
           pare
            }
		}
		escreva("Após a queda, você desabou no chão, atordoado, mas, ao enxergar o caminho para a luz, você se levantou.\n\n")
		u.aguarde(2000)
		escreva("Mas naquele instante, o pequeno ex-humano, antes frágil e fraco, se levantou, cresceu um par de asas e se tornou completamente diferente de seu estado anterior, debilitado.\n")
		u.aguarde(4000)
		escreva("Embora esteja com medo, a vontade de sobreviver constantemente lhe lembra de se levantar. E você lutará contra esse poderoso ex-humano.\n")
		u.aguarde(3000)
		 monstro1hp=120
		enquanto(monstro1hp>0 e hp>0)
		{	
		escreva(jogador,":",hp,"hp\n")
		u.aguarde(1000)
		escreva("monstro:",monstro1hp,"hp\n")
		u.aguarde(1000)
		escreva("Escolhe a sua ação\n")
		escreva("1.Ataque\n")
		escreva("2.Defesa\n")
		escreva("3.Ataque forte\n")
		escreva("4.Usar mochila\n")
		leia(acao)
		escolha(acao)
		{
		caso 1:
		monstro1hp=monstro1hp-15
		hp=hp-20
		escreva("Você atacou 15hp de monstro, mas você também foi atacado 20hp\n")	
		pare
		caso 2:
		 defesa=u.sorteia(10000000,999999999)
		 defendeu=u.sorteia(5, 25)
           escreva("O número ",defesa," é importante!\n")
           u.aguarde(10000)
           limpa()
           escreva("Qual é o número? ")
           leia(desviou)
		 se (desviou==defesa)
		 {
		 monstro1hp=monstro1hp-defendeu
		 escreva("Você conseguiu refletir ",defendeu,"hp\n")	
		 }
		 senao{
		 hp=hp-20
		 escreva("Você não conseguiu refletir o ataque e perdeu 20hp\n")}
		pare
		caso 3:
		 {
		ataque1=u.sorteia(100,9999)
		ataque2=u.sorteia(100,9999)
		resultante=ataque1+ataque2
		escreva("Veja os números ",ataque1," e ",ataque2," para responder questão a seguir\n")
		u.aguarde(6000)
		limpa()
		escreva("Qual é soma dos dois números\n")
		leia(resposta)
		se(resposta==resultante)
		{
		monstro1hp=monstro1hp-25
		ataquemonstro1=u.sorteia(0,15)
		hp=hp-ataquemonstro1
		escreva("Você atacou forte, mas a aproximação também permitiu o monstro atacar você\n")
		}
		senao
		{
		monstro1hp=monstro1hp-15
		ataquemonstro1=u.sorteia(10,25)
		hp=hp-ataquemonstro1
		escreva("Você atacou fraco e a aproximação também permitiu o monstro atacar você\n")
		}
		pare
		 }
		caso 4:
	{
	escreva("-------------------MOCHILA------------------------\n\n")
	u.aguarde(1000)
	escreva("Poção de cura: ", pocao, " unidade(s)\n")
	escreva("Bomba: ", bomba, " unidade(s)\n\n")
	escreva("Dado de cura: ",dadodecura," unidade(s)\n")
	escreva("Dado de ataque: ",dadodeataque," unidade(s)\n")
	escreva("1. Usar poção\n")
	escreva("2. Usar bomba\n")
	escreva("3. Usar dado de cura\n")
	escreva("4. Usar dado de ataque\n")
	escreva("5. Fechar mochila\n")
	leia(material)
	se (material<1 ou material>5)
	{
	escreva("Opção inválida! Você perdeu a vez.\n")
	hp = hp - 20
	}
	senao
	{
	escolha(material)
	{
	caso 1:
	se (pocao > 0)
	{
	hp = hp + 30
	pocao = pocao - 1
	escreva("Você recuperou 30 HP!\n")
	}
	senao
	{
	escreva("Você não possui poções e perdeu a chance.\n")
	hp=hp-20
	}
	pare        
	caso 2:
	se (bomba > 0)
	{
	monstro1hp = monstro1hp - 30
	bomba = bomba - 1
	escreva("Você lançou uma bomba!\n")
	}
	senao
	{
	escreva("Você não possui bombas e perdeu a chance.\n")
	hp=hp-20
	}
	pare
	caso 3:
	se (dadodecura > 0)
	{
	ganhahp=u.sorteia(0,50)	
	hp=hp+ganhahp
	dadodecura = dadodecura - 1
	escreva("Você usou o dado de cura e curou ",ganhahp,"\n")
	}
	senao
	{
	escreva("Você não possui dado de cura e perdeu a chance.\n")
	hp=hp-20
	}
	caso 4:
	se (dadodeataque > 0)
	{
	dano=u.sorteia(0,50)	
	monstro1hp = monstro1hp - dano
	dadodeataque = dadodeataque - 1
	escreva("Você usou o dado de ataque e atacou ",dano,"\n")
	}
	senao
	{
	escreva("Você não possui dado de ataque e perdeu a chance.\n")
	hp=hp-20
	}
	caso 5:
	escreva("Você fechou a mochila e continuou a batalha.\n")
	pare 	           
	}
	}
	}
           pare
            }
		}
	     escreva("Ao derrotar esse monstro bizarro, a figura enorme finalmente cai.\n")
	     u.aguarde(2000)
	     escreva("Você limpou o sangue do corpo, respirou fundo e caminhou lentamente em direção à porta da frente.\n")
	     u.aguarde(2000)	
	     escreva("Você abriu aquela porta e finalmente viu a vista tão esperada lá fora. Toda a guerra e o derramamento de sangue que ficaram para trás serão irrelevantes para você (ou relevantes...?). Não, tudo começou com você, e você arcará com as consequências, encarando-as com serenidade.")
	     u.aguarde(6000)	     
	     escreva("Você saiu da cena infernal e está lentamente a caminho da delegacia, pois terá que confessar seus erros e pagar o preço. Mas pelo menos você é honesto, certo....")
	     u.aguarde(4000)
	     ganhou=verdadeiro           
	    }	    
	    se(hp<=0)
	     {
		escreva("Você perdeu o jogo!\n")
	     escreva("GAME OVER!!!!", jogador, " é um pessimo cientista.\n")
	     }
	     senao
	     {
	     escreva("GOOD ENDING:Você escapou do laboratório\n")	
	     }
	    }	    	 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 22205; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */