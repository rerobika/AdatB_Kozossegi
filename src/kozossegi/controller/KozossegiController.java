	package kozossegi.controller;

import java.util.List;

import kozossegi.bean.KozossegiNotification;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileMiniature;
import kozossegi.dao.KozossegiDAO;
import kozossegi.dao.KozossegiDAOImpl;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiController{
	private KozossegiDAO dao = new KozossegiDAOImpl();
	
	
	//GUI
	public void startDesktop() {
		new KozossegiMainFrame(this);		
	}

	//DAO connect
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

	public boolean isUniqueEmail(String email) {
		return dao.isUniqueEmail(email);
	}
	
	public String getNameById(int id){
		return dao.getNameById(id);
	}
	
}
