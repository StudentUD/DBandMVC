package view;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.BoxLayout;
import java.awt.FlowLayout;
import javax.swing.JLabel;
import javax.swing.JComboBox;
import javax.swing.JButton;
import javax.swing.JSpinner;

public class SelectItems extends JFrame {

		
	private static final long serialVersionUID = 1L;
	private JPanel paneItemes;

	public SelectItems() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		paneItemes = new JPanel();
		paneItemes.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(paneItemes);
		paneItemes.setLayout(new BoxLayout(paneItemes, BoxLayout.Y_AXIS));
		
		JPanel paneHeader = new JPanel();
		paneItemes.add(paneHeader);
		paneHeader.setLayout(new BoxLayout(paneHeader, BoxLayout.X_AXIS));
		
		JLabel lblNewLabel = new JLabel("encabezado se sobrescibira luego con info de factura");
		paneHeader.add(lblNewLabel);
		
		JPanel panel = new JPanel();
		paneItemes.add(panel);
		
		JLabel lblNewLabel_1 = new JLabel("itmem ");
		panel.add(lblNewLabel_1);
		
		JButton btnRemoveItem = new JButton("Elimina Item");
		panel.add(btnRemoveItem);
		
		JPanel paneAddItem = new JPanel();
		paneItemes.add(paneAddItem);
		paneAddItem.setLayout(new BoxLayout(paneAddItem, BoxLayout.X_AXIS));
		
		JComboBox cbxTipo = new JComboBox();
		paneAddItem.add(cbxTipo);
		
		JComboBox cbxItem = new JComboBox();
		paneAddItem.add(cbxItem);
		
		JSpinner spQuantity = new JSpinner();
		paneAddItem.add(spQuantity);
		
		JButton btnAddItem = new JButton("Añadir Item");
		paneAddItem.add(btnAddItem);
		
		JPanel paneDesicion = new JPanel();
		paneItemes.add(paneDesicion);
		paneDesicion.setLayout(new BoxLayout(paneDesicion, BoxLayout.X_AXIS));
		
		JButton btnCancelar = new JButton("Cancelar");
		paneDesicion.add(btnCancelar);
		
		JButton btnOk = new JButton("Ok");
		paneDesicion.add(btnOk);
	}

}
