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
    private JLabel lblName;
    private JLabel lblPassword;
    private JTextField txtName;
    // End of variables declaration         
	
	
	
	
	public Login() {

		lblName = new JLabel("Nombre");
		
		txtName = new JTextField();
		txtPassword = new JTextField();
		lblPassword = new JLabel("Contraseña");
		btnSingIn = new JButton("Acceder");
		lblError = new JLabel("############");
		
		
		setLocationRelativeTo(null);
		setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		getContentPane().setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));

		
		getContentPane().add(lblName);
		getContentPane().add(txtName);
		getContentPane().add(lblPassword);
		getContentPane().add(txtPassword);
		getContentPane().add(btnSingIn);
		getContentPane().add(lblError);
		

		pack();

		

		
	}// </editor-fold>




	//////getter and setters


	public JTextField getTxtPassword() {
		return txtPassword;
	}




	public void setTxtPassword(JTextField txtPassword) {
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




	public JLabel getLblName() {
		return lblName;
	}




	public void setLblName(JLabel lblName) {
		this.lblName = lblName;
	}




	public JLabel getLblPassword() {
		return lblPassword;
	}




	public void setLblPassword(JLabel lblPassword) {
		this.lblPassword = lblPassword;
	}




	public JTextField getTxtName() {
		return txtName;
	}




	public void setTxtName(JTextField txtName) {
		this.txtName = txtName;
	}




	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
	


}
