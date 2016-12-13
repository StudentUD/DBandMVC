package view;



import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

import javax.swing.WindowConstants;

import java.awt.GridLayout;


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
		setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
				getContentPane().setLayout(new GridLayout(0, 1, 0, 0));
		
				lblUserLogin = new JLabel("Usuario");
						getContentPane().add(lblUserLogin);
		
		txtUserLogin = new JTextField();
		getContentPane().add(txtUserLogin);
		lblPassword = new JLabel("Contraseña");
		getContentPane().add(lblPassword);
		txtPassword = new JTextField();
		getContentPane().add(txtPassword);
		btnSingIn = new JButton("Acceder");
		getContentPane().add(btnSingIn);
		lblError = new JLabel("");
		getContentPane().add(lblError);
		

		
		setLocationRelativeTo(null);
		setSize(500, 200);
		
		
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
		lblError.validate();
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

}
