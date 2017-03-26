package com.hhxy.first;

public class user implements java.io.Serializable{
	private int uerID;
	private String username;
	private String password;
	private String email;
	
	public user() {	
	}
	
	public user(String userName,String password,String email ){
		super();
		this.setUserName(userName);
		this.setPassword(password);
		this.setEmail(email);
		
	}

	public int getUerID() {
		return uerID;
	}

	public void setUerID(int uerID) {
		this.uerID = uerID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public String getEmail() {
		return email;
	}

	private void setEmail(String email2) {
		// TODO Auto-generated method stub
		
	}

	private void setPassword(String password2) {
		// TODO Auto-generated method stub
		
	}

	private void setUserName(String userName2) {
		// TODO Auto-generated method stub
		
	}

}
