package Farias_Brito;
public class Executavel {
    public static void main(String[] args) {
        Funcionario fun = new Funcionario();

        fun.setNome("Thiago Felipe");
        fun.setFuncao("Analista de Qualidade - Q.A.");
        fun.setSalario(6000.00f);
        fun.setAumentarSalario(fun.getSalario() + (fun.getSalario() * 20 / 100));
        fun.print();
    }
}
