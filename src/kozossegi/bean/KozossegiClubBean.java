package kozossegi.bean;

import java.util.Date;
import java.util.List;

public class KozossegiClubBean extends KozossegiUserBean {

	public KozossegiClubBean(String name, int id, int ownerId, Date start, String desc,
			List<KozossegiProfileMiniatureBean> members) {
		super(name, id);
		this.ownerId = ownerId;
		this.start = start;
		this.desc = desc;
		this.members = members;
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

	public List<KozossegiProfileMiniatureBean> getMembers() {
		return members;
	}

	public void setMembers(List<KozossegiProfileMiniatureBean> members) {
		this.members = members;
	}

	int ownerId;
	Date start;
	String desc;
	List<KozossegiProfileMiniatureBean> members;

	public KozossegiClubBean(String name, String desc, int ownerId,Date start) {
		super(name,0);
		this.ownerId = ownerId;
		this.name = name;
		this.desc = desc;
		this.start=start;
	}
}
