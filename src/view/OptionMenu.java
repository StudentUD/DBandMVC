package view;

import javax.swing.JFrame;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import java.awt.BorderLayout;

public class OptionMenu extends JFrame{
	private JButton btnNuevaOrden;
	private JButton btnSearchOrden;
	private JButton btnAddProvedor;
	public OptionMenu() {
		
		btnNuevaOrden = new JButton("Nueva orden");
		getContentPane().add(btnNuevaOrden, BorderLayout.NORTH);
		
		btnSearchOrden = new JButton("Buscar Orden");
		getContentPane().add(btnSearchOrden, BorderLayout.CENTER);
		
		btnAddProvedor = new JButton("añadir provedor");
		getContentPane().add(btnAddProvedor, BorderLayout.SOUTH);
	}
}
