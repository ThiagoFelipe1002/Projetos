import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class TelaSoma extends JFrame {
    private JPanel meuPainel;
    private JTextField txtN1;
    private JTextField txtN2;
    private JButton Bot;
    private JLabel Soma;
    private JLabel Res;

    public TelaSoma(String title) {
        super(title);

        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setContentPane(meuPainel);
        this.pack();
        Bot.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int N1 = Integer.parseInt(txtN1.getText());
                int N2 = Integer.parseInt(txtN2.getText());
                int S = N1 + N2;
                Res.setText(Integer.toString(S));
            }
        });
    }
    public static void main(String[] args) {
        JFrame frame = new TelaSoma("Calculadora Soma");
        frame.setVisible(true);
    }
}
