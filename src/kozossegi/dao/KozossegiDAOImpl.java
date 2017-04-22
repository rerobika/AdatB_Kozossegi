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
import kozossegi.bean.KozossegiClubBean;
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
						getImageByID(rs.getInt("PROFILKEP")).getScaledInstance(32, 32, Image.SCALE_FAST)));
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
					return ImageIO.read(new URL(Labels.PROFILE_PICTURE_URL)).getScaledInstance(256, 256,
							Image.SCALE_FAST);
				}
				else
				{
					return ImageIO.read(new URL(Labels.FILESERVER_PATH + rs.getString("ELERESIUT"))).getScaledInstance(256,	256, Image.SCALE_FAST);
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
			if(!(e.getErrorCode()==1))
				e.printStackTrace();
		}
	}

	@Override
	public List<KozossegiProfileMiniatureBean> getBirthday(int id) {
		List<KozossegiProfileMiniatureBean> bday = new ArrayList<KozossegiProfileMiniatureBean>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_BIRTHDAY);) {
			ps.setInt(1, id);
			ps.setInt(2, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				bday.add(new KozossegiProfileMiniatureBean(rs.getInt("ID"), rs.getString("NEV"),
						getImageByID(rs.getInt("PROFILKEP")).getScaledInstance(32, 32, Image.SCALE_FAST)));
			}

		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return bday;
	}

	@Override
	public List<KozossegiProfileMiniatureBean> getNameday(int id) {
		List<KozossegiProfileMiniatureBean> nday = new ArrayList<KozossegiProfileMiniatureBean>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_NAMEDAY);) {
			ps.setInt(1, id);
			ps.setInt(2, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				nday.add(new KozossegiProfileMiniatureBean(rs.getInt("ID"), rs.getString("NEV"),
						getImageByID(rs.getInt("PROFILKEP")).getScaledInstance(32, 32, Image.SCALE_FAST)));
			}

		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return nday;
	}

	@Override
	public List<KozossegiProfileMiniatureBean> getSuggestedClub(int id) {
		List<KozossegiProfileMiniatureBean> sclub = new ArrayList<KozossegiProfileMiniatureBean>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_SUGGESTEDCLUBS);) {
			ps.setInt(1, id);
			ps.setInt(2, id);
			ps.setInt(3, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				sclub.add(new KozossegiProfileMiniatureBean(rs.getInt("id"),rs.getString("NEV"),null));
			}
		} catch (SQLException e) {
			System.out.println("Error while getting member clubs!");
			e.printStackTrace();
		}
		return sclub;
	}

	@Override
	public List<KozossegiProfileMiniatureBean> getSuggestedFriends(int id) {
		List<KozossegiProfileMiniatureBean> bday = new ArrayList<KozossegiProfileMiniatureBean>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_SUGGESTEDFRIENDS);) {
			ps.setInt(1, id);
			ps.setInt(2, id);
			ps.setInt(3, id);
			ps.setInt(4, id);
			ps.setInt(5, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				bday.add(new KozossegiProfileMiniatureBean(rs.getInt("ID"), rs.getString("NEV"),
						getImageByID(rs.getInt("PROFILKEP")).getScaledInstance(32, 32, Image.SCALE_FAST)));
			}

		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return bday;
	}

	@Override
	public List<KozossegiProfileMiniatureBean> getMemberClubs(int id) {
		List<KozossegiProfileMiniatureBean> mclub = new ArrayList<KozossegiProfileMiniatureBean>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_MEMBERCLUBS);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				mclub.add(new KozossegiProfileMiniatureBean(rs.getInt("id"),rs.getString("NEV"),null));
			}

		} catch (SQLException e) {
			System.out.println("Error while getting member clubs!");
			e.printStackTrace();
		}
		return mclub;
	}

	@Override
	public List<KozossegiProfileMiniatureBean> getOwnClubs(int id) {
		List<KozossegiProfileMiniatureBean> oclub = new ArrayList<KozossegiProfileMiniatureBean>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_OWNEDCLUBS);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				oclub.add(new KozossegiProfileMiniatureBean(rs.getInt("id"),rs.getString("NEV"),null));
			}

		} catch (SQLException e) {
			System.out.println("Error while getting owned clubs!");
			e.printStackTrace();
		}
		return oclub;
	}

	@Override
	public void addProfile(KozossegiProfileBean profile) {
		int residenceId=21,schoolId=325,workplaceId=21,hobbyId=61;
		
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_HOBBYBYNAME);) {
				ps.setString(1,profile.getHobby());
				ResultSet rs = ps.executeQuery();
				if(rs.next())
					hobbyId=rs.getInt("ID");
				
		} catch (SQLException e) {
			System.out.println("Error while getting profile!");
			e.printStackTrace();
			return;
		}
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_RESIDENCEBYNAME);) {
				ps.setString(1,profile.getResidence());
				ResultSet rs = ps.executeQuery();
				if(rs.next())
					residenceId=rs.getInt("ID");
		} catch (SQLException e) {
			System.out.println("Error while getting profile!");
			e.printStackTrace();
			return;
		}
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_SCHOOLBYNAME);) {
				ps.setString(1,profile.getSchool());
				ResultSet rs = ps.executeQuery();
				if(rs.next())
					schoolId=rs.getInt("ID");
		} catch (SQLException e) {
			System.out.println("Error while getting profile!");
			e.printStackTrace();
			return;
		}
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_WORKPLACEBYNAME);) {
				ps.setString(1,profile.getWorkplace());
				ResultSet rs = ps.executeQuery();
				if(rs.next())
					workplaceId=rs.getInt("ID");
		} catch (SQLException e) {
			System.out.println("Error while getting profile!");
			e.printStackTrace();
			return;
		}
		
		
		
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.CREATE_PROFILE);) {
			
			ps.setString(1, profile.getName());
			ps.setString(2, profile.getPass());
			ps.setString(3, profile.getEmail());
			ps.setDate(4, new java.sql.Date(profile.getDob().getTime()));
			ps.setInt(5,profile.isGender()?1:0);
			ps.setInt(6,residenceId);
			ps.setInt(7,schoolId);
			ps.setInt(8,hobbyId);
			ps.setInt(9,workplaceId);
			ps.setInt(10,profile.getInviter());
			ps.setString(11,profile.getPicloc());
			ResultSet rs = ps.executeQuery();
		} catch (SQLException e) {
			System.out.println("Error while getting owned clubs!");
			e.printStackTrace();
		}
			
	}

	@Override
	public List<String> getSchools() {
		List<String> list = new ArrayList<String>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_SCHOOLS);) {
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					list.add(rs.getString("NEV"));
				}
				return list;
		} catch (SQLException e) {
			System.out.println("Error while getting schools!");
			e.printStackTrace();
			
		}
		return null;
	}

	@Override
	public List<String> getWorkplaces() {
		List<String> list = new ArrayList<String>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_WORKPLACES);) {
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					list.add(rs.getString("NEV"));
				}
				return list;
		} catch (SQLException e) {
			System.out.println("Error while getting workplaces!");
			e.printStackTrace();
			
		}
		return null;
	}

	@Override
	public List<String> getResidences() {
		List<String> list = new ArrayList<String>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_RESIDENCES);) {
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					list.add(rs.getString("NEV"));
				}
				return list;
		} catch (SQLException e) {
			System.out.println("Error while getting residences!");
			e.printStackTrace();
			
		}
		return null;
	}

	@Override
	public List<String> getHobbys() {
		List<String> list = new ArrayList<String>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_HOBBYS);) {
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					list.add(rs.getString("NEV"));
				}
				return list;
		} catch (SQLException e) {
			System.out.println("Error while getting hobbys!");
			e.printStackTrace();
			
		}
		return null;
	}

	@Override
	public void markAsFriend(int id1, int id2) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.MARK_FRIEND);) {
				ps.setInt(1, id1);
				ps.setInt(2, id2);
				ps.setDate(3, new java.sql.Date(new Date().getTime()));
				boolean succes = ps.execute();
				if(!succes)
					System.out.println("Error while marking friend!");
		} catch (SQLException e) {
			System.out.println("Error while marking friend!");
			e.printStackTrace();		
		}
		
	}

	@Override
	public void confirmFriend(int id1, int id2) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.CONFIRM_FRIEND);) {
				ps.setDate(1, new java.sql.Date(new Date().getTime()));
				ps.setInt(2, id2);
				ps.setInt(3, id1);
				boolean succes = ps.execute();
				if(!succes)
					System.out.println("Error while marking friend!");
		} catch (SQLException e) {
			System.out.println("Error while marking friend!");
			e.printStackTrace();		
		}
		
	}
}
