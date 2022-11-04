package estruturasderepetição;

import java.util.Scanner;

/*while(Enquanto), do/while(Faça/Enquanto).

/*Enquanto*/
/*Repetição com Teste Lógico no Início - Cambalhota Eterna com Contador*/
public class EstruturasDeRepetição {
    /*public static void main(String[] args) {
        int cc = 0;
        while (cc>=0) {
            System.out.println("Cambalhota " + cc);
            cc++;
            }
    }*/

    /*Mudando o Fluxo de um Laço com "continue"*/

    /*public static void main(String[] args) {
        int cc = 0;
        while (cc < 10) {
            cc++;
            if (cc == 5 || cc == 7 || cc == 9) {
                continue;
            }
            System.out.println("Cambalhota " + cc);
        }
    }*/

    /*Mudando o Fluxo de um Laço com "break"*/

    /*public static void main(String[] args) {
        int cc = 0;
            while (cc < 10) {
                cc++;
                if (cc == 2 || cc == 3 || cc == 4) {
                    continue;
                }
                if (cc == 7) {
                    break;
                }
                System.out.println("Cambalhota " + cc);
            }
      }*/

    /*Repita*/

    /*public static void main(String[] args) {
        int cc = 0;
        do {
            System.out.println("Cambalhota " + cc);
            cc++;
        } while (cc<4);
    }*/

    /*Repetição com Teste Lógico no Final*/

    /*public static void main(String[] args) {
        int n, s=0;
        String resp;
        Scanner teclado = new Scanner(System.in);
        do {
            System.out.println("Digite um número: ");
            n = teclado.nextInt();
            s += n; // s = s + n;
            System.out.println("Quer continuar? [S/N]");
            resp = teclado.next();
        } while (resp.equals("s"));
        System.out.println("A soma de todos os valores é: " + s);
    }*/

    /*Repetição com Variável de Controle*/

    /*public static void main(String[] args) {
        for (int cc=1; cc<5; cc++) {
            System.out.println("Cambalhota " + cc);
        }
    }*/

    /*Laços Alinhados*/

    public static void main(String[] args) {
        for (int i = 1; i < 4; i++) {
            for (int j = 0; j < 3; j+=2) {
                System.out.println(i + " | " + j);
            }
        }
    }
}

