	package kozossegi.controller;

import java.util.ArrayList;
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

	public List<KozossegiProfileMiniatureBean> getBirthday(int id) 
	{
			return dao.getBirthday(id);
	}

	public List<KozossegiProfileMiniatureBean> getNameday(int id) 
	{
			return dao.getNameday(id);
	}
	
	public List<KozossegiProfileMiniatureBean> getMemberClubs(int id){
		return dao.getMemberClubs(id);
	}
	public List<KozossegiProfileMiniatureBean> getOwnClubs(int id){
		return dao.getOwnClubs(id);
	}
	public List<KozossegiProfileMiniatureBean> getSuggestedFriends(int id)
	{
		return dao.getSuggestedFriends(id);
	}
	public List<KozossegiProfileMiniatureBean> getSuggestedClubs(int id)	
	{
		return dao.getSuggestedClub(id);
	}

	public List<String> getResidences() {
		List<String> res = new ArrayList<String>();
		res.add("Üllés");
		res.add("Szeged");		
		return  res;
	}

	public List<String> getSchools() {
		// TODO Auto-generated method stub
		return new ArrayList<String>();
	}

	public List<String>  getHobbies() {
		// TODO Auto-generated method stub
		return new ArrayList<String> ();
	}

	public List<String>  getWorkPlaces() {
		// TODO Auto-generated method stub
		return new ArrayList<String> ();
	}
}
