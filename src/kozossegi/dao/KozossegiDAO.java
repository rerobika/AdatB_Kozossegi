package kozossegi.dao;

import java.awt.Image;
import java.util.List;

import kozossegi.bean.KozossegiAlbumBean;
import kozossegi.bean.KozossegiMessageBean;
import kozossegi.bean.KozossegiNotificationBean;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;

public interface KozossegiDAO {

	public List<KozossegiProfileMiniatureBean> getFriends(int id);
	public List<KozossegiProfileMiniatureBean> getMembers(int id);
	public KozossegiProfileMiniatureBean getMiniature(int id);
	public Image getImageByID(int id);
	public KozossegiAlbumBean getAlbumByID(int id);
	public List<KozossegiPostData> getPostData(int startinterval,int endinterval);
	public List<KozossegiNotificationBean> getNotifications(int startinterval,int endinterval);
	public boolean isUniqueEmail(String email);
	public KozossegiProfileBean getProfile(int id);
	public List<KozossegiMessageBean> getMessages(int id1,int id2);
	public void sendMessage(KozossegiMessageBean msg);
	public List<KozossegiProfileMiniatureBean> getBirthday(int id);
	public List<KozossegiProfileMiniatureBean> getNameday(int id);
	public List<KozossegiProfileMiniatureBean> getSuggestedClub(int id);
	public List<KozossegiProfileMiniatureBean> getSuggestedFriends(int id);
	public List<KozossegiProfileMiniatureBean> getMemberClubs(int id);
	public List<KozossegiProfileMiniatureBean> getOwnClubs(int id);
	public void addProfile(KozossegiProfileBean profile);
	public List<String> getSchools();
	public List<String> getWorkplaces();
	public List<String> getResidences();
	public List<String> getHobbys();
	public void markAsFriend(int id1,int id2);
	public void confirmFriend(int id1,int id2);
	public boolean isValidInviterCode(int id);
	public int uploadPicture(String pictureName, String albumName, int id);
	public void updateProfilePicture(String pictureName, String albumName, int id, int picId);
	
}
