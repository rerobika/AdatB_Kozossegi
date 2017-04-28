package kozossegi.bean;

import java.awt.Image;

public class KozossegiProfileMiniatureBean {
	int id;
	String name;
	KozossegiImage pic;
	public KozossegiProfileMiniatureBean(int id, String name, KozossegiImage pic) {
		super();
		this.id = id;
		this.name = name;
		this.pic = new KozossegiImage(pic.getUrl(), pic.postid,pic.getImage().getScaledInstance(32, 32, Image.SCALE_FAST));
	}
	public KozossegiProfileMiniatureBean(int id, String name) {
		super();
		this.id = id;
		this.name = name;
		this.pic=null;
	}
	public KozossegiProfileMiniatureBean() {
		this.id = 0;
		this.name = "";
		this.pic = null;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public KozossegiImage getPic() {
		return pic;
	}
	public void setPic(KozossegiImage pic) {
		this.pic = pic;
	}
	
	public String toString() {
		return "KozossegiProfileMiniature [id=" + id + ", name=" + name + ", pic=" + pic + "]";
	}
	public KozossegiProfileMiniatureBean(KozossegiProfileBean profile) {
		super();
		this.id = profile.getId();
		this.name = profile.getName();
		this.pic = new KozossegiImage(profile.getProfilepic().getUrl(), profile.getProfilepic().getPostid(),profile.getProfilepic().getImage().getScaledInstance(32, 32, Image.SCALE_FAST));
	}	
	public KozossegiProfileMiniatureBean(KozossegiClubBean club)
	{
		super();
		this.id= club.getId();
		this.name = club.getName();
		this.pic = null;
	}
}
