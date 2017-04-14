package kozossegi.bean;

import java.awt.Image;

public class KozossegiProfileMiniature {
	public KozossegiProfileMiniature(int id, String name, Image pic) {
		super();
		this.id = id;
		this.name = name;
		this.pic = pic;
	}
	public KozossegiProfileMiniature() {
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
	public Image getPic() {
		return pic;
	}
	public void setPic(Image pic) {
		this.pic = pic;
	}
	
	public String toString() {
		return "KozossegiProfileMiniature [id=" + id + ", name=" + name + ", pic=" + pic + "]";
	}



	int id;
	String name;
	Image pic;
}
