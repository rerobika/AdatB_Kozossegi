package kozossegi.bean;

import java.util.Date;

public class KozossegiMessageBean extends KozossegiNotificationBean {
	private Date time;

	public KozossegiMessageBean(int from, int to, String content, Date time) {
		super(from, to, content);
		this.time = time;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "KozossegiMessage [time=" + time + ", from=" + from + ", to=" + to + ", content=" + content + "]";
	}
	

}
