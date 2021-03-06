package Datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FactoryConnection {
	private static FactoryConnection instancia;
	
	private String driver="com.mysql.cj.jdbc.Driver";
	private String host="jdbc:mysql://node3674-portaljava.sp.skdrive.net/telar";
	private String port="3306";
	private String user="root";
	private String user2="root";
	private String password="MLYygn76356";
	private String password2="lucas123";
	private String db="/telar?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private String host2="jdbc:mysql://localhost:"+port+db;
	private int conectados=0;
	private Connection con = null;

	private FactoryConnection() throws ClassNotFoundException {
		Class.forName(driver);
	}
	
	public static FactoryConnection getInstancia() throws ClassNotFoundException {
		if (instancia == null) {
			instancia = new FactoryConnection();
		}
		return instancia;
	}
	
	public Connection getConnection() {
		try {
		   if(con == null || con.isClosed()) {
			   con = DriverManager.getConnection(host, user, password);
			   conectados = 0;
		   }
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		conectados++;
		return con;
	}
	
	public void closeConnection() throws SQLException {
		conectados--;
		try {
			if (conectados<=0)
				con.close();
		} 
		catch (SQLException e) {
			throw new SQLException(e);
		}
		catch (NullPointerException e) {
			throw new SQLException(e);
		}
	}
}
