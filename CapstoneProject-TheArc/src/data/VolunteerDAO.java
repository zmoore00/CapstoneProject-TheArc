package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.*;

public class VolunteerDAO {
	
	public synchronized ArrayList<Volunteer> getVolunteers() {
	 	ArrayList<Student> students = new ArrayList<Student>();
	 	Student student;
	 	PreparedStatement statement=null;
		String preparedSQL = "SELECT * FROM students;";
		
	    try{
	    	connection = getConnection();
	    	statement = connection.prepareStatement(preparedSQL);
			ResultSet rs = statement.executeQuery();
			while(rs.next()){
				student = new Student();
				student.setFirstName(rs.getString("firstName"));
				student.setLastName(rs.getString("lastName"));
				student.setStudentID(rs.getString("studentID"));
				student.setAge(rs.getInt("age"));
				students.add(student);
				student.setUsername(rs.getString("username"));
				student.setPassword(rs.getString("password"));
			}	
			rs.close();		
			statement.close();
			connection.close();
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}
		return students;
	}
	
	

}
