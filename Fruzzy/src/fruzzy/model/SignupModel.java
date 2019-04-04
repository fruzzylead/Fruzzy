package fruzzy.model;

import java.util.Date;



public class SignupModel {

	private String username;
	private String email;
	private String gender;
	private Date dob;
	private String password;

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	@Override
	public String toString() {
		return "SignupModel [username=" + username + ", email=" + email + ", gender=" + gender + ", dob=" + dob
				+ ", password=" + password + "]";
	}
	
	

}
