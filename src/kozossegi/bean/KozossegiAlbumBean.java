package kozossegi.bean;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

public class KozossegiAlbumBean {
	int owner;
	public KozossegiAlbumBean(int owner, String name, Timestamp created, List<KozossegiImage> images) {
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
	public void setCreated(Timestamp created) {
		this.created = created;
	}
	public List<KozossegiImage> getImages() {
		return images;
	}
	public void setImages(List<KozossegiImage> images) {
		this.images = images;
	}
	String name;
	Timestamp created;
	List<KozossegiImage> images;
}
