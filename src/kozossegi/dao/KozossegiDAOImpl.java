package kozossegi.dao;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kozossegi.Labels;
import kozossegi.Labels.KozossegiFriendState;
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

	
	
	public KozossegiProfileMiniatureBean getMiniature(int id, Connection conn) {
		try (PreparedStatement ps = conn.prepareStatement(Labels.GET_USER_MINIATURE_BYID);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			KozossegiImage img = null;
			
			if(rs.next())
			{	
				img = getImageByID(rs.getInt("PROFILKEP"));
				return new KozossegiProfileMiniatureBean( rs.getInt("ID"),rs.getString("NEV"), img);
			}
			else
			{
				img = getImageByID(0);
				return new KozossegiProfileMiniatureBean( -1,"Ures", img);
			}
				
		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return null;
	}
	
	
	public KozossegiProfileMiniatureBean getMiniature(int id) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_USER_MINIATURE_BYID);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			KozossegiImage img = null;
			
			if(rs.next())
			{	
				img = getImageByID(rs.getInt("PROFILKEP"));
				return new KozossegiProfileMiniatureBean( rs.getInt("ID"),rs.getString("NEV"), img);
			}
			else
			{
				img = getImageByID(0);
				return new KozossegiProfileMiniatureBean( -1,"Ures", img);
			}
				
		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return null;
	}

	public KozossegiImage getImageByID(int id) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_IMAGEBYID);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			try {
				if (!rs.next())
				{
					return new KozossegiImage(new URL(Labels.PROFILE_PICTURE_URL),0);
				}
				else
				{
					return new KozossegiImage(new URL(rs.getString("ELERESIUT")),rs.getInt("POSZTID"));
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


	public List<KozossegiPostData> getPostData(int startinterval, int endinterval,int id) {
		List<KozossegiPostData> post = new ArrayList<KozossegiPostData>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_POSTS);) {
			ps.setInt(1, id);
			ps.setInt(2, id);
			ps.setInt(3, id);
			ps.setInt(4, startinterval);
			ps.setInt(5, endinterval);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				
				post.add(new KozossegiPostData(rs.getInt("ID"), new KozossegiProfileNameBean(rs.getInt("FELADO"),rs.getString("FELADONEV")), 
						new KozossegiProfileNameBean(rs.getInt("CIMZETT"),rs.getString("CIMZETTNEV")), rs.getDate("IDO"), rs.getString("TARTALOM"), getCommentData(rs.getInt("ID"),conn), rs.getInt("SZULO")));
			}

		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return post;
	}

	public List<KozossegiNotificationBean> getNotifications(int startinterval, int endinterval) {
		// TODO Auto-generated method stub
		return null;
	}

	
	@Override
	public KozossegiProfileBean getProfile(int id) {
		
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_USERBYID);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			KozossegiImage img = null;
			
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
						getImageByID(rs.getInt("PROFILKEP"))));
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
						getImageByID(rs.getInt("PROFILKEP"))));
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
				sclub.add(new KozossegiProfileMiniatureBean(rs.getInt("id"),rs.getString("NEV")));
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
						getImageByID(rs.getInt("PROFILKEP"))));
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
				mclub.add(new KozossegiProfileMiniatureBean(rs.getInt("id"),rs.getString("NEV")));
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
				oclub.add(new KozossegiProfileMiniatureBean(rs.getInt("id"),rs.getString("NEV")));
			}

		} catch (SQLException e) {
			System.out.println("Error while getting owned clubs!");
			e.printStackTrace();
		}
		return oclub;
	}

	@Override
	public void addProfile(KozossegiProfileBean profile) {
		int residenceId=21,schoolId=375,workplaceId=21,hobbyId=61;
		
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
			ps.execute();	
		} catch (SQLException e) {
			System.out.println("Error while creating profile!");
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

	@Override
	public boolean isValidInviterCode(int id) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.IS_VALID_INVITER_CODE);) {
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();
				return rs.next();
		} catch (SQLException e) {
			System.out.println("Error while executing invite code validator!");
			e.printStackTrace();		
		}
		return false;
	}
	
	public boolean isUniqueEmail(String email) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.IS_UNIQUE_EMAIL);) {
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				return !rs.next();
		} catch (SQLException e) {
			System.out.println("Error while executing email validator!");
			e.printStackTrace();		
		}
		return false;
	}

	@Override
	public int uploadPicture(File filename, String albumName, int id) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.UPLOAD_IMAGE);) {
				ps.setString(1, KozossegiImageManager.upload(filename, filename.getName()));	
				ps.setString(2, albumName);				
				ps.setInt(3, id);
				ResultSet rs = ps.executeQuery();
				rs.next();
				return rs.getInt("ID");
		} catch (SQLException e) {
			System.out.println("Error while uploadPicture!");
			e.printStackTrace();		
	}
		return 1;
}

	@Override
	public void updateProfilePicture(int id, int picId) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.UPDATE_PROFIL_PICTURE);) {
				ps.setInt(1, picId);
				ps.setInt(2, id);				
				boolean succes = ps.execute();
				if(!succes)
					System.out.println("Error while updating profile picture!");
		} catch (SQLException e) {
			System.out.println("Error while updateProfilePicture!");
			e.printStackTrace();		
		}
		
	}

	@Override
	public KozossegiProfileNameBean login(String email, String password) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.LOGIN);) {
				ps.setString(1, password);
				ps.setString(2, email);				
				ResultSet rs = ps.executeQuery();
				if(rs.next())
					return new KozossegiProfileNameBean(rs.getInt("ID"),rs.getString("NEV"));
				else
					System.out.println("Invalid login data!");
					return null;		
		} catch (SQLException e) {
			System.out.println("Invalid login data!");
			e.printStackTrace();		
		}
		return null;
	}

	@Override
	public KozossegiRelation getFriendState(int id1, int id2) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_FRIEND_STATE);) {
				ps.setInt(1, id1);
				ps.setInt(2, id2);
				ps.setInt(3, id1);
				ps.setInt(4, id2);
						
				ResultSet rs = ps.executeQuery();
				if(rs.next())
				{
					return new KozossegiRelation(rs.getInt("KIID"),rs.getInt("KIVELID"),rs.getInt("STATUSZ")==0?KozossegiFriendState.PENDING:KozossegiFriendState.FRIENDS);
				}	
				else
					return new KozossegiRelation(id1, id2, KozossegiFriendState.NON_FRIENDS);	
		} catch (SQLException e) {
			System.out.println("Error while getting friend state!");
			e.printStackTrace();		
		}
		return new KozossegiRelation(id1, id2, KozossegiFriendState.NON_FRIENDS);
	}

	@Override
	public void removeMark(int id1, int id2) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.REMOVE_MARK);) {
				ps.setInt(1, id1);
				ps.setInt(2, id2);
				ps.setInt(3, id1);
				ps.setInt(4, id2);
						
				boolean succes = ps.execute();
				if(!succes)
					System.out.println("Error while deleting friend state!");
		} catch (SQLException e) {
			System.out.println("Error while deleting friend state!");
			e.printStackTrace();		
		}		
	}

	@Override
	public List<KozossegiProfileMiniatureBean> getPendingFriends(int id) {
		List<KozossegiProfileMiniatureBean> friends = new ArrayList<KozossegiProfileMiniatureBean>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_PENDING);) {
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

	@Override
	public KozossegiProfileNameBean getNameById(int id) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_NAME_BY_ID);) {
			ps.setInt(1, id);	
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			return new KozossegiProfileNameBean(rs.getInt("ID"),rs.getString("NEV"));

		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<KozossegiPostData> getCommentData(int id,Connection conn) {
		List<KozossegiPostData> comment = new ArrayList<KozossegiPostData>();
		try (PreparedStatement ps = conn.prepareStatement(Labels.GET_COMMENTS);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				
				comment.add(new KozossegiPostData(rs.getInt("ID"), getNameById(rs.getInt("FELADO")), getNameById(rs.getInt("CIMZETT")), rs.getDate("IDO"), rs.getString("TARTALOM"), null, rs.getInt("SZULO")));
			}

		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		return comment;
	}

	@Override
	public void sendPost(KozossegiPostData data) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.SEND_POST);) {
			ps.setInt(1, data.getSender().getId());
			if(data.getReceiver()==null)
				ps.setNull(2, java.sql.Types.INTEGER);
			else
				ps.setInt(2, data.getReceiver().getId());
			ps.setDate(3, new java.sql.Date(data.getTime().getTime()));
			ps.setString(4, data.getContent());
			if(data.getParent()==-1)
				ps.setNull(5, java.sql.Types.INTEGER);
			else
				ps.setInt(5, data.getParent());
			int success= ps.executeUpdate();
			if(success==0)
				System.out.println("Error while adding post!");

		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
	}

	@Override
	public List<KozossegiAlbumBean> getAlbums(int id) {
		List<KozossegiAlbumBean> data = new ArrayList<KozossegiAlbumBean>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_ALBUMS);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				data.add(new KozossegiAlbumBean(rs.getInt("FELHASZNALOID"), rs.getString("NEV"), rs.getTimestamp("IDO"), getAlbum(rs.getString("NEV"), rs.getTimestamp("IDO"),conn)));
			}
			return data;
		} catch (SQLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		
		return null;
	}
	public List<KozossegiImage> getAlbum(String name,Timestamp created,Connection conn){
		List<KozossegiImage> data = new ArrayList<KozossegiImage>();
		try (PreparedStatement ps = conn.prepareStatement(Labels.GET_ALBUM);) {
			ps.setString(1, name);
			ps.setTimestamp(2,created);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				data.add(new KozossegiImage(new URL(rs.getString("ELERESIUT")),rs.getInt("POSZTID")));
			}
			return data;
		} catch (SQLException | MalformedURLException e) {
			System.out.println("Error while listing user's friends!");
			e.printStackTrace();
		}
		
		return null;
		
	}

	public KozossegiClubBean getClub(int id) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.GET_CLUBBYID);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();			
			if(rs.next())
			{	
				return new KozossegiClubBean(rs.getString("NEV"), id, rs.getInt("TULAJDONOS"), rs.getDate("KEZDET"), rs.getString("LEIRAS"), getMembers(id, rs.getInt("TULAJDONOS"),conn));
			}
			else
			{				
				return new KozossegiClubBean("Ures",0 ,0, null, "", null);
			}
				
		} catch (SQLException e) {
			System.out.println("Error while get club!");
			e.printStackTrace();
		}
		return null;
	}
	
	public List<KozossegiProfileMiniatureBean> getMembers(int id, int ownerId, Connection conn) {
		List<KozossegiProfileMiniatureBean> result = new ArrayList<KozossegiProfileMiniatureBean>(); 
		try (PreparedStatement ps = conn.prepareStatement(Labels.GET_TAGS);) {
			ps.setInt(1, id);
			ps.setInt(2, ownerId);
			ResultSet rs = ps.executeQuery();			
			while(rs.next())
			{	
				result.add(getMiniature(rs.getInt("SZEMELYID"),conn));
			}
				
		} catch (SQLException e) {
			System.out.println("Error while list club members!");
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public void joinClub(int id, int id2) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.JOIN_CLUB);) {
				ps.setInt(1, id);
				ps.setInt(2, id2);
				int rn = ps.executeUpdate();
				if(rn == 1)
					System.out.println("Successful join!");
		} catch (SQLException e) {
			System.out.println("Error while marking friend!");
			e.printStackTrace();		
		}
		
	}

	@Override
	public void updateClubDesc(String text, int id) {
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:" + Labels.DATABASE_PATH,
				Labels.DATABASE_USER, Labels.DATABASE_PASS);
				PreparedStatement ps = conn.prepareStatement(Labels.UPDATE_CLUB_DESC);) {
				ps.setString(1, text);
				ps.setInt(2, id);
				int rn = ps.executeUpdate();
				if(rn == 1)
					System.out.println("Successful update!");
		} catch (SQLException e) {
			System.out.println("Error while marking friend!");
			e.printStackTrace();		
		}
	}
}
