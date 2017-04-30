package kozossegi.bean;

public class KozossegiNotificationBean {
	int from;
	public KozossegiNotificationBean(int from, int to, String content) {
		super();
		this.from = from;
		this.to = to;
		this.content = content;
	}
	public int getFrom() {
		return from;
	}
	public void setFrom(int from) {
		this.from = from;
	}
	public int getTo() {
		return to;
	}
	public void setTo(int to) {
		this.to = to;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	int to;
	String content;
}
