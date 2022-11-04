programa
{
	
	funcao inicio()
	{
		//Tabuada de soma e subtração

		inteiro a, b

		escreva("Digite um número inteiro maior que 0: ")
			leia(a)

		para(b = 0; b <= 10; b = b + 1){
			escreva(a, " + ", b, " = ", a + b, "\n")
		}

		escreva("\n")

		para(b = 0; b <= 10; b = b + 1){
			escreva(a, " - ", b, " = ", a - b, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */