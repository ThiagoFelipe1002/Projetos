package operadoresrelacionais;

public class OperadoresRelacionais {
    public static void main(String[] args) {
        String nome1 = "Gustavo";
        String nome2 = new String("Gustavo");
        String res;
        res = (nome1==nome2)?"Igual":"Diferente";
        System.out.println(res);
    }
}
