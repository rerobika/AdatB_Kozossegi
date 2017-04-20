package kozossegi.view;

import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClubBean;
import kozossegi.bean.KozossegiMessageBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.controller.KozossegiController;
import kozossegi.view.elements.KozossegiBirthAndNamedayMenu;
import kozossegi.view.elements.KozossegiClubMenu;
import kozossegi.view.elements.KozossegiMenu;
import kozossegi.view.elements.KozossegiProfileInfo;
import kozossegi.view.elements.KozossegiSearchBox;
import kozossegi.view.elements.KozossegiSuggestBox;
import kozossegi.view.elements.maincontent.KozossegiLogin;
import kozossegi.view.elements.maincontent.KozossegiProfile;

public class KozossegiMainFrame extends JFrame{
	private static final long serialVersionUID = -3443677995502851727L;
	private KozossegiController controller;
	private JPanel mainContentPanel;
	private JPanel logoPanel;
	private JPanel leftSideContentPanel;
	private JPanel topSideContentPanel;
	private JPanel rightSideContentPanel;
	private Image logoImage;
	private CardLayout cardLayout;
	//USERDATA
	private KozossegiProfileMiniatureBean profileMiniature;
	private List<KozossegiClubBean> ownClubList;
	private List<KozossegiClubBean> tagClubList;
	private List<KozossegiClubBean> suggestedClubList;
	private List<KozossegiProfileMiniatureBean> suggestedFriendList;
	private List<KozossegiProfileMiniatureBean> birthdayList;
	private List<KozossegiProfileMiniatureBean> namedayList;
	private List<KozossegiProfileMiniatureBean> friendList;
	private kozossegi.bean.KozossegiProfileBean profile;
	
	public kozossegi.bean.KozossegiProfileBean getProfile() {
		return profile;
	}


	public void setProfile(kozossegi.bean.KozossegiProfileBean profile) {
		this.profile = profile;
	}


	public KozossegiMainFrame(KozossegiController controller) {
		this.controller = controller;
		mainContentPanel = new JPanel(new CardLayout());
		logoPanel = new JPanel(new FlowLayout());
		leftSideContentPanel = new JPanel(new GridLayout(2,10,1,10));
		topSideContentPanel = new JPanel(new FlowLayout());
		rightSideContentPanel = new JPanel(new GridLayout(2,10,1,10));
		cardLayout = (CardLayout) mainContentPanel.getLayout();
		logoImage = getImageFromURL(Labels.LOGO_URL);
		//USERDATA

		ownClubList = new ArrayList<KozossegiClubBean>();
		tagClubList = new ArrayList<KozossegiClubBean>();
		suggestedClubList = new ArrayList<KozossegiClubBean>();
		suggestedFriendList = new ArrayList<KozossegiProfileMiniatureBean>();
		birthdayList = new ArrayList<KozossegiProfileMiniatureBean>();
		namedayList = new ArrayList<KozossegiProfileMiniatureBean>();
		profile = controller.getProfile(675);
		friendList = controller.getFriends(profile.getId());
		profileMiniature = new KozossegiProfileMiniatureBean(profile);
		friendList=controller.getFriends(profile.getId());
		getContentPane().setLayout(new BorderLayout(20,20));
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setResizable(false);
		setTitle(Labels.MAIN_FRAME_TITLE);		
		getContentPane().add(mainContentPanel, BorderLayout.CENTER);		
		getContentPane().add(leftSideContentPanel, BorderLayout.WEST);		
		getContentPane().add(topSideContentPanel, BorderLayout.NORTH);		
		getContentPane().add(rightSideContentPanel, BorderLayout.EAST);		
		setMainContent(startScreen());
		setVisible(true);
					
	}
	
	
	public JPanel startScreen(){
		 return new KozossegiLogin(this);
	}

	public void setMainContent(JPanel panelToVisible) {
		mainContentPanel.removeAll();
		mainContentPanel.add(panelToVisible,panelToVisible.getName());
		cardLayout.show(mainContentPanel, panelToVisible.getName());
		pack();		
	}
	
	public void initializeViewElements(){	
		mainContentPanel.setPreferredSize(new Dimension(640, 480));
		logoPanel.add(new JLabel(new ImageIcon(logoImage)));
		
		topSideContentPanel.add(logoPanel);	
		topSideContentPanel.add(new KozossegiSearchBox(this));
		topSideContentPanel.add(new KozossegiMenu(this));			
			
		leftSideContentPanel.add(new KozossegiProfileInfo(this));
		leftSideContentPanel.add(new KozossegiClubMenu(this));				
		
		rightSideContentPanel.add(new KozossegiBirthAndNamedayMenu(this));
		rightSideContentPanel.add(new KozossegiSuggestBox(this));
		
	}
	
	public void initializeUserData(){
		KozossegiClubBean test_club = new KozossegiClubBean("asd",900,782,new Date(),"asd",null);
		
		KozossegiProfileMiniatureBean test_profileMiniature = new KozossegiProfileMiniatureBean(625,"Teszt Elek1", getImageFromURL(Labels.PROFILE_PICTURE_ICO_URL));
		KozossegiProfileMiniatureBean test_profileMiniature2 = new KozossegiProfileMiniatureBean(621,"Más vki2", getImageFromURL(Labels.PROFILE_PICTURE_ICO_URL));

		//test data
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedFriendList.add(test_profileMiniature);
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		suggestedFriendList.add(test_profileMiniature);	
		
		birthdayList.add(test_profileMiniature2);				
		birthdayList.add(test_profileMiniature2);				
		birthdayList.add(test_profileMiniature2);				
		birthdayList.add(test_profileMiniature2);				
		birthdayList.add(test_profileMiniature2);				
		namedayList.add(test_profileMiniature2);		
		namedayList.add(test_profileMiniature2);		
		namedayList.add(test_profileMiniature2);		
		namedayList.add(test_profileMiniature2);		
		namedayList.add(test_profileMiniature2);		
		namedayList.add(test_profileMiniature2);		
		namedayList.add(test_profileMiniature2);		
		namedayList.add(test_profileMiniature2);		
		namedayList.add(test_profileMiniature2);		
		namedayList.add(test_profileMiniature2);		

		
		/*friendList.add(test_profileMiniature2);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);
		friendList.add(test_profileMiniature3);*/

	}

	public Image getImageFromURL(String url){
		try {
			return ImageIO.read(new URL(url));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		return null;
	}
	
	public JPanel listProfileMiniatures(final KozossegiProfileMiniatureBean c){
		JPanel profileMiniature = new JPanel(new FlowLayout());
		JLabel profilePictureIconLabel = new JLabel(new ImageIcon(c.getPic()));			
		JLabel nameLabel = new JLabel(c.getName());
		
		profilePictureIconLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				setMainContent(new KozossegiProfile(KozossegiMainFrame.this, controller.getProfile(c.getId())));
			}
		});
		
		nameLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				setMainContent(new KozossegiProfile(KozossegiMainFrame.this, controller.getProfile(c.getId())));
			}
		});
		profileMiniature.add(profilePictureIconLabel);
		profileMiniature.add(nameLabel);
		return profileMiniature;
	}
	
	public JLabel ListClubMiniatures(final KozossegiClubBean c){
		JLabel groupNameLabel = new JLabel(controller.getNameById(c.getId()));
		groupNameLabel.setHorizontalAlignment(SwingConstants.CENTER);
		groupNameLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				setMainContent(new KozossegiProfile(KozossegiMainFrame.this, controller.getProfile(c.getId())));
			}
		});
		return groupNameLabel;
	}
		
	public KozossegiController getController(){
		return controller;
	}
	
	/*public KozossegiMainFrame getThis(){
		return this;lol
	}*/
	
	public KozossegiProfileMiniatureBean getProfileMiniature() {
		return profileMiniature;
	}


	public List<KozossegiClubBean> getOwnClubList() {
		return ownClubList;
	}

	public List<KozossegiClubBean> getTagClubList() {
		return tagClubList;
	}
	
	public List<KozossegiClubBean> getSuggestedClubList() {
		return suggestedClubList;
	}

	public List<KozossegiProfileMiniatureBean> getSuggestedFriendList() {
		return suggestedFriendList;
	}


	public List<KozossegiProfileMiniatureBean> getBirthdayList() {
		return birthdayList;
	}

	public List<KozossegiProfileMiniatureBean> getNamedayList() {
		return namedayList;
	}

	public List<KozossegiProfileMiniatureBean> getFriendList() {
		return friendList;
	}

	
}
