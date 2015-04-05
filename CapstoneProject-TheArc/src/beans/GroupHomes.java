package beans;

import java.io.Serializable;

//Evan Burkes

public class GroupHomes implements Serializable
{
	private String  GRP_ID;
	private String  GRP_Name;
	private String  GRP_Add1;
	private String  GRP_Add2;
	private String  GRP_City;
	private String  GRP_State;
	private String  GRP_Zip;
	
    public String getGRP_ID() 
    {
	  return GRP_ID;
	}
	public void setGRP_ID(String GRP_ID) 
	{
		this.GRP_ID = GRP_ID;
	}
	
	public String getGRP_Name() 
    {
	  return GRP_Name;
	}
	public void setGRP_Name(String GRP_Name) 
	{
		this.GRP_Name = GRP_Name;
	}
	
	public String getGRP_Add1() 
    {
	  return GRP_Add1;
	}
	public void setGRP_Add1(String GRP_Add1) 
	{
		this.GRP_Add1 = GRP_Add1;
	}
	
	public String getGRP_Add2() 
    {
	  return GRP_Add2;
	}
	public void setGRP_Add2(String GRP_Add2) 
	{
		this.GRP_Add2 = GRP_Add2;
	}
	
	public String getGRP_City() 
    {
	  return GRP_City;
	}
	public void setGRP_City(String GRP_City) 
	{
		this.GRP_City = GRP_City;
	}
	
	public String getGRP_State() 
    {
	  return GRP_State;
	}
	public void setGRP_State(String GRP_State) 
	{
		this.GRP_State = GRP_State;
	}
	
	public String getGRP_Zip() 
    {
	  return GRP_Zip;
	}
	public void setGRP_Zip(String GRP_Zip) 
	{
		this.GRP_Zip = GRP_Zip;
	}

}
