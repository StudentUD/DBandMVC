package view;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

import javax.swing.WindowConstants;
import javax.swing.BoxLayout;

public class Login extends JFrame {

    private static final long serialVersionUID = 1L;
    // Components                    
    private JTextField txtPassword;
    private JLabel lblError;
    private JButton btnSingIn;
    private JLabel lblUserLogin;
    private JLabel lblPassword;
    private JTextField txtUserLogin;
    // End of variables declaration         

    public Login() {

        lblUserLogin = new JLabel("Usuario");

        txtUserLogin = new JTextField();
        txtPassword = new JTextField();
        lblPassword = new JLabel("Contraseña");
        btnSingIn = new JButton("Acceder");
        lblError = new JLabel("############");

        setLocationRelativeTo(null);
        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));

        getContentPane().add(lblUserLogin);
        getContentPane().add(txtUserLogin);
        getContentPane().add(lblPassword);
        getContentPane().add(txtPassword);
        getContentPane().add(btnSingIn);
        getContentPane().add(lblError);

        pack();

    }// </editor-fold>

    //////getter and setters
    public JTextField getTxtPasswordLogin() {
        return txtPassword;
    }

    public void setTxtPasswordLogin(JTextField txtPassword) {
        this.txtPassword = txtPassword;
    }

    public JLabel getLblError() {
        return lblError;
    }

    public void setLblError(JLabel lblError) {
        this.lblError = lblError;
    }

    public JButton getBtnSingIn() {
        return btnSingIn;
    }

    public void setBtnSingIn(JButton btnSingIn) {
        this.btnSingIn = btnSingIn;
    }

    public JLabel getLblUserLogin() {
        return lblUserLogin;
    }

    public void setLblUserLogin(JLabel lblName) {
        this.lblUserLogin = lblName;
    }

    public JLabel getLblPasswordLogin() {
        return lblPassword;
    }

    public void setLblpasswordLogin(JLabel lblPassword) {
        this.lblPassword = lblPassword;
    }

    public JTextField getTxtUserLogin() {
        return txtUserLogin;
    }

    public void setTxtUserLogin(JTextField txtName) {
        this.txtUserLogin = txtName;
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

}
