/**
 * 
 */
package beans;

import java.io.Serializable;

//import java.sql.Date;

/**
 * @author Jordan Curran
 * purpose: Create an object container for a row in the activities table
 * Revision 1: Change names to match new field names in canvas
 * Notes: Names match canvas
 * datatypes:
 * varchar2 --> String
 * Number 	--> int
 * Date  	--> String can be parsed as date, date variable requires dependence, up to group
 * String was chosen for cross platform compatibility
 */
public class Activities implements Serializable{
	
	private static final long serialVersionUID = 1813469421168113063L;
	
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

	//Getters and Setters

	public int getAct_ID() {
		return act_ID;
	}
	public void setAct_ID(int act_ID) {
		this.act_ID = act_ID;
	}
	public String getAct_Name() {
		return act_Name;
	}
	public void setAct_Name(String act_Name) {
		this.act_Name = act_Name;
	}
	public String getAct_type() {
		return act_type;
	}
	public void setAct_type(String act_type) {
		this.act_type = act_type;
	}
	public String getAct_date() {
		return act_date;
	}
	public void setAct_date(String act_date) {
		this.act_date = act_date;
	}
	public String getAct_loc() {
		return act_loc;
	}
	public void setAct_loc(String act_loc) {
		this.act_loc = act_loc;
	}
	public int getAct_volCount() {
		return act_volCount;
	}
	public void setAct_volCount(int act_volCount) {
		this.act_volCount = act_volCount;
	}
	public int getAct_memCount() {
		return act_memCount;
	}
	public void setAct_memCount(int act_memCount) {
		this.act_memCount = act_memCount;
	}
	public int getAct_nonCount() {
		return act_nonCount;
	}
	public void setAct_nonCount(int act_nonCount) {
		this.act_nonCount = act_nonCount;
	}
	public int getAct_totCount() {
		return act_totCount;
	}
	public void setAct_totCount(int act_totCount) {
		this.act_totCount = act_totCount;
	}
	public int getAct_revenue() {
		return act_revenue;
	}
	public void setAct_revenue(int act_revenue) {
		this.act_revenue = act_revenue;
	}
	public int getAct_expense() {
		return act_expense;
	}
	public void setAct_expense(int act_expense) {
		this.act_expense = act_expense;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	
}
