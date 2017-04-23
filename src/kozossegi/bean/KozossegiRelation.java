package kozossegi.bean;

import kozossegi.Labels.KozossegiFriendState;

public class KozossegiRelation {
	int from,to;
	KozossegiFriendState state;
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
	public KozossegiFriendState getState() {
		return state;
	}
	public void setState(KozossegiFriendState state) {
		this.state = state;
	}
	public KozossegiRelation(int from, int to, KozossegiFriendState state) {
		super();
		this.from = from;
		this.to = to;
		this.state = state;
	}
	

}
