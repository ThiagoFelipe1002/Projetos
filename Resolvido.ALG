Algoritmo "victor"

Var
   num : inteiro
   cont: inteiro
   soma: inteiro
   qtd: inteiro

Inicio

   cont <- 0
   qtd <- 0
   soma <- 0

   para cont de 1 ate 6 faca
      escreval("Digite um valor:")
      leia(num)
      cont <- cont + 1

      se(num >= 0) e (num <= 10) entao //Qtd de números ente 0 e 10.
         qtd <- qtd + 1
      fimse

      se(num mod 2) <> 0 entao //Soma dos números ímpares.
         soma <- soma + num
      fimse
   fimpara

   escreval("A quantidade de valores digitados que está entre 0 e 10 é:",qtd)

   escreval ("A soma dos números ímpares digitados é:",soma)

fimalgoritmo