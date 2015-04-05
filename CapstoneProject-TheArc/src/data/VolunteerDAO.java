package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.*;

public class VolunteerDAO {
	
	private static Connection connection=null;
	
	public synchronized ArrayList<Volunteer> getVolunteer() {
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
				volunteer.setVol_LabFlag(rs.getString("VOL_LabFlag").charAt(0));
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
	
	

}
