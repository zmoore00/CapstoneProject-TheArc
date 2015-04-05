package beans;

import java.io.Serializable;

/**
 * @author Jordan Curran
 * purpose: Create an object container for a row in the volunteer table
 * Notes: Names match canvas
 * datatypes:
 * varchar2 --> String
 * Number 	--> int
 * Boolean  --> char
 * char was chosen for cross platform compatibility
 */
public class Volunteer implements Serializable{
	
	private static final long serialVersionUID = 2917851356233717858L;
	
	private String 	vol_ID;
	private String 	vol_FName;
	private String 	vol_LName;
	private String 	vol_Add1;
	private String 	vol_Add2;
	private String 	Vol_City;
	private String 	vol_State;
	private String 	vol_Zip;
	private String 	vol_HPhone;
	private String 	vol_CPhone;
	private String 	vol_WPhone;
	private String 	vol_Emp;
	private char 	vol_Liab;
	private char 	vol_PhotoFlag;
	private int 	vol_Hours;
	private char 	vol_ArtFlag;
	private char 	vol_BowlFlag;
	private char 	vol_LabFlag;
	private char 	vol_DanceFlag;
	private char 	vol_FishFlag;
	private char 	vol_WaterFlag;
	private char 	vol_OfficeFlag;
	private char 	vol_SpecFlag;
	
	//Getters and Setters
	public String getVol_ID() {
		return vol_ID;
	}
	public void setVol_ID(String vol_ID) {
		this.vol_ID = vol_ID;
	}
	public String getVol_FName() {
		return vol_FName;
	}
	public void setVol_FName(String vol_FName) {
		this.vol_FName = vol_FName;
	}
	public String getVol_LName() {
		return vol_LName;
	}
	public void setVol_LName(String vol_LName) {
		this.vol_LName = vol_LName;
	}
	public String getVol_Add1() {
		return vol_Add1;
	}
	public void setVol_Add1(String vol_Add1) {
		this.vol_Add1 = vol_Add1;
	}
	public String getVol_Add2() {
		return vol_Add2;
	}
	public void setVol_Add2(String vol_Add2) {
		this.vol_Add2 = vol_Add2;
	}
	public String getVol_City() {
		return Vol_City;
	}
	public void setVol_City(String vol_City) {
		Vol_City = vol_City;
	}
	public String getVol_State() {
		return vol_State;
	}
	public void setVol_State(String vol_State) {
		this.vol_State = vol_State;
	}
	public String getVol_Zip() {
		return vol_Zip;
	}
	public void setVol_Zip(String vol_Zip) {
		this.vol_Zip = vol_Zip;
	}
	public String getVol_HPhone() {
		return vol_HPhone;
	}
	public void setVol_HPhone(String vol_HPhone) {
		this.vol_HPhone = vol_HPhone;
	}
	public String getVol_CPhone() {
		return vol_CPhone;
	}
	public void setVol_CPhone(String vol_CPhone) {
		this.vol_CPhone = vol_CPhone;
	}
	public String getVol_WPhone() {
		return vol_WPhone;
	}
	public void setVol_WPhone(String vol_WPhone) {
		this.vol_WPhone = vol_WPhone;
	}
	public String getVol_Emp() {
		return vol_Emp;
	}
	public void setVol_Emp(String vol_Emp) {
		this.vol_Emp = vol_Emp;
	}
	public char getVol_Liab() {
		return vol_Liab;
	}
	public void setVol_Liab(char vol_Liab) {
		this.vol_Liab = vol_Liab;
	}
	public char getVol_PhotoFlag() {
		return vol_PhotoFlag;
	}
	public void setVol_PhotoFlag(char vol_PhotoFlag) {
		this.vol_PhotoFlag = vol_PhotoFlag;
	}
	public int getVol_Hours() {
		return vol_Hours;
	}
	public void setVol_Hours(int vol_Hours) {
		this.vol_Hours = vol_Hours;
	}
	public char getVol_ArtFlag() {
		return vol_ArtFlag;
	}
	public void setVol_ArtFlag(char vol_ArtFlag) {
		this.vol_ArtFlag = vol_ArtFlag;
	}
	public char getVol_BowlFlag() {
		return vol_BowlFlag;
	}
	public void setVol_BowlFlag(char vol_BowlFlag) {
		this.vol_BowlFlag = vol_BowlFlag;
	}
	public char getVol_LabFlag() {
		return vol_LabFlag;
	}
	public void setVol_LabFlag(char vol_LabFlag) {
		this.vol_LabFlag = vol_LabFlag;
	}
	public char getVol_DanceFlag() {
		return vol_DanceFlag;
	}
	public void setVol_DanceFlag(char vol_DanceFlag) {
		this.vol_DanceFlag = vol_DanceFlag;
	}
	public char getVol_FishFlag() {
		return vol_FishFlag;
	}
	public void setVol_FishFlag(char vol_FishFlag) {
		this.vol_FishFlag = vol_FishFlag;
	}
	public char getVol_WaterFlag() {
		return vol_WaterFlag;
	}
	public void setVol_WaterFlag(char vol_WaterFlag) {
		this.vol_WaterFlag = vol_WaterFlag;
	}
	public char getVol_OfficeFlag() {
		return vol_OfficeFlag;
	}
	public void setVol_OfficeFlag(char vol_OfficeFlag) {
		this.vol_OfficeFlag = vol_OfficeFlag;
	}
	public char getVol_SpecFlag() {
		return vol_SpecFlag;
	}
	public void setVol_SpecFlag(char vol_SpecFlag) {
		this.vol_SpecFlag = vol_SpecFlag;
	}
}
