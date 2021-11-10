programa
{
	
	funcao inicio()
	{
		//Definir o valor da comissão e ver o salário bruto no final do mês

		real salario, vendas, comissao, salariocomcomissao
		
		escreva("Digite o Salário Base: ")
		leia(salario)

		escreva("Digite o Valor das Vendas: ")
		leia(vendas)

		escreva("Digite o % de comissao (apenas números): ")
		leia(comissao)

		escreva("\n")

		comissao = comissao / 100 * vendas

		
		escreva("O Valor da sua comissão é: ", comissao)
		
		escreva("\n")

		escreva("O valor total recebido do mês será: ", salario + comissao)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 547; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */