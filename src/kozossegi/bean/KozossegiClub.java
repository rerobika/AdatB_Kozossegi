package kozossegi.bean;

import java.util.Date;
import java.util.List;

public class KozossegiClub {
	int id;
	public KozossegiClub(int id, int ownerId, Date start, String desc, List<KozossegiProfileMiniature> members) {
		super();
		this.id = id;
		this.ownerId = ownerId;
		this.start = start;
		this.desc = desc;
		this.members = members;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public List<KozossegiProfileMiniature> getMembers() {
		return members;
	}
	public void setMembers(List<KozossegiProfileMiniature> members) {
		this.members = members;
	}
	int ownerId;
	Date start;
	String desc;
	List<KozossegiProfileMiniature> members;
}
