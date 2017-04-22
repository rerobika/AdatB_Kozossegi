package kozossegi.view;

import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.controller.KozossegiController;
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
		//USERDATA

		
		
		
		namedayList = new ArrayList<KozossegiProfileMiniatureBean>();
		profile = controller.getProfile(670);
		profileMiniature = new KozossegiProfileMiniatureBean(profile);
		ownClubList = controller.getOwnClubs(profile.getId());
		tagClubList = controller.getMemberClubs(profile.getId());
		friendList = controller.getFriends(profile.getId());
		birthdayList = controller.getBirthday(profile.getId());
		friendList=controller.getFriends(profile.getId());
		namedayList=controller.getNameday(profile.getId());
		suggestedClubList = controller.getSuggestedClubs(profile.getId());
		suggestedFriendList = controller.getSuggestedFriends(profile.getId());
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
		mainContentPanel.setPreferredSize(new Dimension(1024, 768));
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
		/*controller.addProfile(new KozossegiProfileBean("Kovacs Jozsef",0, new Date(), true, "Szeged", "ISKOLA", "Szántás","", "jozsi@asd.hu", "neha",
				670, new KozossegiImageUploader().upload(new File("D:\\Downloads\\c_777055.jpg"),"kep2.jpg")));*/
		/*
		 * Meg van barmolva a kepfeltoltes, kell hozza az src/upload.php, amit a htdocs/Kozossegibe kell tenni.
		 * Ha jot akarsz magadnak akkor futtasd le az ujra feltoltott scriptet,garanciat nem vallolok ra, mert nem probaltam ki,
		 * de az elozobol hianyoznak a foreign keyek, meg ebbe benne van a regisztralas fuggveny.
		 */
			
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
