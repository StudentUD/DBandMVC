package view;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;

public class OptionMenu extends JFrame {

	private static final long serialVersionUID = 1L;
	private JButton btnNuevaOrden;
	private JButton btnSearchOrden;
	private JButton btnAddProvedor;

	public OptionMenu() {
		getContentPane().setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));
		setLocationRelativeTo(null);

		btnNuevaOrden = new JButton("Nueva orden");
		getContentPane().add(btnNuevaOrden);

		btnSearchOrden = new JButton("Buscar Orden");
		getContentPane().add(btnSearchOrden);

		btnAddProvedor = new JButton("añadir provedor");
		getContentPane().add(btnAddProvedor);
		pack();
	}

}
