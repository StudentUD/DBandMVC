package model.conextion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PostgresDBConexion {
	
	  private Connection connection;

	    //variables
	    private String ipDatabase = null;
	    private String port = null;
	    private String nameDatabase = null;

	    private String user = null;
	    private String password = null;

	    //constructores
	    public PostgresDBConexion() {

	        //urlConexionDefault
	        setIpDatabase("localhost");
	        setPort("5432");
	        setNameDatabase("Ferreteria");

	        //user info default
	        setUser("postgres");
        setPassword("postgres2016");
	    
//	        setUser("admin");
//	        setPassword("admin");
	    
	    
	    }
	    
	    

	    public PostgresDBConexion(String ip, String port, String nameDB, String user, String password) {
	        //url conection
	        setIpDatabase(ip);
	        setPort(port);
	        setNameDatabase(nameDB);

	        //user info
	        setUser(user);
	        setPassword(password);

	    }
	    
	    
	    public PostgresDBConexion(String nameDB, String user, String password) {
	        //url conection
	        setIpDatabase("localhost");
	        setPort("5432");
	        setNameDatabase(nameDB);

	        //user info
	        setUser(user);
	        setPassword(password);

	    }


	    //About conection
	    static String driverPATH = "org.postgresql.Driver";
	    static String driver = "jdbc:postgresql://";

	    public Connection conectar() {
	        String url = driver + ipDatabase + ":" + port + "/" + nameDatabase;

	        try {
	            Class.forName("org.postgresql.Driver");
	            this.connection = DriverManager.getConnection(url, this.user, this.password);
	            return this.connection;
	        } catch (SQLException | ClassNotFoundException ex) {
	            Logger.getLogger(PostgresDBConexion.class.getName()).log(Level.SEVERE, null, ex);
	            return null;
	        }
	    }

	    public void desconectar(Connection connection) {
	        try {
	            connection.close();
	        } catch (SQLException ex) {
	            Logger.getLogger(PostgresDBConexion.class.getName()).log(Level.SEVERE, null, ex);
	        }
	    }

	    //getter and setter
	    public void setIpDatabase(String ipDatabase) {
	        this.ipDatabase = ipDatabase;
	    }

	    public void setNameDatabase(String nameDatabase) {
	        this.nameDatabase = nameDatabase;
	    }

	    public void setPort(String port) {
	        this.port = port;
	    }

	    public void setUser(String user) {
	        this.user = user;
	    }

	    public void setPassword(String password) {
	        this.password = password;
	    }

		public Connection getConnection() {
			return conectar();
		}






}
