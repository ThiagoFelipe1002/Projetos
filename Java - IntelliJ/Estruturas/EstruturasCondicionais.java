package estruturascondicionais;

import java.util.Scanner;

public class EstruturasCondicionais {

/*Condição Simples*/

    /*public static void main(String[] args) {
        Scanner key = new Scanner(System.in);
        System.out.println("Primeira Nota: ");
        float n1 = key.nextFloat();
        System.out.println("Segunda Nota: ");
        float n2 = key.nextFloat();
        float m = (n1 + n2) / 2;
        System.out.println("Sua média foi " + m);
        if (m >= 9) {
            System.out.println("Parabéns!");
        }
    }

/*Condição Composta - Idade de maior ou de menor*/

    /*public static void main(String[] args) {
        Scanner t = new Scanner(System.in);
        System.out.println("Em que ano você nasceu?");
        int nasc = t.nextInt();
        int i = 2021 - nasc;
        if (i >= 18) {
            System.out.println("Maior Idade");
        } else {
            System.out.println("Menor de Idade");
        }
    }

 /*Condição Composta - Número é Par ou Ímpar*/

    /*public static void main(String[] args) {
        Scanner n = new Scanner(System.in);
        System.out.println("Digite um número inteiro:");
        int n1 = n.nextInt();
        if (n1%2==0) {
            System.out.println("O número " + n1 + " é Par!");
        } else {
            System.out.println("O número " + n1 + " é Ímpar!");
        }
    }

/*Condição Composta Encadeada - Obrigatoriedade do voto*/

    /*public static void main(String[] args) {
        Scanner key = new Scanner(System.in);
        System.out.println("Digite o ano que você nasceu:");
        int nasc = key.nextInt();
        int idade = 2021 - nasc;
        if (idade<16) {
            System.out.println("Nao pode votar!");
        } else {
            if ((idade>15 && idade<18) || (idade>70)) {
                System.out.println("Voto Opcional!");
            } else {
                System.out.println("Voto Obrigatório!");
            }
        }

    }

/*Condição de Múltipla Escolha*/

    public static void main(String[] args) {
        Scanner key = new Scanner(System.in);
        System.out.println("Digite a quantidade de pernas (1,2,4,8):");
        int perna = key.nextInt();
        String tipo;
        switch (perna) {
            case 1:
                tipo = "Saci";
                break;
            case 2:
                tipo = "Bípede";
                break;
            case 4:
                tipo = "Quadrúpede";
                break;
            case 8:
                tipo = "Aranha";
                break;
            default:
                tipo = "ET";
        }
        System.out.println(tipo);
    }
}

