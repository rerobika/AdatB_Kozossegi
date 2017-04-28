package kozossegi.bean;

import java.util.Date;

public class KozossegiProfileBean extends KozossegiUserBean{
	
	@Override
	public String toString() {
		return "KozossegiProfile [dob=" + dob + ", gender=" + gender + ", residence=" + residence + ", school=" + school
				+ ", hobby=" + hobby + ", workplace=" + workplace + ", email=" + email + ", pass=" + pass + ", inviter="
				+ inviter + ", profilepic=" + profilepic + "]";
	}
	public KozossegiProfileBean(String name, int id, Date dob, boolean gender, String residence, String school,
			String hobby, String workplace, String email, String pass, int inviter, KozossegiImage profilepic) {
		super(name, id);
		this.dob = dob;
		this.gender = gender;
		this.residence = residence;
		this.school = school;
		this.hobby = hobby;
		this.workplace = workplace;
		this.email = email;
		this.pass = pass;
		this.inviter = inviter;
		this.profilepic = profilepic;
	}
	public KozossegiProfileBean(String name, int id, Date dob, boolean gender, String residence, String school,
			String hobby, String workplace, String email, String pass, int inviter, String picloc) {
		super(name, id);
		this.dob = dob;
		this.gender = gender;
		this.residence = residence;
		this.school = school;
		this.hobby = hobby;
		this.workplace = workplace;
		this.email = email;
		this.pass = pass;
		this.inviter = inviter;
		this.picloc = picloc;
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
	public KozossegiImage getProfilepic() {
		return profilepic;
	}
	public void setProfilepic(KozossegiImage profilepic) {
		this.profilepic = profilepic;
	}
	public String getPicloc() {
		return picloc;
	}
	public void setPicloc(String picloc) {
		this.picloc = picloc;
	}
	Date dob;
	boolean gender;
	String residence;
	String school;
	String hobby;
	String workplace;
	String email;
	String pass;
	int inviter;
	KozossegiImage profilepic;
	String picloc;
	

}
