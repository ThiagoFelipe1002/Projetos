programa
{
	
	funcao inicio()
	{
		//recebe um numero INTEIRO e depois digitar na tela todos os números pares até 
		//o numero digitado. Por exemplo, se o numero é 100, ele deve aparecer 2,4,6,8.. até 100

		inteiro x, n

		escreva("Digite um número inteiro: ")
		leia(n)

		escreva("Os números pares que antecedem o ", n, " ", "são: \n" )
		
		para(x = 0; x < n; x += 2) {
			escreva(x, "\n")
		}
			
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 323; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */