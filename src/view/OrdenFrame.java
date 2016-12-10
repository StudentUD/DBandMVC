package view;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class OrdenFrame extends JFrame {


	private static final long serialVersionUID = 1L;
	
	private JTextField txtDate;
	private JLabel lblProveider;
	private JLabel lblEmployee;
	private JLabel lblNoOrden;
	private JLabel lblDate;
	private JTextField txtEmployee;
	private JTextField txtNoOrden;
	private JTextField txtProvider;
	private JButton btnBSearchProvider;
	private JButton btnCancel;
	private JButton btnDone;

	public OrdenFrame() {
		getContentPane().setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));

		lblDate = new JLabel("Fecha");
		getContentPane().add(lblDate);

		txtDate = new JTextField();
		txtDate.setText("fecha");
		getContentPane().add(txtDate);
		txtDate.setColumns(10);

		lblNoOrden = new JLabel("No Orden");
		getContentPane().add(lblNoOrden);

		txtNoOrden = new JTextField();
		txtNoOrden.setText("No orden");
		getContentPane().add(txtNoOrden);
		txtNoOrden.setColumns(10);

		lblProveider = new JLabel("Proveedor");
		getContentPane().add(lblProveider);

		txtProvider = new JTextField();
		txtProvider.setText("Proovedor");
		getContentPane().add(txtProvider);
		txtProvider.setColumns(10);

		lblEmployee = new JLabel("Emleado");
		getContentPane().add(lblEmployee);

		txtEmployee = new JTextField();
		txtEmployee.setText("empleado");
		getContentPane().add(txtEmployee);
		txtEmployee.setColumns(10);

		btnBSearchProvider = new JButton("Busca proveedor");
		btnBSearchProvider.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			}
		});
		getContentPane().add(btnBSearchProvider);

		btnCancel = new JButton("Cancelar");
		getContentPane().add(btnCancel);

		btnDone = new JButton("Hecho");
		getContentPane().add(btnDone);

	}

}
