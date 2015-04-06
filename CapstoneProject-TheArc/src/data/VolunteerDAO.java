package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.*;

public class VolunteerDAO {
	
	private static Connection connection=null;
	
	public synchronized ArrayList<Volunteer> getVolunteers() {
	 	ArrayList<Volunteer> volunteers = new ArrayList<Volunteer>();
	 	Volunteer volunteer;
	 	PreparedStatement statement=null;
		String preparedSQL = "SELECT * FROM volunteer;";
		
	    try{
	    	connection = ConnectionDAO.getCon();
	    	statement = connection.prepareStatement(preparedSQL);
			ResultSet rs = statement.executeQuery();
			while(rs.next()){
				volunteer = new Volunteer();
				volunteer.setVol_ID(rs.getString("VOL_ID"));
				volunteer.setVol_FName(rs.getString("VOL_FName"));
				volunteer.setVol_LName(rs.getString("VOL_LName"));
				volunteer.setVol_Add1(rs.getString("VOL_Add1"));
				volunteer.setVol_City(rs.getString("VOL_City"));
				volunteer.setVol_State(rs.getString("VOL_State"));
				volunteer.setVol_Zip(rs.getString("VOL_Zip"));
				volunteer.setVol_HPhone(rs.getString("VOL_HPhone"));
				volunteer.setVol_CPhone(rs.getString("VOL_CPhone"));
				volunteer.setVol_WPhone(rs.getString("VOL_WPhone"));
				volunteer.setVol_LabFlag(rs.getString("VOL_LabFlag").charAt(0));
				volunteer.setVol_PhotoFlag(rs.getString("VOL_PhotoFlag").charAt(0));
				volunteer.setVol_Hours(rs.getInt("VOL_Hours"));
				volunteer.setVol_ArtFlag(rs.getString("VOL_ArtFlag").charAt(0));
				volunteer.setVol_BowlFlag(rs.getString("VOL_BowlFlag").charAt(0));
				volunteer.setVol_Liab(rs.getString("VOL_LiabFlag").charAt(0));
				volunteer.setVol_DanceFlag(rs.getString("VOL_DanceFlag").charAt(0));
				volunteer.setVol_FishFlag(rs.getString("VOL_FishFlag").charAt(0));
				volunteer.setVol_WaterFlag(rs.getString("VOL_WaterFlag").charAt(0));
				volunteer.setVol_OfficeFlag(rs.getString("VOL_OfficeFlag").charAt(0));
				volunteer.setVol_SpecFlag(rs.getString("VOL_SpecFlag").charAt(0));
				volunteer.setVol_Email(rs.getString("VOL_email"));

			}	
			rs.close();		
			statement.close();
			connection.close();
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}
		return volunteers;
	}
	
	public synchronized int addVolunteer(Volunteer volunteer){
		int status=0;
		String preparedSQL = "INSERT INTO volunteer(VOL_FName,VOL_LName,VOL_Add1,VOL_City,VOL_State,VOL_Zip,VOL_HPhone,VOL_CPhone,VOL_WPhone,VOL_LiabFlag,VOL_PhotoFlag,VOL_Hours,VOL_ArtFlag,VOL_BowlFlag,VOL_LabFlag,VOL_DanceFlag,VOL_FishFlag,VOL_WaterFlag,VOL_OfficeFlag,VOL_SpecFlag,VOL_email,) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		PreparedStatement statement=null;
		
		try {
			connection = ConnectionDAO.getCon();
			statement = connection.prepareStatement(preparedSQL);
			statement.setString(1, volunteer.getVol_FName());
			statement.setString(2, volunteer.getVol_LName());
			statement.setString(3, volunteer.getVol_Add1());
			statement.setString(4, volunteer.getVol_City());
			statement.setString(5, volunteer.getVol_State());
			statement.setString(6, volunteer.getVol_Zip());
			statement.setString(7, volunteer.getVol_HPhone());
			statement.setString(8, volunteer.getVol_CPhone());
			statement.setString(9, volunteer.getVol_WPhone());
			statement.setString(10, String.valueOf(volunteer.getVol_Liab()));
			statement.setString(11, String.valueOf(volunteer.getVol_PhotoFlag()));
			statement.setString(12, String.valueOf(volunteer.getVol_Hours()));
			statement.setString(13, String.valueOf(volunteer.getVol_ArtFlag()));
			statement.setString(14, String.valueOf(volunteer.getVol_BowlFlag()));
			statement.setString(15, String.valueOf(volunteer.getVol_LabFlag()));
			statement.setString(16, String.valueOf(volunteer.getVol_DanceFlag()));
			statement.setString(17, String.valueOf(volunteer.getVol_FishFlag()));
			statement.setString(18, String.valueOf(volunteer.getVol_WaterFlag()));
			statement.setString(19, String.valueOf(volunteer.getVol_OfficeFlag()));
			statement.setString(20, String.valueOf(volunteer.getVol_SpecFlag()));
			statement.setString(21, volunteer.getVol_Email());
			
	
			status = statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public synchronized int removeVolunteer(String volunteerID){
		int status=0;
		String preparedSQL = "delete from volunteer where VOL_ID = ?";
		PreparedStatement statement=null;
		
		try {
			connection = ConnectionDAO.getCon();
			statement = connection.prepareStatement(preparedSQL);
			statement.setString(1, volunteerID);
			status = statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public synchronized static int updateVolunteer(Volunteer volunteer){
		int status=0;
		
	 	PreparedStatement statement=null;
		String preparedSQL = "UPDATE volunteer SET VOL_FName = ?, VOL_LName = ?, VOL_Add1 = ?, VOL_City = ?, VOL_State = ?, VOL_Zip = ?, VOL_HPhone = ?, VOL_CPhone = ?, VOL_WPhone = ?, VOL_LiabFlag = ?, VOL_PhotoFlag = ?, VOL_Hours = ?, VOL_ArtFlag = ?, VOL_BowlFlag = ?, VOL_LabFlag = ?, VOL_DanceFlag = ?, VOL_FishFlag = ?, VOL_WaterFlag = ?, VOL_OfficeFlag = ?, VOL_SpecFlag = ? WHERE VOL_ID = ?;";
		
	    try{
	    	connection = ConnectionDAO.getCon();
	    	statement = connection.prepareStatement(preparedSQL);
	    	statement.setString(1, volunteer.getVol_FName());
			statement.setString(2, volunteer.getVol_LName());
			statement.setString(3, volunteer.getVol_Add1());
			statement.setString(4, volunteer.getVol_City());
			statement.setString(5, volunteer.getVol_State());
			statement.setString(6, volunteer.getVol_Zip());
			statement.setString(7, volunteer.getVol_HPhone());
			statement.setString(8, volunteer.getVol_CPhone());
			statement.setString(9, volunteer.getVol_WPhone());
			statement.setString(10, String.valueOf(volunteer.getVol_Liab()));
			statement.setString(11, String.valueOf(volunteer.getVol_PhotoFlag()));
			statement.setString(12, String.valueOf(volunteer.getVol_Hours()));
			statement.setString(13, String.valueOf(volunteer.getVol_ArtFlag()));
			statement.setString(14, String.valueOf(volunteer.getVol_BowlFlag()));
			statement.setString(15, String.valueOf(volunteer.getVol_LabFlag()));
			statement.setString(16, String.valueOf(volunteer.getVol_DanceFlag()));
			statement.setString(17, String.valueOf(volunteer.getVol_FishFlag()));
			statement.setString(18, String.valueOf(volunteer.getVol_WaterFlag()));
			statement.setString(19, String.valueOf(volunteer.getVol_OfficeFlag()));
			statement.setString(20, String.valueOf(volunteer.getVol_SpecFlag()));
			statement.setString(21, volunteer.getVol_Email());
	    	statement.setString(6, String.valueOf(volunteer.getVol_ID()));
			status = statement.executeUpdate();
			statement.close();
			connection.close();
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}	
	    return status;
	}
	
	public synchronized static Volunteer getVolunteer(String id) {	 	
	 	Volunteer volunteer=null;
	 	PreparedStatement statement=null;
		String preparedSQL = "SELECT * FROM volunteer WHERE VOL_ID = ?;";
		
	    try{
	    	connection = ConnectionDAO.getCon();
	    	statement = connection.prepareStatement(preparedSQL);
	    	statement.setString(1, id);
			ResultSet rs = statement.executeQuery();
			while(rs.next()){
				volunteer = new Volunteer();
				volunteer.setVol_ID(rs.getString("VOL_ID"));
				volunteer.setVol_FName(rs.getString("VOL_FName"));
				volunteer.setVol_LName(rs.getString("VOL_LName"));
				volunteer.setVol_Add1(rs.getString("VOL_Add1"));
				volunteer.setVol_City(rs.getString("VOL_City"));
				volunteer.setVol_State(rs.getString("VOL_State"));
				volunteer.setVol_Zip(rs.getString("VOL_Zip"));
				volunteer.setVol_HPhone(rs.getString("VOL_HPhone"));
				volunteer.setVol_CPhone(rs.getString("VOL_CPhone"));
				volunteer.setVol_WPhone(rs.getString("VOL_WPhone"));
				volunteer.setVol_LabFlag(rs.getString("VOL_LabFlag").charAt(0));
				volunteer.setVol_PhotoFlag(rs.getString("VOL_PhotoFlag").charAt(0));
				volunteer.setVol_Hours(rs.getInt("VOL_Hours"));
				volunteer.setVol_ArtFlag(rs.getString("VOL_ArtFlag").charAt(0));
				volunteer.setVol_BowlFlag(rs.getString("VOL_BowlFlag").charAt(0));
				volunteer.setVol_Liab(rs.getString("VOL_LiabFlag").charAt(0));
				volunteer.setVol_DanceFlag(rs.getString("VOL_DanceFlag").charAt(0));
				volunteer.setVol_FishFlag(rs.getString("VOL_FishFlag").charAt(0));
				volunteer.setVol_WaterFlag(rs.getString("VOL_WaterFlag").charAt(0));
				volunteer.setVol_OfficeFlag(rs.getString("VOL_OfficeFlag").charAt(0));
				volunteer.setVol_SpecFlag(rs.getString("VOL_SpecFlag").charAt(0));
				volunteer.setVol_Email(rs.getString("VOL_email"));
			}	
			rs.close();		
			statement.close();
			connection.close();
			
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}
	    
	    return volunteer;
		
	}
	
	

}
