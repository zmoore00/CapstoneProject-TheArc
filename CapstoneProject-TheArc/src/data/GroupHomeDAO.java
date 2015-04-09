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

}
