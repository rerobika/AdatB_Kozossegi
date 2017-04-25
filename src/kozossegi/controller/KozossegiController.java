	package kozossegi.controller;

import java.io.File;
import java.util.List;

import kozossegi.bean.KozossegiMessageBean;
import kozossegi.bean.KozossegiNotificationBean;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.bean.KozossegiProfileNameBean;
import kozossegi.bean.KozossegiRelation;
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

	public void addProfile(KozossegiProfileBean profile)
	{
		dao.addProfile(profile);
	}

	public List<String> getResidences() {
		return dao.getResidences();
	}
	public List<String> getSchools() {
	
		return dao.getSchools();
	}

	public List<String>  getHobbies() {
		
		return dao.getHobbys();
	}

	public List<String>  getWorkPlaces() {
		
		return dao.getWorkplaces();
	}
	public void markAsFriend(int id1,int id2)
	{
		dao.markAsFriend(id1, id2);
	}
	public void confirmFriend(int id1,int id2)
	{
		dao.confirmFriend(id1, id2);
	}
	
	public boolean isValidInviterCode(int id){
		return dao.isValidInviterCode(id);
	}
	public int uploadPicture(File filename, String albumName, int id){
		return dao.uploadPicture(filename,albumName, id);
	}
	public void updateProfilePicture(int id, int picId){	
		dao.updateProfilePicture(id,picId);
	}
	public KozossegiProfileMiniatureBean login(String email,String password)
	{
		return dao.login(email, password);
	}
	public KozossegiRelation getFriendState(int id1,int id2)
	{
		return dao.getFriendState(id1, id2);
	}
	public void removeMark(int id1,int id2)
	{
		dao.removeMark(id1, id2);
	}
	public List<KozossegiProfileMiniatureBean> getPendingFriends(int id)
	{
		return dao.getPendingFriends(id);
	}
	public KozossegiProfileNameBean getNameById(int id) {
		return dao.getNameById(id);
	}
	
}
