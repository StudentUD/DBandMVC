package view;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.BoxLayout;
import java.awt.FlowLayout;
import java.util.ArrayList;

import javax.swing.JLabel;
import javax.swing.JComboBox;
import javax.swing.JButton;
import javax.swing.JSpinner;
import javax.swing.DefaultComboBoxModel;

public class SelectItems extends JFrame {

		
	private static final long serialVersionUID = 1L;
	private JPanel paneItemes;
	private JButton btnAddItem;
	
	
	ArrayList<JPanel> aItems = new ArrayList<>();
	private JComboBox cbxTipo;
	private JComboBox cbxItem;
	private JSpinner spQuantity;

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
		
		
		JPanel paneAddItem = new JPanel();
		paneItemes.add(paneAddItem);
		paneAddItem.setLayout(new BoxLayout(paneAddItem, BoxLayout.X_AXIS));
		
		cbxTipo = new JComboBox();
		cbxTipo.setModel(new DefaultComboBoxModel(new String[] {"tipos"}));
		paneAddItem.add(cbxTipo);
		
		cbxItem = new JComboBox();
		cbxItem.setModel(new DefaultComboBoxModel(new String[] {"item"}));
		paneAddItem.add(cbxItem);
		
		spQuantity = new JSpinner();
		paneAddItem.add(spQuantity);
		
		btnAddItem = new JButton("Añadir Item");
		btnAddItem.addActionListener((e) -> onActionAdditem());
		paneAddItem.add(btnAddItem);
		
		
		
		
		JPanel paneDesicion = new JPanel();
		paneItemes.add(paneDesicion);
		paneDesicion.setLayout(new BoxLayout(paneDesicion, BoxLayout.X_AXIS));
		
		JButton btnCancelar = new JButton("Cancelar");
		paneDesicion.add(btnCancelar);
		
		JButton btnOk = new JButton("Ok");
		paneDesicion.add(btnOk);
	}
	
	
	
	private void onActionAdditem(){
		String tipo = cbxTipo.getSelectedItem().toString();
		String item = cbxItem.getSelectedItem().toString();
		String cantidad = spQuantity.getValue().toString();
		
		System.out.println(tipo);
		addItemsPane(tipo, item, cantidad);
		
	}
	
	private void   addItemsPane(String type, String item, String quantity){
		
		JPanel panelDetailItem = new JPanel();
		paneItemes.add(panelDetailItem);
		
		JLabel lblNewLabel_1 = new JLabel(type +item+ quantity);
		panelDetailItem.add(lblNewLabel_1);
		
		JButton btnRemoveItem = new JButton("Elimina Item");
		panelDetailItem.add(btnRemoveItem);
		
	
		aItems.add(panelDetailItem);
		paneItemes.add(panelDetailItem);
		this.validate();
	}

}
