package kozossegi.bean;

import java.awt.Image;
import java.util.Date;

public class KozossegiProfile {
	public KozossegiProfile(int id, Date dob, boolean gender, String residence, String school, String hobby,
			String workplace, String email, String name, String pass, int inviter, Image profilepic) {
		super();
		this.id = id;
		this.dob = dob;
		this.gender = gender;
		this.residence = residence;
		this.school = school;
		this.hobby = hobby;
		this.workplace = workplace;
		this.email = email;
		this.name = name;
		this.pass = pass;
		this.inviter = inviter;
		this.profilepic = profilepic;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public String getResidence() {
		return residence;
	}
	public void setResidence(String residence) {
		this.residence = residence;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getInviter() {
		return inviter;
	}
	public void setInviter(int inviter) {
		this.inviter = inviter;
	}
	public Image getProfilepic() {
		return profilepic;
	}
	public void setProfilepic(Image profilepic) {
		this.profilepic = profilepic;
	}
	int id;
	Date dob;
	boolean gender;
	String residence;
	String school;
	String hobby;
	String workplace;
	String email;
	String name;
	String pass;
	int inviter;
	Image profilepic;

}
