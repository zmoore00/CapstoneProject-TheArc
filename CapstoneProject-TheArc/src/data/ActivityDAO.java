package data;
// Author: Jordan Curran
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.Activities;
import beans.Volunteer;


public class ActivityDAO {
	private static Connection connection=null;

	public synchronized static ArrayList<Activities> getActivities() {
		ArrayList<Activities> 	activities = new ArrayList<Activities>();
		Activities 				activity;
		PreparedStatement 		statement=null;
		String preparedSQL = 	"SELECT * FROM ARC_Activities;";

		try{
			connection = 	ConnectionDAO.getCon();
			statement = 	connection.prepareStatement(preparedSQL);
			ResultSet rs = 	statement.executeQuery();
			
			while(rs.next()){
				activity = 				new Activities();
				
				activity.setAct_ID		(rs.getInt("ACT_ID"));
				activity.setAct_Name	(rs.getString("ACT_Name"));

				activity.setAct_type	(rs.getString("ACT_Type"));
				activity.setAct_date	(rs.getString("ACT_Date"));
				activity.setAct_loc		(rs.getString("ACT_Loc"));
				activity.setAct_volCount(rs.getInt("ACT_VolCount"));
				activity.setAct_memCount(rs.getInt("ACT_MemCount"));
				activity.setAct_nonCount(rs.getInt("ACT_NonCount"));

				activity.setAct_totCount(rs.getInt("ACT_TotCount"));
				activity.setAct_revenue	(rs.getInt("ACT_Revenue"));
				activity.setAct_expense	(rs.getInt("ACT_Expense"));
				
				activities.add(activity);
			}			
			rs.close();		
			statement.close();
			connection.close();
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}
		return activities;
	}
	public synchronized static int addActivity(Activities activity){
		int status=0;
		PreparedStatement statement=null;
		String preparedSQL = 
				"INSERT INTO ARC_Activities("
						+"ACT_Name, ACT_Type, ACT_Date, ACT_Loc, ACT_VolCount, "
						+"ACT_MemCount, ACT_NonCount, ACT_TotCount, ACT_Revenue,"
						+"ACT_Expense) VALUES(?,?,?,?,?,?,?,?,?,?);";

		try {
			connection 	= ConnectionDAO.getCon();
			statement 	= connection.prepareStatement(preparedSQL);
			
			statement.setString( 1, activity.getAct_Name());
			statement.setString( 2, activity.getAct_type());
			
			statement.setString( 3, activity.getAct_date());
			statement.setString( 4, activity.getAct_loc());
			statement.setString( 5, String.valueOf(activity.getAct_volCount()));
			statement.setString( 6, String.valueOf(activity.getAct_memCount()));
			statement.setString( 7, String.valueOf(activity.getAct_nonCount()));
			
			statement.setString( 8, String.valueOf(activity.getAct_totCount()));
			statement.setString( 9, String.valueOf(activity.getAct_revenue()));
			statement.setString(10, String.valueOf(activity.getAct_expense()));


			status = statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public synchronized int removeActivity(String Act_ID){
		int status=0;
		String preparedSQL = "delete from ARC_Activities where ACT_ID = ?;";
		PreparedStatement statement=null;
		
		try {
			connection = ConnectionDAO.getCon();
			statement = connection.prepareStatement(preparedSQL);
			statement.setString(1, Act_ID);
			status = statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public synchronized static int updateActivity(Activities activity){
		int status=0;
		PreparedStatement statement=null;
		String preparedSQL = 
				"UPDATE ARC_Activities SET"
						+"ACT_Name = ?, ACT_Type = ?, ACT_Date = ?, ACT_Loc = ?, ACT_VolCount = ?, "
						+"ACT_MemCount = ?, ACT_NonCount = ?, ACT_TotCount = ?, ACT_Revenue = ?,"
						+"ACT_Expense = ?);";

		try {
			connection 	= ConnectionDAO.getCon();
			statement 	= connection.prepareStatement(preparedSQL);
			
			statement.setString( 1, activity.getAct_Name());
			statement.setString( 2, activity.getAct_type());
			
			statement.setString( 3, activity.getAct_date());
			statement.setString( 4, activity.getAct_loc());
			statement.setString( 5, String.valueOf(activity.getAct_volCount()));
			statement.setString( 6, String.valueOf(activity.getAct_memCount()));
			statement.setString( 7, String.valueOf(activity.getAct_nonCount()));
			
			statement.setString( 8, String.valueOf(activity.getAct_totCount()));
			statement.setString( 9, String.valueOf(activity.getAct_revenue()));
			statement.setString(10, String.valueOf(activity.getAct_expense()));


			status = statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	public synchronized Activities getActivity(String ACT_ID) {
		Activities 				activity  = null;
		PreparedStatement 		statement = null;
		
		String preparedSQL = 	"SELECT * FROM ARC_Activities WHERE ACT_ID = ?;";

		try{
			connection 	= 	ConnectionDAO.getCon();
			statement 	= 	connection.prepareStatement(preparedSQL);
			statement.setString(1, ACT_ID);
			ResultSet rs = 	statement.executeQuery();
			
			while(rs.next()){
				activity = 				new Activities();
				
				activity.setAct_Name	(rs.getString("ACT_Name"));

				activity.setAct_type	(rs.getString("ACT_Type"));
				activity.setAct_date	(rs.getString("ACT_Date"));
				activity.setAct_loc		(rs.getString("ACT_Loc"));
				activity.setAct_volCount(rs.getInt("ACT_VolCount"));
				activity.setAct_memCount(rs.getInt("ACT_MemCount"));
				activity.setAct_nonCount(rs.getInt("ACT_NonCount"));

				activity.setAct_totCount(rs.getInt("ACT_TotCount"));
				activity.setAct_revenue	(rs.getInt("ACT_Revenue"));
				activity.setAct_expense	(rs.getInt("ACT_Expense"));
			}			
			rs.close();		
			statement.close();
			connection.close();
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}
		return activity;
	}
	
}
