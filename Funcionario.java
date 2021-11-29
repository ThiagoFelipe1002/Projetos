package Farias_Brito;

public class Funcionario {
    private String nome; //Nome do funcionário.
    private String funcao; //Função
    private double salario; //Salário
    private static int numFuncionarios; //Quantidade de funcionários
    double aumentarSalario; //Salário com % de aumento (20%).

    public String getNome() {
        return this.nome;}
    public void setNome(String n) {
        this.nome = n;
    }

    public String getFuncao() {
        return this.funcao;}
    public void setFuncao(String f) {
        this.funcao = f;
    }

    public double getSalario() {
        return this.salario;}
    public void setSalario(double s) {
        this.salario = s;
    }

    public double getAumentarSalario(){
        return this.aumentarSalario;}
    public void setAumentarSalario(double as){
        this.aumentarSalario = as;
    }

    void print() {
        System.out.println("Nome do funcionário: " + this.nome); //"this" é referencia ao objeto que chamou (func)
        System.out.println("Função: " + this.funcao);
        System.out.println("Salário: " + this.salario);
        System.out.println(("Salário com aumento de 20%: " + aumentarSalario));
    }
}