programa
{	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		//Voce deve criar um programa que calcule o total em dinheiro que uma pessoa irá receber.
		//Primeiro voce deve considerar 3 situacoes:
		//- Demissão sem justa causa (nessa caso a empresa deverá pagar 40% de FGTS - multa)
		//- Demissao de comum acordo (nesse caso a empresa só pagará 20% de multa)
		//- Pedido de demissao (A empresa não paga multa e o empregado não recebe FGTS do banco também
		//Depois de receber essa informação, se necessário, receba o valor em conta FGTS do usuário 
		//para fazer o calculo total. (Multa + Saque). 
		//13 salario - Calcule também o 13 salario do usuário considerando que ele
		//poderá receber de forma proporcional caso ele esteja sendo demitido no meio 
		//do ano por exemplo (talvez seja necessario perguntar a data que ele esta sendo demitido
		//Férias
		//Calcule o valor de férias que será indenizado caso o usuário tenha ferias dentro
		//ou o proporcional aos meses que ele trabalhou na empresa caso ele tenha
		//menos de um ano de empresa. Nesse valor deve ser adicionado um terço previsto em lei
		//OBS: Esse programa nao havera necessidade de calcular descontos que sao 
		//feitos pelo governos ou outros valores que nao mencionei. Só necessario FGTS
		//13 Salario e Ferias sem calcular descontos de INSS.

		real salario, salpro, fgts, multa, decimo, dec, fgtsmulta40, fgtsmulta20, tercoferias, valferias, total
		cadeia nome, motivo, feriasv, texto, ferias, textoferias
		inteiro diacont, mescont, anocont, diadem, mesdem, anodem, dias = 0, Tdias, Tmeses, Tanos, Tempo
		

		escreva("Digite seu nome completo: \n","\n")
		leia(nome)

		escreva("Digite o dia de sua contratação no formato dd: \n","\n")
		leia(diacont)

		escreva("Digite o mes de sua contratação no formato mm: \n","\n")
		leia(mescont)

		escreva("Digite o ano de sua contratação no formato aaaa: \n","\n")
		leia(anocont)

		escreva("Digite o dia de sua demissão no formato dd: \n","\n")
		leia(diadem)

		escreva("Digite o mes de sua demissão no formato mm: \n","\n")
		leia(mesdem)

		escreva("Digite o ano de sua demissão no formato aaaa: \n","\n")
		leia(anodem)

		escreva("Digite o motivo de sua demissão ('s' - sem justa causa, 'a' - acordo ou 'p' - pedido de demissão): \n","\n")
		leia(motivo)

		escreva("Digite o seu último salário (0000.00) \n","\n")
		leia(salario)

		escreva("possui férias vencidas? (responda 's' para sim ou 'n' para não)", "\n","\n")
		leia(ferias)

//calculando tempo de serviço:
		enquanto(anocont < anodem ou mescont < mesdem ou diacont < diadem){
			dias++
			diacont++
			se(diacont > 30){
				diacont = 1
				mescont++
				se(mescont > 12){
					anocont++
					mescont = 1}
					}
				}

//calculando FGTS:
		Tanos = (dias / 365)
		Tmeses = (dias - (Tanos * 365)) / 30
		Tdias = dias - (Tanos * 365) - (Tmeses * 30)
		fgts = mat.arredondar(((Tanos * salario) + ((salario / 12) * Tmeses) + ((salario / 365) * Tdias)), 2)
		
//calculando multa contratual:
		se(motivo == "s" ou motivo == "S"){
			multa = mat.arredondar((fgts * 1.4) - fgts, 2)}
			senao{
				se(motivo == "a" ou motivo == "A"){
					multa = mat.arredondar((fgts * 1.2) - fgts, 2)}
					senao{
						multa = 0.00}
			}
		
//detalhando a tipo de demissão
		se(motivo == "s" ou motivo == "S"){
			texto = "'Demissão sem justa causa,'"}
			senao{
				se(motivo == "a" ou motivo == "A"){
					texto = "'Acordo de demissão,'"}
					senao{
						texto = "'Pedido de demissão,'"}
			}
		
//calculando 13º proporcional:
		dec = mat.arredondar(((salario/365) * (dias - (Tanos * 365))), 2)

//calculando férias vencidas:
		se(ferias == "s"){
			valferias = mat.arredondar((salario + (salario / 3)) + (dec + (dec / 3)), 2)}
			senao{
				valferias = mat.arredondar(dec + (dec / 3), 2)}

//Salário Proporcional
		se(Tdias > 0){
			salpro = mat.arredondar((fgts * 1.2) - fgts, 2)}
			senao{
				salpro = 0.00}

//Cálculo Total:
		total = mat.arredondar(salpro + dec + valferias + fgts + multa, 2)
		
//texto férias:
		se(ferias == "s"){
			escreva("Olá Sr(a) ", nome, "!", "\n","\n")
			escreva("Seu tempo de serviço nesta empresa foi de ", Tanos, " ", "anos", " ", Tmeses, " ", "meses", " ", "e", " ", Tdias, " ", "dias.", "\n","\n")
			escreva("Com base no seu último salário de R$ ", salario, "\n","\n")
			escreva("seu saldo no FGTS é: R$ ", fgts, ".", "\n","\n")
			escreva("Como o motivo de sua demissão foi: ", "\n","\n")
			escreva(texto, " ", " ", "\n","\n")
			escreva("sua multa contratual será no valor de: R$ ", multa, "\n","\n")
			escreva("Você tem um saldo de R$ ", salpro, " ", "referente ao salário proporcional deste mês trabalhado.", "\n","\n")
			escreva("Você tem um saldo de R$ ", dec, " ", "referente ao proporcional do 13º Salário.", "\n","\n")
			escreva("Como você possui férias vencidas, você tem um saldo de R$ ", valferias, " ", "referente à estas + 1/3.", "\n","\n")
			escreva("O total de sua recisão de contrato será de R$ ", total, " ", "com todos os valores descritos acima já inclusos.", "\n","\n")
			escreva("Nestes valores não foram deduzidos INSS nem IRRF, conforme solicitado.", "\n","\n")
			escreva("Desejamos sucesso na sua nova jornada profissional!","\n","\n")
			escreva("Para nós foi um honra tê-lo(a) como colaborador.","\n","\n")}
			senao{
				escreva("Olá Sr(a) ", nome, "!\n","\n")
				escreva("Seu tempo de serviço nesta empresa foi de ", Tanos, " ", "anos", " ", Tmeses, " ", "meses", " ", "e", " ", Tdias, " ", "dias.", "\n","\n")
				escreva("Com base no seu último salário de R$ ", salario, "\n","\n")
				escreva("seu saldo no FGTS é: R$ ", fgts, ".", "\n","\n")
				escreva("Como o motivo de sua demissão foi: ", "\n","\n")
				escreva(texto, " ", " ", "\n","\n")
				escreva("sua multa contratual será no valor de: R$ ", multa, "\n","\n")
				escreva("Você tem um saldo de R$ ", salpro, " ", "referente ao salário proporcional deste mês trabalhado.", "\n","\n")
				escreva("Você tem um saldo de R$ ", dec, " ", "referente ao proporcional do 13º Salário.", "\n","\n")
				escreva("Como você não possui férias vencidas, você tem um saldo proporcional de R$ ", valferias, " ", "referente à estas + 1/3.", "\n","\n")
				escreva("O total de sua recisão de contrato será de R$ ", total, " ", "com todos os valores descritos acima já inclusos.", "\n","\n")
				escreva("Nestes valores 'NÃO' foram deduzidos INSS nem IRRF, conforme solicitado.", "\n","\n")
				escreva("Desejamos sucesso na sua nova jornada profissional!","\n","\n")
				escreva("Para nós foi um honra tê-lo(a) como colaborador.","\n","\n")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5271; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */