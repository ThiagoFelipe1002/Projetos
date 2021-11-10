programa
{
	
	funcao inicio()
	{
			//Objetivo: Imagine uma cena de crime que uma pessoa é suspeita.
			//Pergunte um nome de uma pessoa e depois faça 5 perguntas a ela:
			//Telefonou para a vítima?
			//Esteve no local do crime?
			//Mora perto da vítima?
			//Devia para a vítima?
			//Já trabalhou com a vítima?
			//Se a pessoa responder positivamente a 2 questões ela deve ser classificada como “Suspeita”
			//entre 3 e 4 como “Cúmplice”
			//e 5 como “Assassino”
			//Caso contrário, ele será classificado como “Inocente”


			 cadeia nome, p1, p2, p3, p4, p5
			 inteiro soma
			 
			 
			 escreva("Digite seu nome: ")
			 leia(nome)
			 escreva("\n")
			 

			 escreva("Responda as perguntas com sim para positivo ou não para negativo.")
			 
			 escreva("\n")

			 escreva("Telefonou para a vítima?: ")
			 leia(p1)
			 
			 escreva("\n")

			 escreva("Esteve no local do crime?: ")
			 leia(p2)
			 
			 escreva("\n")

			 escreva("Mora perto da vítima?: ")
			 leia(p3)
			 
			 escreva("\n")

			 escreva("Devia para a vítima?: ")
			 leia(p4)
			 
			 escreva("\n")

			 escreva("Já trabalhou com a vítima?: ")
			 leia(p5)
			 
			 escreva("\n")

			 soma = 0
			 
			 se(p1 == "sim"){
			 	soma = soma + 1}

			 se(p2 == "sim"){
			 	soma = soma + 1}

			 se(p3 == "sim"){
			 	soma = soma + 1}

			 se(p4 == "sim"){
			 	soma = soma + 1}

			 se(p5 == "sim"){
			 	soma = soma + 1}

			 se(soma <= 1){
			 	escreva(nome + " é inocente!")}

			 se(soma == 2){
			 	escreva(nome + " é suspeito(a)!!")}

			 se(soma > 2 e soma < 5){
			 	escreva(nome + " é cúmplice!!!")}
		 
			 se(soma == 5){
			 	escreva(nome + " É O ASSASSINO!!!!!")}	 	

			 escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */