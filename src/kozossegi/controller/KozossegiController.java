package kozossegi.controller;

import java.util.List;

import kozossegi.bean.KozossegiNotification;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileMiniature;
import kozossegi.dao.KozossegiDAO;
import kozossegi.dao.KozossegiDAOImpl;

public class KozossegiController{
	private KozossegiDAO dao = new KozossegiDAOImpl();

	public List<KozossegiProfileMiniature> getFriends(int id) {
		return dao.getFriends(id);
	}

	public List<KozossegiProfileMiniature> getMembers(int id) {
		return dao.getMembers(id);
	}

	public KozossegiProfileMiniature getMiniature(int id) {
		return dao.getMiniature(id);
	}

	public List<KozossegiPostData> getPostData(int startinterval, int endinterval) {
		return dao.getPostData(startinterval, endinterval);
	}

	public List<KozossegiNotification> getNotifications(int startinterval, int endinterval) {
		return dao.getNotifications(startinterval, endinterval);
	}
	
	
}
