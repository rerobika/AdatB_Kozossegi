package kozossegi.dao;

import java.awt.Image;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;

import kozossegi.Labels;
import kozossegi.bean.KozossegiAlbumBean;
import kozossegi.bean.KozossegiMessageBean;
import kozossegi.bean.KozossegiNotificationBean;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;

public class KozossegiDAOImpl implements KozossegiDAO {

	public KozossegiDAOImpl() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e) {
			System.out.println("Failed to load SQLite JDBC drviver");
			e.printStackTrace();
		}

	}

	public List<KozossegiProfileMiniatureBean> getFriends(int id) {
		List<KozossegiProfileMiniatureBean> friends = new ArrayList<KozossegiProfileMiniatureBean>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_FRIENDS);) {
			ps.setInt(1, id);
			ps.setInt(2, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				friends.add(new KozossegiProfileMiniatureBean(rs.getInt("ID"), rs.getString("NEV"),
						getImageByID(rs.getInt("PROFILKEP"))));
			}

		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return friends;
	}

	public List<KozossegiProfileMiniatureBean> getMembers(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public KozossegiProfileMiniatureBean getMiniature(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Image getImageByID(int id) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_IMAGEBYID);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			try {
				if (!rs.next())
				{
					return ImageIO.read(new URL(Labels.PROFILE_PICTURE_ICO_URL)).getScaledInstance(128, 128,
							Image.SCALE_FAST);
				}
				else
				{
					return ImageIO.read(new URL(Labels.FILESERVER_PATH + rs.getString("ELERESIUT"))).getScaledInstance(128,
						128, Image.SCALE_FAST);
				}
				
			} catch (IOException e1) {
				e1.printStackTrace();
			}

		} catch (SQLException e) {
			System.out.println("Error while getting picture!");
			e.printStackTrace();
		}
		return null;

	}

	public KozossegiAlbumBean getAlbumByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<KozossegiPostData> getPostData(int startinterval, int endinterval) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<KozossegiNotificationBean> getNotifications(int startinterval, int endinterval) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean isUniqueEmail(String email) {
		// TODO Auto-generated method stub
		return true;
	}

	public String getNameById(int id) {
		// TODO Auto-generated method stub
		return "Teszt nev";
	}

	@Override
	public KozossegiProfileBean getProfile(int id) {
		
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_USERBYID);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			Image img = null;
			
			if(rs.next())
			{	
				img = getImageByID(rs.getInt("PROFILKEP"));
				return new KozossegiProfileBean(rs.getString("NEV"), rs.getInt("ID"), rs.getDate("SZUL_DATUM"),
						rs.getBoolean("NEM"), rs.getString("LAKHELY"), rs.getString("ISKOLA"), rs.getString("HOBBI"),
						rs.getString("MUNKAHELY"), rs.getString("EMAIL"), rs.getString("JELSZO"), rs.getInt("MEGHIVO"), img);
			}
			else
			{
				img = getImageByID(0);
				return new KozossegiProfileBean("Ures", -1, new Date(), false, "-", "-", "-", "-", "-", "-",-1, img);
			}
				
		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<KozossegiMessageBean> getMessages(int id1, int id2) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_MESSAGES);) {
			List<KozossegiMessageBean> data = new ArrayList<KozossegiMessageBean>();
			ps.setInt(1, id1);
			ps.setInt(2, id2);
			ps.setInt(3, id1);
			ps.setInt(4, id2);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				data.add(new KozossegiMessageBean(rs.getInt("FELADO"), rs.getInt("CIMZETT"), rs.getString("UZENET"),
						rs.getDate("IDO")));
			}

			return data;
		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void sendMessage(KozossegiMessageBean msg) {

		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.SEND_MESSAGE);) {
			ps.setInt(1, msg.getFrom());
			ps.setInt(2, msg.getTo());
			ps.setDate(3, new java.sql.Date(msg.getTime().getTime()));
			ps.setString(4, msg.getContent());
			int success = ps.executeUpdate();
			if (success != 1)
				System.err.println("Error while inserting message!");
		} catch (SQLException e) {
			System.err.println("Error while listing user's friends!");
			e.printStackTrace();
		}
	}
}
