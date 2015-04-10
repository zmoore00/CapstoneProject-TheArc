package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.GroupHomes;

public class GroupHomeDAO {
  
	private static Connection connection=null;
	
		public synchronized ArrayList<GroupHome> getGroupHomes() {
	 	ArrayList<GroupHome> grouphomes = new ArrayList<GroupHome>();
	 	GroupHome grouphome;
	 	PreparedStatement statement=null;
		String preparedSQL = "SELECT * FROM ARC_GroupHome;";
		
		
	 try{
	    	connection = ConnectionDAO.getCon();
	    	statement = connection.prepareStatement(preparedSQL);
			ResultSet rs = statement.executeQuery();
			while(rs.next()){
				grouphome = new GroupHome();
				grouphome.setGRP_ID(rs.getString("GRP_ID"));
				grouphome.setGRP_Name(rs.getString("GRP_Name"));
				grouphome.setGRP_Add1(rs.getString("GRP_Add1"));
				grouphome.setGRP_Add2(rs.getString("GRP_Add2"));
				grouphome.setGRP_City(rs.getString("GRP_City"));
				grouphome.setGRP_State(rs.getString("GRP_State"));
				grouphome.setGRP_Zip(rs.getString("GRP_Zip"));
			}	
			rs.close();		
			statement.close();
			connection.close();
		}
	catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}
		return grouphomes;
	}
	
	public synchronized int addGroupHome(GroupHome grouphome){
		
	}
	

}
