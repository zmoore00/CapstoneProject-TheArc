package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.Member;

public class MemberDAO {
	private static Connection connection=null;
	
	public synchronized static ArrayList<Member> getMembers() {
	 	ArrayList<Member> members = new ArrayList<Member>();
	 	Member member;
	 	PreparedStatement statement=null;
		String preparedSQL = "SELECT * FROM ARC_Member;";
		
	    try{
	    	connection = ConnectionDAO.getCon();
	    	statement = connection.prepareStatement(preparedSQL);
			ResultSet rs = statement.executeQuery();
			while(rs.next()){
				member = new Member();
				member.setMem_ID(rs.getString("MEM_ID"));
				member.setMem_FName(rs.getString("MEM_FName"));
				member.setMem_LName(rs.getString("MEM_LName"));
				member.setMem_Add1(rs.getString("MEM_Add1"));
				member.setMem_Add2(rs.getString("MEM_Add2"));
				member.setMem_City(rs.getString("MEM_City"));
				member.setMem_State(rs.getString("MEM_State"));
				member.setMem_County(rs.getString("MEM_County"));
				member.setMem_Zip(rs.getString("MEM_Zip"));
				member.setMem_HPhone(rs.getString("MEM_HPhone"));
				member.setMem_CPhone(rs.getString("MEM_CPhone"));
				member.setMem_WPhone(rs.getString("MEM_WPhone"));
				member.setMem_RegDate(rs.getString("MEM_RegDate"));
				member.setMem_RenewDate(rs.getString("MEM_RenewDate"));
				member.setMem_CurFlag(rs.getString("MEM_CurFlag").charAt(0));
				member.setMem_DOBFlag(rs.getString("MEM_DOB"));
				member.setMem_PhotoFlag(rs.getString("MEM_PhotoFlag").charAt(0));
				member.setMem_LiabFlag(rs.getString("MEM_LiabFlag").charAt(0));
				member.setMem_GHID(rs.getString("MEM_GHID").charAt(0));
				member.setMem_EmailFlag(rs.getString("MEM_EmailFlag").charAt(0));
				member.setMem_BowlFlag(rs.getString("MEM_BowlFlag").charAt(0));
				member.setMem_SwimFlag(rs.getString("MEM_SwimFlag").charAt(0));

				members.add(member);
			}	
			rs.close();		
			statement.close();
			connection.close();
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}
		return members;
	}
	
	public synchronized static int addMember(Member member){
		int status=0;
		String preparedSQL = "INSERT INTO ARC_Member(MEM_FName,MEM_LName,MEM_Add1,MEM_Add2,MEM_City,MEM_State,MEM_County,MEM_Zip,MEM_HPhone,MEM_CPhone,MEM_WPhone,MEM_RegDate,MEM_RenewDate,MEM_CurFlag,MEM_DOB,MEM_LiabFlag,MEM_PhotoFlag,MEM_GHID,MEM_PhysFlag,MEM_EmailFlag,MEM_BowlFlag,MEM_SwimFlag) VALUES(se?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		PreparedStatement statement=null;
		
		try {
			connection = ConnectionDAO.getCon();
			statement = connection.prepareStatement(preparedSQL);
			statement.setString(1, member.getMem_FName());
			statement.setString(2, member.getMem_LName());
			statement.setString(3, member.getMem_Add1());
			statement.setString(4, member.getMem_Add2());
			statement.setString(5, member.getMem_City());
			statement.setString(6, member.getMem_State());
			statement.setString(7, member.getMem_County());
			statement.setString(8, member.getMem_Zip());
			statement.setString(9, member.getMem_HPhone());
			statement.setString(10, member.getMem_CPhone());
			statement.setString(11, member.getMem_WPhone());
			statement.setString(12, member.getMem_RegDate());
			statement.setString(13, member.getMem_RenewDate());
			statement.setString(14, String.valueOf(member.getMem_CurFlag()));
			statement.setString(15, member.getMem_DOBFlag());
			statement.setString(16, String.valueOf(member.getMem_LiabFlag()));
			statement.setString(17, String.valueOf(member.getMem_PhotoFlag()));
			statement.setInt(18, member.getMem_GHID());
			statement.setString(19, String.valueOf(member.getMem_PhysFlag()));
			statement.setString(20, String.valueOf(member.getMem_EmailFlag()));
			statement.setString(21, String.valueOf(member.getMem_BowlFlag()));
			statement.setString(22, String.valueOf(member.getMem_SwimFlag()));
			
	
			status = statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public synchronized static int removeMember(String memberID){
		int status=0;
		String preparedSQL = "delete from ARC_Member where MEM_ID = ?";
		PreparedStatement statement=null;
		
		try {
			connection = ConnectionDAO.getCon();
			statement = connection.prepareStatement(preparedSQL);
			statement.setString(1, memberID);
			status = statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public synchronized static int updateMember(Member member){
		int status=0;
		
	 	PreparedStatement statement=null;
		String preparedSQL = "UPDATE ARC_Member SET MEM_FName = ?,MEM_LName = ?,MEM_Add1 = ?,MEM_Add2 = ?,MEM_City = ?,MEM_State = ?,MEM_County = ?,MEM_Zip = ?,MEM_HPhone = ?,MEM_CPhone = ?,MEM_WPhone = ?,MEM_RegDate = ?,MEM_RenewDate = ?,MEM_CurFlag = ?,MEM_DOB = ?,MEM_LiabFlag = ?,MEM_PhotoFlag = ?,MEM_GHID = ?,MEM_PhysFlag = ?,MEM_EmailFlag = ?,MEM_BowlFlag = ?,MEM_SwimFlag = ?  WHERE MEM_ID = ?;";
		
	    try{
	    	connection = ConnectionDAO.getCon();
	    	statement = connection.prepareStatement(preparedSQL);
	    	statement.setString(1, member.getMem_FName());
			statement.setString(2, member.getMem_LName());
			statement.setString(3, member.getMem_Add1());
			statement.setString(4, member.getMem_Add2());
			statement.setString(5, member.getMem_City());
			statement.setString(6, member.getMem_State());
			statement.setString(7, member.getMem_County());
			statement.setString(8, member.getMem_Zip());
			statement.setString(9, member.getMem_HPhone());
			statement.setString(10, member.getMem_CPhone());
			statement.setString(11, member.getMem_WPhone());
			statement.setString(12, member.getMem_RegDate());
			statement.setString(13, member.getMem_RenewDate());
			statement.setString(14, String.valueOf(member.getMem_CurFlag()));
			statement.setString(15, member.getMem_DOBFlag());
			statement.setString(16, String.valueOf(member.getMem_LiabFlag()));
			statement.setString(17, String.valueOf(member.getMem_PhotoFlag()));
			statement.setInt(18, member.getMem_GHID());
			statement.setString(19, String.valueOf(member.getMem_PhysFlag()));
			statement.setString(20, String.valueOf(member.getMem_EmailFlag()));
			statement.setString(21, String.valueOf(member.getMem_BowlFlag()));
			statement.setString(22, String.valueOf(member.getMem_SwimFlag()));
			
			status = statement.executeUpdate();
			statement.close();
			connection.close();
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}	
	    return status;
	}
	
	public synchronized static Member getMember(String id) {	 	
	 	Member member=null;
	 	PreparedStatement statement=null;
		String preparedSQL = "SELECT * FROM ARC_Member WHERE MEM_ID = ?;";
		
	    try{
	    	connection = ConnectionDAO.getCon();
	    	statement = connection.prepareStatement(preparedSQL);
	    	statement.setString(1, id);
			ResultSet rs = statement.executeQuery();
			while(rs.next()){
				member = new Member();
				statement.setString(1, member.getMem_FName());
				statement.setString(2, member.getMem_LName());
				statement.setString(3, member.getMem_Add1());
				statement.setString(4, member.getMem_Add2());
				statement.setString(5, member.getMem_City());
				statement.setString(6, member.getMem_State());
				statement.setString(7, member.getMem_County());
				statement.setString(8, member.getMem_Zip());
				statement.setString(9, member.getMem_HPhone());
				statement.setString(10, member.getMem_CPhone());
				statement.setString(11, member.getMem_WPhone());
				statement.setString(12, member.getMem_RegDate());
				statement.setString(13, member.getMem_RenewDate());
				statement.setString(14, String.valueOf(member.getMem_CurFlag()));
				statement.setString(15, member.getMem_DOBFlag());
				statement.setString(16, String.valueOf(member.getMem_LiabFlag()));
				statement.setString(17, String.valueOf(member.getMem_PhotoFlag()));
				statement.setInt(18, member.getMem_GHID());
				statement.setString(19, String.valueOf(member.getMem_PhysFlag()));
				statement.setString(20, String.valueOf(member.getMem_EmailFlag()));
				statement.setString(21, String.valueOf(member.getMem_BowlFlag()));
				statement.setString(22, String.valueOf(member.getMem_SwimFlag()));
			}	
			rs.close();		
			statement.close();
			connection.close();
			
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}
	    
	    return member;
		
	}
	
	public synchronized static ArrayList<Member> getEXPMembers() {
	 	ArrayList<Member> members = new ArrayList<Member>();
	 	Member member;
	 	PreparedStatement statement=null;
		String preparedSQL = "SELECT MEM_ID, MEM_FName, MEM_LName, MEM_Add1, MEM_Add2, MEM_City, MEM_State, MEM_Zip, MEM_HPhone, MEM_CPhone, MEM_WPhone, MEM_RenewDate, MEM_CurFlag FROM ARC_Member WHERE Mem_CurFlag = 'N'";
		
	        try{
	    	connection = ConnectionDAO.getCon();
	    	statement = connection.prepareStatement(preparedSQL);
			ResultSet rs = statement.executeQuery();
			while(rs.next()){
				member = new Member();
				member.setMem_ID(rs.getString("MEM_ID"));
				member.setMem_FName(rs.getString("MEM_FName"));
				member.setMem_LName(rs.getString("MEM_LName"));
				member.setMem_Add1(rs.getString("MEM_Add1"));
				member.setMem_Add2(rs.getString("MEM_Add2"));
				member.setMem_City(rs.getString("MEM_City"));
				member.setMem_State(rs.getString("MEM_State"));
				member.setMem_Zip(rs.getString("MEM_Zip"));
				member.setMem_HPhone(rs.getString("MEM_HPhone"));
				member.setMem_CPhone(rs.getString("MEM_CPhone"));
				member.setMem_WPhone(rs.getString("MEM_WPhone"));
				member.setMem_RenewDate(rs.getString("MEM_RenewDate"));
				member.setMem_CurFlag(rs.getString("MEM_CurFlag").charAt(0));
				members.add(member);
			}
			
			rs.close();		
			statement.close();
			connection.close();
		}catch (SQLException ex){
			System.out.println("Error: " + ex);
			System.out.println("Query: " + statement.toString());
		}
		return members;
		
	}
	
}
		
		
