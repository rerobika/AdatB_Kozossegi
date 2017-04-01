package kozossegi.dao;

import java.awt.Image;
import java.util.List;

import kozossegi.bean.KozossegiAlbum;
import kozossegi.bean.KozossegiNotification;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileMiniature;

public interface KozossegiDAO {

	public List<KozossegiProfileMiniature> getFriends(int id);
	public List<KozossegiProfileMiniature> getMembers(int id);
	public KozossegiProfileMiniature getMiniature(int id);
	public Image getImageByID(int id);
	public KozossegiAlbum getAlbumByID(int id);
	public List<KozossegiPostData> getPostData(int startinterval,int endinterval);
	public List<KozossegiNotification> getNotifications(int startinterval,int endinterval);
	
}
