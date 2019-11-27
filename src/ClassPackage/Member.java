package ClassPackage;

import java.util.ArrayList;

public class Member {
	private String NAME;
	private int PHONENUM;
	private String EMAIL;
	private String ID;
	private String PWD;
	private ArrayList<Reservation> RESERVATIONS;

	
	public Member() {

	}
	
	public Member(String name, int phonenum, String email, String id, String password) {
		NAME = name;
		PHONENUM = phonenum;
		EMAIL = email;
		ID = id;
		PWD = password;
	}
	
	public String ID() {
		return this.ID;
	}
	
	public String getNAME() {
		return this.NAME;
	}
	
	public void setNAME(String name) {
		this.NAME = name ;
	}
	
	public int getPHONENUM() {
		return this.PHONENUM;
	}
	
	public void setPHONENUM(int phonenum) {
		this.PHONENUM = phonenum ;
	}
	
	public String getEMAIL() {
		return this.EMAIL;
	}
	
	public void setEMAIL(String email) {
		this.EMAIL = email ;
	}
	
	public String getID() {
		return this.ID;
	}
	
	public void setID(String id) {
		this.ID = id ;
	}
	
	public String getPWD() {
		return this.PWD;
	}
	
	public void setPWD(String pwd) {
		this.PWD = pwd ;
	}

}
