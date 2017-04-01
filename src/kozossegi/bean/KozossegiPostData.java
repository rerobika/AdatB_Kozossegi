package kozossegi.bean;

import java.awt.Image;
import java.util.Date;

public class KozossegiPostData {
	public KozossegiPostData(int id, int sender, int receiver, Date time, String content, Image pic, int parent) {
		super();
		this.id = id;
		this.sender = sender;
		this.receiver = receiver;
		this.time = time;
		this.content = content;
		this.pic = pic;
		this.parent = parent;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSender() {
		return sender;
	}
	public void setSender(int sender) {
		this.sender = sender;
	}
	public int getReceiver() {
		return receiver;
	}
	public void setReceiver(int receiver) {
		this.receiver = receiver;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Image getPic() {
		return pic;
	}
	public void setPic(Image pic) {
		this.pic = pic;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	int id;
	int sender;
	int receiver;
	Date time;
	String content;
	Image pic;
	int parent;
	
}
