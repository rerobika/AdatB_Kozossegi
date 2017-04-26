package kozossegi.dao;

import java.awt.Image;
import java.io.File;
import java.util.List;

import kozossegi.bean.KozossegiAlbumBean;
import kozossegi.bean.KozossegiMessageBean;
import kozossegi.bean.KozossegiNotificationBean;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.bean.KozossegiProfileNameBean;
import kozossegi.bean.KozossegiRelation;

public interface KozossegiDAO {

	public List<KozossegiProfileMiniatureBean> getFriends(int id);
	public List<KozossegiProfileMiniatureBean> getMembers(int id);
	public KozossegiProfileMiniatureBean getMiniature(int id);
	public Image getImageByID(int id);
	public List<KozossegiPostData> getPostData(int startinterval,int endinterval,int id);
	public List<KozossegiPostData> getCommentData(int id);
	public void sendPost(KozossegiPostData data);
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
	public KozossegiRelation getFriendState(int id1,int id2);
	public void removeMark(int id1,int id2);
	public boolean isValidInviterCode(int id);
	public int uploadPicture(File filename, String albumName, int id);
	public void updateProfilePicture(int id, int picId);
	public KozossegiProfileMiniatureBean login(String email,String password);
	public List<KozossegiProfileMiniatureBean> getPendingFriends(int id);
	public KozossegiProfileNameBean getNameById(int id);
	public List<KozossegiAlbumBean> getAlbums(int id);
}
