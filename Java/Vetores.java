package vetores;

import java.lang.reflect.Array;
import java.util.Arrays;

public class Vetores {
    /*public static void main(String[] args) {
        int n[] = {3,2,8,7,5,4};
        System.out.println("Total de casas é: " + n.length);
        for (int c=0; c<=n.length-1; c++) {
            System.out.println("Na posição " + c + " temos o valor: " + n[c]);
        }

    }*/
    /*public static void main(String[] args) {
        String mes[] = {"Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez"};
        int tot[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        for(int c=0; c<mes.length; c++) {
            System.out.println("O mês de " + mes[c] + " tem " + tot[c] + " dias ao todo.");
        }
    }*/

    /*public static void main(String[] args) {
        int num[] = {3, 5, 1, 8, 4};
        Arrays.sort(num);//coloca os vetores em ordem.
        for (int valor : num) {
            System.out.println(valor);
        }
    }*/
    /*public static void main(String[] args) {
        int num[] = {3, 5, 1, 8, 4};
        int pos = Arrays.binarySearch(num, 1);//Procura em qual posição está o número.
        System.out.println("Encontrei o valor na posição " + pos);
    }*/

    public static void main(String[] args) {
        int v[] = new int[10];
    Arrays.fill(v, 8);//Preenche todos os espaços com o mesmo valor.
        for (int valor: v) {
            System.out.println(valor);
        }
    }
}