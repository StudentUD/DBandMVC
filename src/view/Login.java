package view;

import java.awt.event.KeyEvent;

import javax.swing.GroupLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.LayoutStyle;
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

		setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		getContentPane().setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));

		
		getContentPane().add(lblName);
		getContentPane().add(txtName);
		getContentPane().add(lblPassword);
		getContentPane().add(txtPassword);
		getContentPane().add(btnSingIn);
		getContentPane().add(lblError);
		

		

		

		
	}// </editor-fold>

	
	
	void performace(){
		txtName.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				actionPerformed(evt);
			}
		});
		txtName.addKeyListener(new java.awt.event.KeyAdapter() {
			public void keyTyped(java.awt.event.KeyEvent evt) {
				keyTyped(evt);
			}
		});

		txtPassword.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				actionPerformed(evt);
			}
		});
		txtPassword.addKeyListener(new java.awt.event.KeyAdapter() {
			public void keyTyped(java.awt.event.KeyEvent evt) {
				contraseñaKeyTyped(evt);
			}

			private void contraseñaKeyTyped(KeyEvent evt) {
				// TODO Auto-generated method stub
				
			}
		});

		lblPassword.setText("Contraseña :");

		btnSingIn.setText("Ingresar");
		btnSingIn.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				actionPerformed(evt);
			}
		});

		lblError.setForeground(new java.awt.Color(255, 0, 0));
	}
	
}
