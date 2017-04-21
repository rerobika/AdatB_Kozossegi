	package kozossegi.controller;

import java.util.List;

import kozossegi.bean.KozossegiMessageBean;
import kozossegi.bean.KozossegiNotificationBean;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
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
	public List<KozossegiProfileMiniatureBean> getFriends(int id) {
		return dao.getFriends(id);
	}

	public List<KozossegiProfileMiniatureBean> getMembers(int id) {
		return dao.getMembers(id);
	}

	public KozossegiProfileMiniatureBean getMiniature(int id) {
		return dao.getMiniature(id);
	}

	public List<KozossegiPostData> getPostData(int startinterval, int endinterval) {
		return dao.getPostData(startinterval, endinterval);
	}

	public List<KozossegiNotificationBean> getNotifications(int startinterval, int endinterval) {
		return dao.getNotifications(startinterval, endinterval);
	}	

	public boolean isUniqueEmail(String email) {
		return dao.isUniqueEmail(email);
	}
	public KozossegiProfileBean getProfile(int id)
	{
		return dao.getProfile(id);
	}

	public List<KozossegiMessageBean> getMessages(int id1,int id2) {
		return dao.getMessages(id1, id2);	
	}
	public void sendMessage(KozossegiMessageBean msg)
	{
		dao.sendMessage(msg);
	}
	
}
