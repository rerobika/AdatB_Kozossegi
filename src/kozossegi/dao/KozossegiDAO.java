package kozossegi.dao;

import java.io.File;
import java.sql.Connection;
import java.util.List;

import kozossegi.bean.KozossegiAlbumBean;
import kozossegi.bean.KozossegiClubBean;
import kozossegi.bean.KozossegiImage;
import kozossegi.bean.KozossegiMessageBean;
import kozossegi.bean.KozossegiNotificationBean;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.bean.KozossegiProfileNameBean;
import kozossegi.bean.KozossegiRelation;

public interface KozossegiDAO {

	public List<KozossegiProfileMiniatureBean> getFriends(int id);
	public KozossegiProfileMiniatureBean getMiniature(int id);
	public KozossegiImage getImageByID(int id);
	public List<KozossegiPostData> getPostData(int startinterval,int endinterval,int id);
	public List<KozossegiPostData> getCommentData(int id,Connection conn);
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
	public KozossegiProfileNameBean login(String email,String password);
	public List<KozossegiProfileMiniatureBean> getPendingFriends(int id);
	public KozossegiProfileNameBean getNameById(int id);
	public List<KozossegiAlbumBean> getAlbums(int id);
	public KozossegiClubBean getClub(int id);
	public void joinClub(int id, int id2);
	public void updateClubDesc(String text, int id);
	public void addClub(KozossegiClubBean club);
	public void updateProfile(KozossegiProfileBean profile);
	public int getInvitedCount(int id);
	public List<KozossegiProfileMiniatureBean> getSearchResult(int id, String text);
}
