package kozossegi.view;

import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.bean.KozossegiUserBean;
import kozossegi.controller.KozossegiController;
import kozossegi.dao.KozossegiImageUploader;
import kozossegi.view.elements.KozossegiBirthAndNamedayMenu;
import kozossegi.view.elements.KozossegiClubMenu;
import kozossegi.view.elements.KozossegiMenu;
import kozossegi.view.elements.KozossegiProfileInfo;
import kozossegi.view.elements.KozossegiSearchBox;
import kozossegi.view.elements.KozossegiSuggestBox;
import kozossegi.view.elements.maincontent.KozossegiLogin;

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
	private List<KozossegiProfileMiniatureBean> ownClubList;
	private List<KozossegiProfileMiniatureBean> tagClubList;
	private List<KozossegiProfileMiniatureBean> suggestedClubList;
	private List<KozossegiProfileMiniatureBean> suggestedFriendList;
	private List<KozossegiProfileMiniatureBean> birthdayList;
	private List<KozossegiProfileMiniatureBean> namedayList;
	private List<KozossegiProfileMiniatureBean> friendList;
	private KozossegiProfileBean profile;
	
	public KozossegiProfileBean getProfile() {
		return profile;
	}


	public void setProfile(KozossegiProfileBean profile) {
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
		profile = controller.getProfile(670);
		suggestedClubList = controller.getSuggestedClubs(profile.getId());
		suggestedFriendList = controller.getSuggestedFriends(profile.getId());
		//USERDATA

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
		//controller.uploadPicture(new File("D:\\Downloads\\c_777055.jpg"), "Profilképek", 670);
	}
	
	
	public JPanel startScreen(){
		 return new KozossegiLogin(this);
	}

	public void setMainContent(JPanel panelToVisible) {
		mainContentPanel.removeAll();
		mainContentPanel.add(panelToVisible,panelToVisible.getName());
		cardLayout.show(mainContentPanel, panelToVisible.getName());
		pack();
		initializeUserData();
	}
	
	public void initializeViewElements(){
		mainContentPanel.setPreferredSize(new Dimension(800, 600));
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
		profile = controller.getProfile(670);
		profileMiniature = new KozossegiProfileMiniatureBean(profile);
		ownClubList = controller.getOwnClubs(profile.getId());
		tagClubList = controller.getMemberClubs(profile.getId());
		friendList = controller.getFriends(profile.getId());
		birthdayList = controller.getBirthday(profile.getId());
		friendList=controller.getFriends(profile.getId());
		namedayList=controller.getNameday(profile.getId());
}

	public Image getImageFromURL(String url){
		try {
			return ImageIO.read(new URL(url));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		return null;
	}
	
	
		
	public KozossegiController getController(){
		return controller;
	}
	
	public KozossegiProfileMiniatureBean getProfileMiniature() {
		return profileMiniature;
	}


	public List<KozossegiProfileMiniatureBean> getOwnClubList() {
		return ownClubList;
	}

	public List<KozossegiProfileMiniatureBean> getTagClubList() {
		return tagClubList;
	}
	
	public List<KozossegiProfileMiniatureBean> getSuggestedClubList() {
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
