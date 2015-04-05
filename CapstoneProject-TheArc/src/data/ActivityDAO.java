package data;

import java.sql.PreparedStatement;

import beans.Activities;

public class ActivityDAO {
	private int 	act_ID;
	private String 	act_Name;
	private String 	act_type;
	private String 	act_date; // see notes
	private String 	act_loc;
	private int 	act_volCount;
	private int		act_memCount;
	private int		act_nonCount;
	private int		act_totCount;
	private int		act_revenue;
	private int		act_expense;
	
	public synchronized static int addActivity(Activities activity){
		PreparedStatement statement=null;
		String PreparedSQL = 
				"INSERT INTO ARC_Activities(ACT_Name, ACT_Type, ACT_Date, ACT_Loc, "
				+"ACT_VolCount, ACT_MemCount, ACT_NonCount, ACT_TotCount, ACT_Revenue,"
				+"ACT_Expense)"
				+""
		return 1;
		
	}
}
