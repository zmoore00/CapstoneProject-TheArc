package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDAO {
	
	private static Connection connection=null;
	
	public static Connection getCon(){
		Connection conn=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://");
		}
		catch (SQLException ex){
			System.out.println("Error" + ex);
		}
		catch (NullPointerException ex){
			System.out.println("Error" + ex);
		}
		catch (ClassNotFoundException ex){
			System.out.println("Error" + ex);
		}
		return conn;
	}
	
}
