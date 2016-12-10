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

	private JLabel lblNameProvider;
	private JTextField txtNameProvider;

	private JLabel lblPhone;
	private JTextField txtPhone;

	private JLabel lblAdressPovider;
	private JTextField txtAdressProvider;

	private JLabel lblError;

	private JButton btnSingUpProvider;
	private JButton btnCancelSingUpProvider;

	// End of variables declaration

	public Provider() {

		lblNameProvider = new JLabel("Nombre");
		txtNameProvider = new JTextField();

		lblPhone = new JLabel("Telefono");
		txtPhone = new JTextField();

		lblAdressPovider = new JLabel("Telefono");
		txtAdressProvider = new JTextField();

		btnSingUpProvider = new JButton("Registrar");
		btnCancelSingUpProvider = new JButton("Cancelae");

		lblError = new JLabel("############");

		setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		getContentPane().setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));

		getContentPane().add(lblNameProvider);
		getContentPane().add(txtNameProvider);

		getContentPane().add(lblAdressPovider);
		getContentPane().add(txtAdressProvider);

		getContentPane().add(lblPhone);
		getContentPane().add(txtPhone);

		getContentPane().add(btnSingUpProvider);
		getContentPane().add(btnCancelSingUpProvider);

		getContentPane().add(lblError);
		
		setLocationRelativeTo(null);
		pack();

	}// </editor-fold>

}
