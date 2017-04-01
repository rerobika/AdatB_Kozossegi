package kozossegi.bean;

import java.awt.Image;
import java.util.Date;
import java.util.List;

public class KozossegiAlbum {
	int owner;
	public KozossegiAlbum(int owner, String name, Date created, List<Image> images) {
		super();
		this.owner = owner;
		this.name = name;
		this.created = created;
		this.images = images;
	}
	public int getOwner() {
		return owner;
	}
	public void setOwner(int owner) {
		this.owner = owner;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public List<Image> getImages() {
		return images;
	}
	public void setImages(List<Image> images) {
		this.images = images;
	}
	String name;
	Date created;
	List<Image> images;
}
