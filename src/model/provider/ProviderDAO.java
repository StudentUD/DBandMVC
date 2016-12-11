package model.provider;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.ComboBoxModel;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

import model.conextion.PostgresDBConexion;



public class ProviderDAO {

	public  void buscar(){
		
	}

	/* aqui se aplica el principio del liscok para ingresar los datos */
	PostgresDBConexion conexion = new PostgresDBConexion();;

	public void registrar(ProviderVo provider) {
	

		try {

			/* elemntos a cargar */
			String sNit = provider.getNitProvider();
			//double sPhobe = provider.getPhoneProvider();
			
			/* info de tabla */
			String tabla = "vehiculos";
			String columnas = "Placa_Vehiculo, Kilometraje_Vehiculo, Consumo_Vehiculo";
			String indexColumnas = "?, ?, ?";

			/* envio de datos */
			PreparedStatement stmt = conexion.getConnection().prepareStatement(
					"INSERT INTO " + tabla + " ( " + columnas + ")" + "VALUES (" + indexColumnas + ")");

			stmt.setString(1, sNit);
			//stmt.setDouble(2, sPhobe);
			//stmt.setDouble(3, sConsumo);

			int registro = stmt.executeUpdate();
			System.out.println("registrado : " + registro);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			JOptionPane.showMessageDialog(null, "No se Registro");
		}

	}

	
	///////////////////////////////////////////////////////////////////////
	//////////////////Corregir para que funcione commo combocx para persona//////////////////
	//////////////////////////////////////////////////////////////////777
	public ComboBoxModel<String> descargarProvider()

	{
		DefaultComboBoxModel<String> lsCombox = new DefaultComboBoxModel<>();

		conexion = new PostgresDBConexion();
		try {
			Statement stmDescargaInformacion = conexion.getConnection().createStatement();

			ResultSet rsSQL = stmDescargaInformacion.executeQuery("SELECT  * FROM persona ");

			while (rsSQL.next()) {

				lsCombox.addElement(rsSQL.getString("idPersona"));
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			JOptionPane.showMessageDialog(null, "No se Registro Problemas con servidor");
		}
		return lsCombox;

	}

	/* descraga toda la tabla, este se envia al defaul model de un jtable*/
	public DefaultTableModel descaragarDatos()

	{
		// CREACION DE UN MODLO PARA INSERTATR EN LA TABLA
		DefaultTableModel modelo = new DefaultTableModel();
		conexion = new PostgresDBConexion();
		try {

			// SENTENCIA PARA SQL
			Statement sentenciaDescargaInformacion = conexion.getConnection().createStatement();

			// SELLECIONARA TABLA PACIENTE
			ResultSet rsSQL = sentenciaDescargaInformacion.executeQuery("SELECT  * FROM persona ");

			// RESULTSET ME TRAE LA INFORMACION QUE SOLICITE
			ResultSetMetaData rsMetadata = rsSQL.getMetaData();

			// ME TRA EL NOMBRE DE COLUMNAS
			int numeroColumnas = rsMetadata.getColumnCount();

			for (int x = 1; x < numeroColumnas + 1; x++) {
				modelo.addColumn(rsMetadata.getColumnLabel(x));
			}

			while (rsSQL.next()) {
				Object[] fila = new Object[numeroColumnas];
				for (int i = 0; i < numeroColumnas; i++) {
					fila[i] = rsSQL.getObject(i + 1); // El
														// primer
														// indice
														// en
														// rs
					// es el 1, no el cero,
					// por eso se suma 1.
				}
				modelo.addRow(fila);
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			JOptionPane.showMessageDialog(null, "No se Registro Problemas con servidor");

		}
		return modelo;
	}

}
