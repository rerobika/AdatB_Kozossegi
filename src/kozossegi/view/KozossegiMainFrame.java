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
import kozossegi.bean.KozossegiClub;
import kozossegi.bean.KozossegiMessage;
import kozossegi.bean.KozossegiProfileMiniature;
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
	private KozossegiProfileMiniature profileMiniature;
	private List<KozossegiClub> ownClubList;
	private List<KozossegiClub> tagClubList;
	private List<KozossegiClub> suggestedClubList;
	private List<KozossegiProfileMiniature> suggestedFriendList;
	private List<KozossegiProfileMiniature> birthdayList;
	private List<KozossegiProfileMiniature> namedayList;
	private List<KozossegiProfileMiniature> friendList;
	private Map<KozossegiProfileMiniature, ArrayList<KozossegiMessage>> messagesMap;
	
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
		profileMiniature = new KozossegiProfileMiniature();
		ownClubList = new ArrayList<KozossegiClub>();
		tagClubList = new ArrayList<KozossegiClub>();
		suggestedClubList = new ArrayList<KozossegiClub>();
		suggestedFriendList = new ArrayList<KozossegiProfileMiniature>();
		birthdayList = new ArrayList<KozossegiProfileMiniature>();
		namedayList = new ArrayList<KozossegiProfileMiniature>();
		friendList = new ArrayList<KozossegiProfileMiniature>();
		messagesMap = new HashMap<KozossegiProfileMiniature, ArrayList<KozossegiMessage>>();
		
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
		System.out.println(getSize().toString());
		
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
		KozossegiClub test_club = new KozossegiClub(900, 782, new Date(), "asd", null);
		profileMiniature = new KozossegiProfileMiniature(625,"Teszt Elek", getImageFromURL(Labels.PROFILE_PICTURE_ICO_URL));
		KozossegiProfileMiniature test_profileMiniature = new KozossegiProfileMiniature(625,"Teszt Elek1", getImageFromURL(Labels.PROFILE_PICTURE_ICO_URL));
		KozossegiProfileMiniature test_profileMiniature2 = new KozossegiProfileMiniature(621,"Más vki2", getImageFromURL(Labels.PROFILE_PICTURE_ICO_URL));
		KozossegiProfileMiniature test_profileMiniature3 = new KozossegiProfileMiniature(628,"Más vki3", getImageFromURL(Labels.PROFILE_PICTURE_ICO_URL));
		//test data
		
		ownClubList.add(test_club);
		ownClubList.add(test_club);
		tagClubList.add(test_club);
		tagClubList.add(test_club);
		
		//suggestedFriendList = controller.getFriends(profileMiniature.getId());
		suggestedClubList.add(test_club);
		suggestedClubList.add(test_club);
		suggestedFriendList.add(test_profileMiniature);
		suggestedFriendList.add(test_profileMiniature);	
		
		birthdayList.add(test_profileMiniature);		
		birthdayList.add(test_profileMiniature);		
		namedayList.add(test_profileMiniature);		
		namedayList.add(test_profileMiniature);
		
		ArrayList<KozossegiMessage> tmp621 = new ArrayList<>(Arrays.asList(new KozossegiMessage(621, 625, "Hello ", new Date()),new KozossegiMessage(625, 621, "asd", new Date()),new KozossegiMessage(625, 621, "saaaaaaaaaaaaaaaaaaaaajtt", new Date()),new KozossegiMessage(625, 621, "sajt", new Date()),new KozossegiMessage(625, 621, "sajt", new Date()),new KozossegiMessage(625, 621, "sajt", new Date()),new KozossegiMessage(625, 621, "sajt", new Date()),new KozossegiMessage(625, 621, "sajt", new Date()),new KozossegiMessage(625, 621, "sajt", new Date()),new KozossegiMessage(625, 621, "sajt", new Date()),new KozossegiMessage(625, 621, "sajt", new Date()),new KozossegiMessage(625, 621, "sajt", new Date()),new KozossegiMessage(621, 625, "Már nincs", new Date()),new KozossegiMessage(621, 625, "Már nincs ", new Date())));
		ArrayList<KozossegiMessage> tmp628 = new ArrayList<>(Arrays.asList(new KozossegiMessage(628, 625, "Szia 625 ", new Date()),new KozossegiMessage(625, 628, "Szia 628", new Date())));
		
		friendList.add(test_profileMiniature2);
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
		friendList.add(test_profileMiniature3);

		messagesMap.put(test_profileMiniature2, tmp621);
		messagesMap.put(test_profileMiniature3, tmp628);
		
		/*tmp = K friend-hez tartozó messageList
		 * for(KozossegiProfileMiniature k : friendList){
			messagesMap.put(k, tmp);
		}*/
	}

	public Image getImageFromURL(String url){
		try {
			return ImageIO.read(new URL(url));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		return null;
	}
	
	public JPanel listProfileMiniatures(KozossegiProfileMiniature c){
		JPanel profileMiniature = new JPanel(new FlowLayout());
		JLabel profilePictureIconLabel = new JLabel(new ImageIcon(c.getPic()));			
		JLabel nameLabel = new JLabel(controller.getNameById(c.getId()));
		
		profilePictureIconLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				setMainContent(new KozossegiProfile(getThis(), c.getId()));
			}
		});
		
		nameLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				setMainContent(new KozossegiProfile(getThis(), c.getId()));
			}
		});
		profileMiniature.add(profilePictureIconLabel);
		profileMiniature.add(nameLabel);
		return profileMiniature;
	}
	
	public JLabel ListClubMiniatures(KozossegiClub c){
		JLabel groupNameLabel = new JLabel(controller.getNameById(c.getId()));
		groupNameLabel.setHorizontalAlignment(SwingConstants.CENTER);
		groupNameLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				setMainContent(new KozossegiProfile(getThis(), c.getId()));
			}
		});
		return groupNameLabel;
	}
	
	public void updateMessageList(KozossegiProfileMiniature conversationPartner, String content){
		//TODO c kulcsú új messageList lekérése az adatbázisból
		//Ideiglenes
		messagesMap.get(conversationPartner).add(new KozossegiMessage(profileMiniature.getId(), conversationPartner.getId(), content, new Date()));
	}
	
	public KozossegiController getController(){
		return controller;
	}
	
	public KozossegiMainFrame getThis(){
		return this;
	}
	
	public KozossegiProfileMiniature getProfileMiniature() {
		return profileMiniature;
	}


	public List<KozossegiClub> getOwnClubList() {
		return ownClubList;
	}

	public List<KozossegiClub> getTagClubList() {
		return tagClubList;
	}
	
	public List<KozossegiClub> getSuggestedClubList() {
		return suggestedClubList;
	}

	public List<KozossegiProfileMiniature> getSuggestedFriendList() {
		return suggestedFriendList;
	}


	public List<KozossegiProfileMiniature> getBirthdayList() {
		return birthdayList;
	}

	public List<KozossegiProfileMiniature> getNamedayList() {
		return namedayList;
	}


	public Map<KozossegiProfileMiniature, ArrayList<KozossegiMessage>> getMessagesMap() {
		return messagesMap;
	}

	public List<KozossegiProfileMiniature> getFriendList() {
		return friendList;
	}

	
}
