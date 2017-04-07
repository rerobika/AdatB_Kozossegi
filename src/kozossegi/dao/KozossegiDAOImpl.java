package kozossegi.dao;

import java.awt.Image;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kozossegi.Labels;
import kozossegi.bean.KozossegiAlbum;
import kozossegi.bean.KozossegiNotification;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileMiniature;

public class KozossegiDAOImpl implements KozossegiDAO{

	public KozossegiDAOImpl() {
		try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} 
		catch (ClassNotFoundException e) {
				System.out.println("Failed to load SQLite JDBC drviver");
				e.printStackTrace();
			}
	}
	
	public List<KozossegiProfileMiniature> getFriends(int id) {
		List<KozossegiProfileMiniature> friends = new ArrayList<KozossegiProfileMiniature>();
		/*try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:"+Labels.DATABASE_PATH,Labels.DATABASE_USER,Labels.DATABASE_PASS);
			 PreparedStatement ps = conn.prepareStatement(Labels.GET_FRIENDS);)
		{
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				friends.add(new KozossegiProfileMiniature(rs.getInt("ID"), rs.getString("NEV"), getImageByID(rs.getInt("PROFILKEP"))));				
			}
			
		}catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}*/
		return friends;
	}


	public List<KozossegiProfileMiniature> getMembers(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	public KozossegiProfileMiniature getMiniature(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	public Image getImageByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	public KozossegiAlbum getAlbumByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	public List<KozossegiPostData> getPostData(int startinterval, int endinterval) {
		// TODO Auto-generated method stub
		return null;
	}


	public List<KozossegiNotification> getNotifications(int startinterval, int endinterval) {
		// TODO Auto-generated method stub
		return null;
	}

}
