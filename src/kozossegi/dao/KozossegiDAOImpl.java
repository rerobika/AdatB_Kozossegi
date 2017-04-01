package kozossegi.dao;

import java.awt.Image;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
	@Override
	public List<KozossegiProfileMiniature> getFriends(int id) {
		try {
			Connection c = DriverManager.getConnection("jdbc:oracle:thin:"+Labels.DATABASE_PATH,Labels.DATABASE_USER,Labels.DATABASE_PASS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<KozossegiProfileMiniature> getMembers(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public KozossegiProfileMiniature getMiniature(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Image getImageByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public KozossegiAlbum getAlbumByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<KozossegiPostData> getPostData(int startinterval, int endinterval) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<KozossegiNotification> getNotifications(int startinterval, int endinterval) {
		// TODO Auto-generated method stub
		return null;
	}

}
