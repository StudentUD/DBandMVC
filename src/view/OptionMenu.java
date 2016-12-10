package view;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;

public class OptionMenu extends JFrame {

	private static final long serialVersionUID = 1L;
	private JButton btnNewOrden;
	private JButton btnSearchOrden;
	private JButton btnAddProvedor;

	public OptionMenu() {
		getContentPane().setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));
		setLocationRelativeTo(null);

		btnNewOrden = new JButton("Nueva orden");
		getContentPane().add(btnNewOrden);

		btnSearchOrden = new JButton("Buscar Orden");
		getContentPane().add(btnSearchOrden);

		btnAddProvedor = new JButton("añadir provedor");
		getContentPane().add(btnAddProvedor);
		pack();
	}

	
	
	
	/**getters and setters**/
	
	public JButton getBtnNewOrden() {
		return btnNewOrden;
	}

	public void setBtnNewOrden(JButton btnNuevaOrden) {
		this.btnNewOrden = btnNuevaOrden;
	}

	public JButton getBtnSearchOrden() {
		return btnSearchOrden;
	}

	public void setBtnSearchOrden(JButton btnSearchOrden) {
		this.btnSearchOrden = btnSearchOrden;
	}

	public JButton getBtnAddProvedor() {
		return btnAddProvedor;
	}

	public void setBtnAddProvedor(JButton btnAddProvedor) {
		this.btnAddProvedor = btnAddProvedor;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	


	
	
	
	
}
