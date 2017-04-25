package kozossegi.bean;

import java.util.Date;

public class KozossegiPostData {
	public KozossegiPostData(int id, KozossegiProfileNameBean sender, KozossegiProfileNameBean receiver, Date time,
			String content, int parent) {
		super();
		this.id = id;
		this.sender = sender;
		this.receiver = receiver;
		this.time = time;
		this.content = content;
		this.parent = parent;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	public KozossegiProfileNameBean getSender() {
		return sender;
	}
	public void setSender(KozossegiProfileNameBean sender) {
		this.sender = sender;
	}
	public KozossegiProfileNameBean getReceiver() {
		return receiver;
	}
	public void setReceiver(KozossegiProfileNameBean receiver) {
		this.receiver = receiver;
	}
	int id;
	
	KozossegiProfileNameBean sender;
	KozossegiProfileNameBean receiver;
	Date time;
	String content;
	int parent;
	
}
