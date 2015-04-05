package beans;

import java.io.Serializable;

//Zackary Moore
//Member Beans for Capstone Project

public class Member implements Serializable
{
  private String mem_ID;
  private String mem_FName;
  private String mem_LName;
  private String mem_Add1;
  private String mem_Add2;
  private String mem_City;
  private String mem_State;
  private String mem_Zip;
  private String mem_HPhone;
  private String mem_CPhone;
  private String mem_WPhone;
  private String mem_Email;
  private String mem_RegDate;
  private String mem_RenewDate;
  private char   mem_CurFlag;
  private String mem_DOBFlag;
  private char   mem_LiabFlag;
  private char   mem_PhotoFlag;
  private int    mem_GHID;
  private char   mem_PhysFlag;
  private char   mem_BowlFlag;
  private char   mem_SwimFlag;
  private String mem_County;
  	
	// GETTER AND SETTER FOR MEMBER ID
  public String getMem_ID() 
  {
	  return mem_ID;
	}
	public void setMem_ID(String mem_ID) 
	{
		this.mem_ID = mem_ID;
	}
		
	// GETTER AND SETTER FOR FIRST NAME
	public String getMem_FName()
	{
  	return mem_FName;
	}
	public void setMem_FName(String mem_FName)
	{
  	this.mem_FName = mem_FName;
	}
		
	// GETTER AND SETTER FOR LAST NAME
	public String getMem_LName()
	{
  	return mem_LName;
	}
	public void setMem_LName(String mem_LName)
	{
  	this.mem_LName = mem_LName;
	}
		
	// GETTER AND SETTER FOR ADDRESS 1
	public String getMem_Add1()
	{
  	return mem_Add1;
	}
	public void setMem_Add1(String mem_Add1)
	{
  	this.mem_Add1 = mem_Add1;
	}
		
	// GETTER AND SETTER FOR ADDRESS 2
	public String getMem_Add2()
	{
  	return mem_Add2;
	}
	public void setMem_Add2(String mem_Add2)
	{
  	this.mem_Add2 = mem_Add2;
	}
		
	// GETTER AND SETTER FOR CITY
	public String getMem_City()
	{
  	return mem_City;
	}
	public void setMem_City(String mem_City)
	{
  	this.mem_City = mem_City;
	}
		
	// GETTER AND SETTER FOR STATE
	public String getMem_State()
	{
  	return mem_State;
	}
	public void setMem_State(String mem_State)
	{
  	this.mem_State = mem_State;
	}
		
	// GETTER AND SETTER FOR ZIPCODE
	public String getMem_Zip()
	{
  	return mem_Zip;
	}
	public void setMem_Zip(String mem_Zip)
	{
  	this.mem_Zip = mem_Zip;
	}
		
	// GETTER AND SETTER FOR HOME PHONE
	public String getMem_HPhone()
	{
  	return mem_HPhone;
	}
	public void setMem_HPhone(String mem_HPhone)
	{
  	this.mem_HPhone = mem_HPhone;
	}
		
	// GETTER AND SETTER FOR CELL PHONE
	public String getMem_CPhone()
	{
  	return mem_CPhone;
	}
	public void setMem_CPhone(String mem_CPhone)
	{
  	this.mem_CPhone = mem_CPhone;
	}
		
	// GETTER AND SETTER FOR WORK PHONE
	public String getMem_WPhone()
	{
  	return mem_WPhone;
	}
	public void setMem_WPhone(String mem_WPhone)
	{
  	this.mem_WPhone = mem_WPhone;
	}
		
	// GETTER AND SETTER FOR EMAIL
	public String getMem_Email()
	{
  	return mem_Email;
	}
	public void setMem_Email(String mem_Email)
	{
  	this.mem_Email = mem_Email;
	}
		
	// GETTER AND SETTER FOR REGISTRATION DATE
	public String getMem_RegDate()
	{
  	return mem_RegDate;
	}
	public void setMem_RegDate(String mem_RegDate)
	{
  	this.mem_RegDate = mem_RegDate;
	}
		
	// GETTER AND SETTER FOR RENEWAL DATE
	public String getMem_RenewDate()
	{
  	return mem_RenewDate;
	}
	public void setMem_RenewDate(String mem_RenewDate)
	{
  	this.mem_RenewDate = mem_RenewDate;
	}
		
	// GETTER AND SETTER FOR CURRENT MEMBER FLAG
	public char getMem_CurFlag() 
	{
		return mem_CurFlag;
	}
	public void setMem_CurFlag(char mem_CurFlag) 
	{
		this.mem_CurFlag = mem_CurFlag;
	}
		
	// GETTER AND SETTER FOR DATE OF BIRTH FLAG
	public String getMem_DOBFlag()
	{
  	return mem_DOBFlag;
	}
	public void setMem_DOBFlag(String mem_DOBFlag)
	{
  	this.mem_DOBFlag = mem_DOBFlag;
	}
		
	// GETTER AND SETTER FOR LIABILITY FORM FLAG
	public char getMem_LiabFlag() 
	{
		return mem_LiabFlag;
	}
	public void setMem_LiabFlag(char mem_LiabFlag) 
	{
		this.mem_LiabFlag = mem_LiabFlag;
	}
		
	// GETTER AND SETTER FOR PHOTO FLAG
	public char getMem_PhotoFlag() 
	{
		return mem_PhotoFlag;
	}
	public void setMem_PhotoFlag(char mem_PhotoFlag) 
	{
		this.mem_PhotoFlag = mem_PhotoFlag;
	}
		
	// GETTER AND SETTER FOR GROUP HOME ID
	public int getMem_GHID() 
	{
		return mem_GHID;
	}
	public void setMem_GHID(char mem_GHID) 
	{
		this.mem_GHID = mem_GHID;
	}
		
	// GETTER AND SETTER FOR NEWSLETTER FLAG
	public char getMem_PhysFlag() 
	{
		return mem_PhysFlag;
	}
	public void setMem_PhysFlag(char mem_PhysFlag) 
	{
		this.mem_PhysFlag = mem_PhysFlag;
	}
		
	// GETTER AND SETTER FOR BOWLING FLAG
	public char getMem_BowlFlag() 
	{
		return mem_BowlFlag;
	}
	public void setMem_BowlFlag(char mem_BowlFlag) 
	{
		this.mem_BowlFlag = mem_BowlFlag;
	}
		
	// GETTER AND SETTER FOR SWIMMING FLAG
	public char getMem_SwimFlag() 
	{
		return mem_SwimFlag;
	}
	public void setMem_SwimFlag(char mem_SwimFlag) 
	{
		this.mem_SwimFlag = mem_SwimFlag;
	}
	
	// GETTER AND SETTER FOR COUNTY
	public String getMem_County() 
	{
		return mem_County;
	}
	public void setMem_County(String mem_County) 
	{
		this.mem_County = mem_County;
	}
}