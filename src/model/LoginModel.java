package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import model.conextion.PostgresDBConexion;

public class LoginModel {

	PostgresDBConexion conexion = new PostgresDBConexion("Ferreteria", "admin", "admin");

	public boolean singIn(String user, String password) {

		boolean isPassordOk = false;
		boolean isThere = false;

		String passwordQuery = null;

		try {
			// Stament genera una ejecion del query y en limpio, lo cual no
			// permite revisar errores
			// Statement comando = conexion.getConnection().createStatement();

			String sql = "SELECT idEmpleado,nomEmpleado FROM empleado WHERE idempleado = ? ";
			PreparedStatement consulta = conexion.getConnection().prepareStatement(sql);
			consulta.setInt(1, Integer.parseInt(user));
			ResultSet res = consulta.executeQuery();

			System.out.println(res);

			while (res.next()) {
				isThere = true;
				passwordQuery = (res.getString("nomEmpleado").toString());

			}
			res.close();
			// conexion.desconectar();
			System.out.println(passwordQuery);

			// while (resultado.next()) {
			// // nomEmpleados.put(resultado.getString("idEmpleado"),
			// resultado.getString("nomEmpleado").toLowerCase());
			// }
			// comando.close();

		} catch (SQLException e) {
			System.out.println(e);

		}

		if (passwordQuery.equals(password) && isThere) {

			isPassordOk = true;
		}

		return isPassordOk;

	}

	public void consultar() {
		try {
			Statement comando = conexion.getConnection().createStatement();
			String sql = "SELECT idEmpleado,nomEmpleado FROM EMPLEADO";
			ResultSet resultado = comando.executeQuery(sql);
			while (resultado.next()) {
				// nomEmpleados.put(resultado.getString("idEmpleado"),
				// resultado.getString("nomEmpleado").toLowerCase());
			}
			comando.close();

		} catch (SQLException e) {
			System.out.println(e);

		}
	}

	public boolean validar(String codigo, String nomEmpleado) {
		// int validacion = 0;
		// Iterator it = nomEmpleados.keySet().iterator();
		// while (it.hasNext()) {
		// String key = (String) it.next();
		// if (key.equals(codigo) && nomEmpleados.get(key).equals(nomEmpleado))
		// {
		// validacion = 1;
		// }
		//
		// }
		// return validacion == 1;

		return true;

	}

}
