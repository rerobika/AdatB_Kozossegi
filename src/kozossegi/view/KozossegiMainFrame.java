package kozossegi.view;

import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.util.Date;
import java.util.List;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.controller.KozossegiController;
import kozossegi.dao.KozossegiImageManager;
import kozossegi.view.elements.KozossegiBirthAndNamedayMenu;
import kozossegi.view.elements.KozossegiClubMenu;
import kozossegi.view.elements.KozossegiMenu;
import kozossegi.view.elements.KozossegiProfileInfo;
import kozossegi.view.elements.KozossegiSearchBox;
import kozossegi.view.elements.KozossegiSuggestBox;
import kozossegi.view.elements.maincontent.KozossegiLogin;
import kozossegi.view.elements.maincontent.KozossegiNewsFeed;

public class KozossegiMainFrame extends JFrame{
	
	private static KozossegiMainFrame instance;
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
	private List<KozossegiProfileMiniatureBean> ownClubList;
	private List<KozossegiProfileMiniatureBean> tagClubList;
	private List<KozossegiProfileMiniatureBean> suggestedClubList;
	private List<KozossegiProfileMiniatureBean> suggestedFriendList;
	private List<KozossegiProfileMiniatureBean> birthdayList;
	private List<KozossegiProfileMiniatureBean> namedayList;
	private List<KozossegiProfileMiniatureBean> friendList;
	private KozossegiProfileBean profile;


	private KozossegiMainFrame(KozossegiController controller) {
		this.controller = controller;
		mainContentPanel = new JPanel(new CardLayout());
		logoPanel = new JPanel(new FlowLayout());
		leftSideContentPanel = new JPanel(new GridLayout(2,10,1,10));
		topSideContentPanel = new JPanel(new FlowLayout());
		rightSideContentPanel = new JPanel(new GridLayout(2,10,1,10));
		cardLayout = (CardLayout) mainContentPanel.getLayout();
		logoImage = KozossegiImageManager.download(Labels.LOGO_URL);
		logoPanel.add(new JLabel(new ImageIcon(logoImage)));
		//USERDATA
		
		getContentPane().setLayout(new BorderLayout(20,20));
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		getContentPane().add(mainContentPanel, BorderLayout.CENTER);
		getContentPane().add(leftSideContentPanel, BorderLayout.WEST);		
		getContentPane().add(topSideContentPanel, BorderLayout.NORTH);		
		getContentPane().add(rightSideContentPanel, BorderLayout.EAST);	
		//setResizable(false);
		setTitle(Labels.MAIN_FRAME_TITLE);			
		setMainContent(new KozossegiLogin());
		pack();
		setVisible(true);	
	}
	public static KozossegiMainFrame getInstance()
	{
		return instance;
	}
	public static void setController(KozossegiController controller)
	{
		instance=new KozossegiMainFrame(controller);
	}
	
	public void setMainContent(JPanel panelToVisible) {
		mainContentPanel.removeAll();
		mainContentPanel.add(panelToVisible,panelToVisible.getName());
		cardLayout.show(mainContentPanel, panelToVisible.getName());
		pack();
	}
		
	public KozossegiController getController(){
		return controller;
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
		if(friendList==null)
		{
			friendList=controller.getFriends(profile.getId());
		}	
		return friendList;
	}
	public void login(int id)
	{
		profile = new KozossegiProfileBean("Ures", id, new Date(), false, "-", "-", "-", "-", "-", "-", -1, "");
		update();
		mainContentPanel.setPreferredSize(new Dimension(800, 600));
		setMainContent(new KozossegiNewsFeed(profile));
		
	}
	
	public JPanel getMainContentPanel() {
		return mainContentPanel;
	}
	
	public KozossegiProfileBean getProfile() {
		return profile;
	}
	public void update()
	{
		profile = controller.getProfile(profile.getId());
		ownClubList = controller.getOwnClubs(profile.getId());
		tagClubList = controller.getMemberClubs(profile.getId());
		birthdayList = controller.getBirthday(profile.getId());
		namedayList=controller.getNameday(profile.getId());
		suggestedClubList = controller.getSuggestedClubs(profile.getId());
		suggestedFriendList = controller.getSuggestedFriends(profile.getId());
		topSideContentPanel.removeAll();
		topSideContentPanel.add(logoPanel);	
		topSideContentPanel.add(new KozossegiSearchBox());
		topSideContentPanel.add(new KozossegiMenu());			
		leftSideContentPanel.removeAll();	
		leftSideContentPanel.add(new KozossegiProfileInfo());
		leftSideContentPanel.add(new KozossegiClubMenu());				
		rightSideContentPanel.removeAll();
		rightSideContentPanel.add(new KozossegiBirthAndNamedayMenu());
		rightSideContentPanel.add(new KozossegiSuggestBox());	
		repaint();
		revalidate();
	}
	
}
