algoritmo "Batalha_Naval"
var
   c,l,i,j,h,cont1,cont2:inteiro
   player1,player2: vetor[1..5,1..5] de inteiro
   passar,jogador1, jogador2: caracter
inicio
      escreval("*********************** THIS WAR ***********************")
      escreval
      escreval
      escreval("************************")
      escreval("*********AVISO**********")
      escreval("************************")
      escreval
      escreval("Sempre escreva primeira a linha, depois a coluna")
      escreval("de tal forma que conte de cima pra baixo da esquerda pra direita")
      escreval("Exemplo: ")
      escreval("1")
      escreval("2")
      escreval("x o x x x")
      escreval("x x x x x")
      escreval("x x x x x")
      escreval("x x x x x")
      escreval("x x x x x")
      escreval("prontos?")
      leia(passar)
      limpatela
      escreval("qual seu nome 1� jogador?")
      leia(jogador1)
      escreval("coloque as pe�as nas posi��es, escreva o numero de linhasxcoluna")
      para h de 1 ate 5 faca
           leia(l,c)
           se (l>5) ou (c>5) ou (c<1) ou (l<0) entao
              repita
                    escreval("por favor digite novamente seu numero � incorreto")
                    leia(l,c)
              ate (l>0) e (l<6) e (c>0) e (c<6)
           fimse
           escreval("pe�a colocada coloque outra por favor")
           para i de 1 ate 5 faca
                para j de 1 ate 5 faca
                     se (i=l) e (j=c) entao
                        player1[i,j]<- 1
                     fimse
                fimpara
           fimpara
      fimpara
      para i de 1 ate 5 faca
           para j de 1 ate 5 faca
                escreva(player1[i,j])
           fimpara
           escreval
      fimpara
      escreval("escreva sim para limpar a tela e ir o outro jogador colocar suas pe�as")
      leia(passar)
      limpatela
      escreval("qual seu nome 2� jogador?")
      leia(jogador2)
      escreval("coloque as pe�as nas posi��es, escreva o numero de linhasxcoluna")
      para h de 1 ate 5 faca
           leia(l,c)
           se (l>5) ou (c>5) ou (c<1) ou (l<0) entao
              repita
                    escreval("por favor digite novamente seu numero � incorreto")
                    leia(l,c)
              ate (l>0) e (l<6) e (c>0) e (c<6)
           fimse
           escreval("pe�a colocada coloque outra por favor")
           para i de 1 ate 5 faca
                para j de 1 ate 5 faca
                     se (i=l) e (j=c) entao
                        player2[i,j]<- 1
                     fimse
                fimpara
           fimpara
      fimpara
      para i de 1 ate 5 faca
           para j de 1 ate 5 faca
                escreva(player2[i,j])
           fimpara
           escreval
      fimpara
      escreval("escreva sim para come�ar")
      leia(passar)
      limpatela
      c<-0
      l<-0
      repita
            escreval(jogador1, " � sua vez")
            escreval("escreva sim para come�ar a sua vez")
            leia(passar)
            para i de 1 ate 5 faca
                 para j de 1 ate 5 faca
                      escreva(player1[i,j])
                 fimpara
            escreva (" | x x x x x")
            escreval
            fimpara
            escreval("qual casa vc quer atacar?")
            leia(l,c)
            se (l>5) ou (c>5) ou (c<1) ou (l<0) entao
               repita
                     escreval("por favor digite novamente seu numero � incorreto")
                     leia(l,c)
               ate (l>0) e (l<6) e (c>0) e (c<6)
            fimse
            para i de 1 ate 5 faca
                 para j de 1 ate 5 faca
                      se (i=l) e (j=c) entao
                         se player2[i,j]=1 entao
                            escreval("Voc� acertou, parabens")
                            player2[i,j]<- 0
                            cont1<-cont1 +1
                         senao
                              escreval("Voc� errou, tente na proxima")
                         fimse
                      fimse
                 fimpara
            fimpara
            se cont1 = 5 entao
               escreval("Voc� acertou o ultimo barco dele!!!!")
               escreva(jogador1, " destroiu todos os navios de seu inimigo e foi o(a) campe�o(�)!!")
               fimalgoritmo
            fimse
            escreval("escreva sim para passar sua vez")
            leia(passar)
            limpatela
            escreval(jogador2, " � sua vez")
            escreval("escreva sim para come�ar a sua vez")
            leia(passar)
            para i de 1 ate 5 faca
                 escreva (" x x x x x | ")
                 para j de 1 ate 5 faca
                      escreva(player2[i,j])
                 fimpara
                 escreval
            fimpara
            escreval("qual casa vc quer atacar?")
            leia(l,c)
            se (l>5) ou (c>5) ou (c<1) ou (l<0) entao
               repita
                     escreval("por favor digite novamente seu numero � incorreto")
                     leia(l,c)
               ate (l>0) e (l<6) e (c>0) e (c<6)
            fimse
            para i de 1 ate 5 faca
                 para j de 1 ate 5 faca
                      se (i=l) e (j=c) entao
                         se player1[i,j]=1 entao
                            escreval("Voc� acertou, parabens")
                            player1[i,j]<- 0
                            cont2<-cont2 +1
                         senao
                              escreval("Voc� errou, tente na proxima")
                         fimse
                      fimse
                 fimpara
            fimpara
            se cont2 = 5 entao
               escreval("Voc� acertou o ultimo barco dele!!!!")
               escreva(jogador2, " destroiu todos os navios de seu inimigo e foi o(a) campe�o(�)!!")
               fimalgoritmo
            fimse
            escreval("escreva sim para passar sua vez")
            leia(passar)
            limpatela
      ate (cont1=5) ou (cont2=5)
fimalgoritmo