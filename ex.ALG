Algoritmo "Painel C�lculo de Matrizes"
Var
   i,j,k,soma, opcao, valor: inteiro
   soma4x4n1,soma4x4n2,soma4x4n3: vetor[1..4,1..4] de inteiro
   subtrai5x5n1,subtrai5x5n2: vetor[1..5,1..5] de inteiro
   multi3x3n1,multi3x3n2,multi3x3n3: vetor[1..3,1..3] de inteiro
   
   transpostaSoma: vetor[1..4,1..4] de inteiro
   transpostaSubtrai: vetor[1..5,1..5] de inteiro
   transpostaMulti: vetor[1..3,1..3] de inteiro


//----------------------------------------------------------------------
Procedimento exibirPainel()
//----------------------------------------------------------------------

Inicio
   Enquanto opcao <> 6 faca
      Escreval()
      Escreval()
      Escreval("--Painel C�lculo de Matrizes--")
      Escreval()
      Escreval("Escolha uma op��o: ")
      Escreval("[1] - Somar duas matrizes 4x4")
      Escreval("[2] - Subtrair um n�mero de uma matrix 5x5")
      Escreval("[3] - Multiplicar duas matrizes 3x3 entre si")
      Escreval("[4] - Apresentar a transposta das matrizes 1, 2 e 3")
      Escreval("[5] - Somar diagonais principais das matrizes 1, 2 e 3")
      Escreval("[6] - SAIR")
      Escreval()
      Escreva("Digite: ")
      Leia(opcao)
      Escreval()
      LimpaTela

      Escolha opcao
      caso 1
         somarMatriz()
      caso 2
         subtrairMatriz()
      caso 3
         multiplicarMatrizes()
      caso 4
         exibirTranspostas()
      caso 5
         somarDiagonalPrincipal()
      caso 6
         Escreva("Encerrando programa. At� logo!")
      
      outrocaso
         Escreva("Valor inv�lido. Digite novamente.")

      FimEscolha

   FimEnquanto
FimProcedimento

//----------------------------------------------------------------------
Procedimento somarMatriz()
//----------------------------------------------------------------------

Inicio
   //pede valores da primeira matriz
   Escreval("|---- Op��o 1 - Somando Matrizes 4x4 ----|")
   Escreval()
   Escreval("Digite os n�meros para a primeira matriz:")
   Para i <- 1 ate 4 faca
      Para j <- 1 ate 4 faca
         Escreva("Posi��o [",i,"],[",j,"]: ")
         Leia(soma4x4n1[i,j])
      FimPara
   FimPara
   LimpaTela

   //pede valores da segunda matriz
   Escreval("|---- Op��o 1 - Somando Matrizes 4x4 ----|")
   Escreval()
   Escreval("Digite os n�meros para a segunda matriz:")
   Para i <- 1 ate 4 faca
      Para j <- 1 ate 4 faca
         Escreva("Posi��o [",i,"],[",j,"]: ")
         Leia(soma4x4n2[i,j])
      FimPara
   FimPara
   LimpaTela

   //Exibe primeira matriz
   EscrevaL("|---- Matriz 1 ----|")
   Para i <- 1 ate 4 faca
      Para j <- 1 ate 4 faca
         Escreva(soma4x4n1[i,j]:4)
      FimPara
      Escreval()
   FimPara
   Escreval()

   //Exibe segunda matriz
   EscrevaL("|---- Matriz 2 ----|")
   Para i <- 1 ate 4 faca
      Para j <- 1 ate 4 faca
         Escreva(soma4x4n2[i,j]:4)
      FimPara
      Escreval()
   FimPara

   //Soma matrizes
   Para i <- 1 ate 4 faca
      Para j <- 1 ate 4 faca
         soma4x4n3[i,j] <- soma4x4n1[i,j] + soma4x4n2[i,j]
      FimPara
   FimPara
   Escreval()

   //Exibe soma das matrizes
   EscrevaL("|---- Soma entre 1 e 2 ----|")
   Para i <- 1 ate 4 faca
      Para j <- 1 ate 4 faca
         Escreva(soma4x4n3[i,j]:4)
      FimPara
      Escreval()
   FimPara
FimProcedimento

//----------------------------------------------------------------------
Procedimento subtrairMatriz()
//----------------------------------------------------------------------

Inicio

   //pede valores da primeira matriz
   Escreval("|---- Op��o 2 - Somando de uma Matrizes 5x5 ----|")
   Escreval()
   Escreval("Digite os n�meros para a matriz:")
   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         Escreva("Posi��o [",i,"],[",j,"]: ")
         Leia(subtrai5x5n1[i,j])
      FimPara
   FimPara
   LimpaTela
   
   //Exibe primeira matriz
   EscrevaL("|---- Matriz 1 ----|")
   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         Escreva(subtrai5x5n1[i,j]:4)
      FimPara
      Escreval()
   FimPara
   Escreval()

   //pergunta
   Escreva("Quantas unidades deseja subtrair? ")
   Leia(valor)
   Escreval()

   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         subtrai5x5n2[i,j] <- subtrai5x5n1[i,j]-valor
      FimPara
   FimPara
   Escreval()
   
   //exibe segunda matriz
   EscrevaL("|---- Matriz 2 ----|")
   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         Escreva(subtrai5x5n2[i,j]:4)
      FimPara
      Escreval()
   FimPara
   Escreval()

FimProcedimento

//----------------------------------------------------------------------
 Procedimento multiplicarMatrizes()
//----------------------------------------------------------------------

Inicio
   //pede valores da primeira matriz
   Escreval("|---- Op��o 3 - Multiplicando Matrizes 3x3 ----|")
   Escreval()
   Escreval("Digite os n�meros para a matriz:")
   Para i <- 1 ate 3 faca
      Para j <- 1 ate 3 faca
         Escreva("Posi��o [",i,"],[",j,"]: ")
         Leia(multi3x3n1[i,j])
      FimPara
   FimPara
   Escreval()

   //pede valores da segunda matriz
   Escreval("Digite os n�meros para a matriz:")
   Para i <- 1 ate 3 faca
      Para j <- 1 ate 3 faca
         Escreva("Posi��o [",i,"],[",j,"]: ")
         Leia(multi3x3n2[i,j])
      FimPara
   FimPara

   LimpaTela
   //Exibe primeira matriz
   EscrevaL("|---- Matriz 1 ----|")
   Para i <- 1 ate 3 faca
      Para j <- 1 ate 3 faca
         Escreva(multi3x3n1[i,j]:4)
      FimPara
      Escreval()
   FimPara
   Escreval()

   //Exibe segunda matriz
   EscrevaL("|---- Matriz 2 ----|")
   Para i <- 1 ate 3 faca
      Para j <- 1 ate 3 faca
         Escreva(multi3x3n2[i,j]:4)
      FimPara
      Escreval()
   FimPara

   //Calcular o produto
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         multi3x3n3[i,j] <- 0
         para k de 1 ate 3 faca
            multi3x3n3[i,j] <- multi3x3n3[i,j] + multi3x3n1[i,k] * multi3x3n2[k,j]
         fimpara
      fimpara
   fimpara
   Escreval()

   //Mostrar a matriz 3
   escreval("|---- Matriz1 x Matriz2 ----|:")
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         escreva(multi3x3n3[i,j]:4)
      fimpara
      escreval()
   fimpara
   Escreval()

 FimProcedimento

//----------------------------------------------------------------------
 Procedimento exibirTranspostas()
//----------------------------------------------------------------------
  Inicio

//--------------------Faz a transposta da matriz 1 -------------------//

  para i de 1 ate 4 faca
    para j de 1 ate 4 faca
      transpostaSoma[i,j] <- soma4x4n3[j,i]
    fimpara
  fimpara
  escreval()

  //Exibe matriz original 1
   EscrevaL("|---- Soma entre 1 e 2 ----|")
   Para i <- 1 ate 4 faca
      Para j <- 1 ate 4 faca
         Escreva(soma4x4n3[i,j]:4)
      FimPara
      Escreval()
   FimPara
   
  //Exibe matriz transposta 1
  escreval("Transposta da Matriz")
  para i de 1 ate 4 faca
    para j de 1 ate 4 faca
      escreva(transpostaSoma[i,j]:4)
    fimpara
    escreval()
  fimpara
  
  //--------------------Faz a transposta da matriz 2 -------------------//
  
  para i de 1 ate 5 faca
    para j de 1 ate 5 faca
      transpostaSubtrai[i,j] <- subtrai5x5n2[j,i]
    fimpara
  fimpara
  escreval()
  
  //exibe matriz original
   EscrevaL("|---- Matriz 2 ----|")
   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         Escreva(subtrai5x5n2[i,j]:4)
      FimPara
      Escreval()
   FimPara
   Escreval()
   
  //Exibe matriz transposta 2
  escreval("Transposta da Matriz")
  para i de 1 ate 5 faca
    para j de 1 ate 5 faca
      escreva(transpostaSubtrai[i,j]:4)
    fimpara
    escreval()
  fimpara
  
  //--------------------Faz a transposta da matriz 3 -------------------//

  para i de 1 ate 3 faca
    para j de 1 ate 3 faca
      transpostaMulti[i,j] <- multi3x3n3[j,i]
    fimpara
  fimpara
  escreval()
  
  //exibe matriz original
   escreval("|---- Matriz 3 ----|")
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         escreva(multi3x3n3[i,j]:4)
      fimpara
      escreval()
   fimpara
   Escreval()
  
  //Exibe matriz transposta 3
  escreval("Transposta da Matriz")
  para i de 1 ate 3 faca
     para j de 1 ate 3 faca
        escreva(transpostaMulti[i,j]:4)
     fimpara
     escreval()
  fimpara
  Escreval()

 FimProcedimento
 
//----------------------------------------------------------------------
 Procedimento somarDiagonalPrincipal()
//----------------------------------------------------------------------
  Inicio
//Exibe matriz original 1
  EscrevaL("|---- Matriz 1 ----|")
  Para i <- 1 ate 4 faca
     Para j <- 1 ate 4 faca
        Escreva(soma4x4n3[i,j]:4)
     FimPara
     Escreval()
  FimPara

  soma <- 0
  para i de 1 ate 4 faca
    soma <- soma + soma4x4n3[i,i]
  fimpara
  Escreva("A soma da diagonal principal da primeira matriz �: ", soma)
  Escreval()

  //exibe matriz original 2
  EscrevaL("|---- Matriz 2 ----|")
  Para i <- 1 ate 5 faca
     Para j <- 1 ate 5 faca
        Escreva(subtrai5x5n2[i,j]:4)
     FimPara
     Escreval()
  FimPara
   
  soma <- 0
  para i de 1 ate 5 faca
    soma <- soma + subtrai5x5n2[i,i]
  fimpara
  Escreva("A soma da diagonal principal da segunda matriz �: ", soma)
  Escreval()
  
  //exibe matriz original
  Escreval("|---- Matriz 3 ----|")
  para i de 1 ate 3 faca
     para j de 1 ate 3 faca
        escreva(multi3x3n3[i,j], " ")
     fimpara
     escreval()
  fimpara
   
  soma <- 0
  para i de 1 ate 3 faca
    soma <- soma + multi3x3n3[i,i]
  fimpara
  Escreva("A soma da diagonal principal da terceira matriz �: ", soma)

  FimProcedimento

 
//----------------------------------------------------------------------
//Programa principal
//----------------------------------------------------------------------
Inicio

   opcao <- 1
   exibirPainel()

Fimalgoritmo