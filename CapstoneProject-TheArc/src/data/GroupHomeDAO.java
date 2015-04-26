package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.GroupHome;

public class GroupHomeDAO {
  
	private static Connection connection=null;
	
		public synchronized static ArrayList<GroupHome> getGroupHomes() {
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
		int status=0;
		String preparedSQL = "INSERT INTO ARC_GroupHome(GRP_ID,GRP_Name,GRP_Add1,GRP_Add2,GRP_City,GRP_State,GRP_Zip) VALUES(?,?,?,?,?,?,?);";
		PreparedStatement statement=null;
		
		try {
			connection = ConnectionDAO.getCon();
			statement = connection.prepareStatement(preparedSQL);
			statement.setString(1, grouphome.getGRP_ID());
			statement.setString(2, grouphome.getGRP_Name());
			statement.setString(3, grouphome.getGRP_Add1());
			statement.setString(4, grouphome.getGRP_Add2());
			statement.setString(5, grouphome.getGRP_City());
			statement.setString(6, grouphome.getGRP_State());
			statement.setString(7, grouphome.getGRP_Zip());
			
			status = statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public synchronized int removeGroupHome(String GRP_ID){
		int status=0;
		String preparedSQL = "Delete From ARC_GroupHome where GRP_ID = ?";
		PreparedStatement statement=null;
		
		try {
			connection = ConnectionDAO.getCon();
			statement = connection.prepareStatement(preparedSQL);
			statement.setString(1, GRP_ID);
			status = statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public synchronized static int updateGroupHome(GroupHome grouphome){
		int status=0;
		PreparedStatement statement=null;
		String preparedSQL = "UPDATE ARC_GroupHome SET GRP_Name = ?,GRP_Add1 = ?,GRP_Add2 = ?,GRP_City = ?,GRP_State = ?,GRP_Zip = ?  WHERE GRP_ID = ?;";
		
		
		try{
	    		connection = ConnectionDAO.getCon();
	    		statement = connection.prepareStatement(preparedSQL);
			statement.setString(1, grouphome.getGRP_Name());
			statement.setString(2, grouphome.getGRP_Add1());
			statement.setString(3, grouphome.getGRP_Add2());
			statement.setString(4, grouphome.getGRP_City());
			statement.setString(5, grouphome.getGRP_State());
			statement.setString(6, grouphome.getGRP_Zip());
			statement.setString(7, grouphome.getGRP_ID());
			
			status = statement.executeUpdate();
			statement.close();
			connection.close();
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}	
	    return status;
	}
	
	
			
}
