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
        setLocationRelativeTo(null);
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

        pack();

    }

    /**
     * getter and setter *
     */
    public JTextField getTxtDate() {
        return txtDate;
    }

    public void setTxtDate(JTextField txtDate) {
        this.txtDate = txtDate;
    }

    public JLabel getLblProveider() {
        return lblProveider;
    }

    public void setLblProveider(JLabel lblProveider) {
        this.lblProveider = lblProveider;
    }

    public JLabel getLblEmployee() {
        return lblEmployee;
    }

    public void setLblEmployee(JLabel lblEmployee) {
        this.lblEmployee = lblEmployee;
    }

    public JLabel getLblNoOrden() {
        return lblNoOrden;
    }

    public void setLblNoOrden(JLabel lblNoOrden) {
        this.lblNoOrden = lblNoOrden;
    }

    public JLabel getLblDate() {
        return lblDate;
    }

    public void setLblDate(JLabel lblDate) {
        this.lblDate = lblDate;
    }

    public JTextField getTxtEmployee() {
        return txtEmployee;
    }

    public void setTxtEmployee(JTextField txtEmployee) {
        this.txtEmployee = txtEmployee;
    }

    public JTextField getTxtNoOrden() {
        return txtNoOrden;
    }

    public void setTxtNoOrden(JTextField txtNoOrden) {
        this.txtNoOrden = txtNoOrden;
    }

    public JTextField getTxtProvider() {
        return txtProvider;
    }

    public void setTxtProvider(JTextField txtProvider) {
        this.txtProvider = txtProvider;
    }

    public JButton getBtnBSearchProvider() {
        return btnBSearchProvider;
    }

    public void setBtnBSearchProvider(JButton btnBSearchProvider) {
        this.btnBSearchProvider = btnBSearchProvider;
    }

    public JButton getBtnCancel() {
        return btnCancel;
    }

    public void setBtnCancel(JButton btnCancel) {
        this.btnCancel = btnCancel;
    }

    public JButton getBtnDone() {
        return btnDone;
    }

    public void setBtnDone(JButton btnDone) {
        this.btnDone = btnDone;
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

}
