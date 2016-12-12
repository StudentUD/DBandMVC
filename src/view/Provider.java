package view;


import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.WindowConstants;

public class Provider extends JFrame {

	private static final long serialVersionUID = 1L;
	// Components


	private JLabel lblNitProvider;
	private JTextField txtNitProvider;
	
	private JLabel lblNameProvider;
	private JTextField txtNameProvider;

	private JLabel lblPhone;
	private JTextField txtPhone;

	private JLabel lblAdressPovider;
	private JTextField txtAdressProvider;

	private JLabel lblError;

	private JButton btnSingUpProvider;
	private JButton btnCancelSingUpProvider;
	private JButton btnUpdateSingUpProvider;
	// End of variables declaration

	public Provider() {
		
		setLocationRelativeTo(null);

		lblNitProvider = new JLabel("Nit");
		txtNitProvider = new JTextField();

		
		lblNameProvider = new JLabel("Nombre");
		txtNameProvider = new JTextField();

		lblPhone = new JLabel("Telefono");
		txtPhone = new JTextField();

		lblAdressPovider = new JLabel("Direccion");
		txtAdressProvider = new JTextField();

		btnSingUpProvider = new JButton("Registrar");
		btnCancelSingUpProvider = new JButton("Cancelar");
		btnUpdateSingUpProvider = new JButton("Actualizar");

		
		lblError = new JLabel("############");

		setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		getContentPane().setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));

		
		getContentPane().add(lblNitProvider);
		getContentPane().add(txtNitProvider);
		
		getContentPane().add(lblNameProvider);
		getContentPane().add(txtNameProvider);

		getContentPane().add(lblAdressPovider);
		getContentPane().add(txtAdressProvider);

		getContentPane().add(lblPhone);
		getContentPane().add(txtPhone);

		getContentPane().add(btnSingUpProvider);
		getContentPane().add(btnCancelSingUpProvider);
		getContentPane().add(btnUpdateSingUpProvider);
		
		
		getContentPane().add(lblError);
	
		pack();

	}// </editor-fold>

	public JLabel getLblNitProvider() {
		return lblNitProvider;
	}

	public void setLblNitProvider(JLabel lblNitProvider) {
		this.lblNitProvider = lblNitProvider;
	}

	public JTextField getTxtNitProvider() {
		return txtNitProvider;
	}

	public void setTxtNitProvider(JTextField txtNitProvider) {
		this.txtNitProvider = txtNitProvider;
	}

	public JLabel getLblNameProvider() {
		return lblNameProvider;
	}

	public void setLblNameProvider(JLabel lblNameProvider) {
		this.lblNameProvider = lblNameProvider;
	}

	public JTextField getTxtNameProvider() {
		return txtNameProvider;
	}

	public void setTxtNameProvider(JTextField txtNameProvider) {
		this.txtNameProvider = txtNameProvider;
	}

	public JLabel getLblPhone() {
		return lblPhone;
	}

	public void setLblPhone(JLabel lblPhone) {
		this.lblPhone = lblPhone;
	}

	public JTextField getTxtPhone() {
		return txtPhone;
	}

	public void setTxtPhone(JTextField txtPhone) {
		this.txtPhone = txtPhone;
	}

	public JLabel getLblAdressPovider() {
		return lblAdressPovider;
	}

	public void setLblAdressPovider(JLabel lblAdressPovider) {
		this.lblAdressPovider = lblAdressPovider;
	}

	public JTextField getTxtAdressProvider() {
		return txtAdressProvider;
	}

	public void setTxtAdressProvider(JTextField txtAdressProvider) {
		this.txtAdressProvider = txtAdressProvider;
	}

	public JLabel getLblError() {
		return lblError;
	}

	public void setLblError(JLabel lblError) {
		this.lblError = lblError;
	}

	public JButton getBtnSingUpProvider() {
		return btnSingUpProvider;
	}

	public void setBtnSingUpProvider(JButton btnSingUpProvider) {
		this.btnSingUpProvider = btnSingUpProvider;
	}

	public JButton getBtnCancelSingUpProvider() {
		return btnCancelSingUpProvider;
	}

	public void setBtnCancelSingUpProvider(JButton btnCancelSingUpProvider) {
		this.btnCancelSingUpProvider = btnCancelSingUpProvider;
	}
	
	
	

}
