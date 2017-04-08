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
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClub;
import kozossegi.bean.KozossegiProfileMiniature;
import kozossegi.controller.KozossegiController;
import kozossegi.view.elements.KozossegiClubMenu;
import kozossegi.view.elements.KozossegiMenu;
import kozossegi.view.elements.KozossegiProfileInfo;
import kozossegi.view.elements.KozossegiSearchBox;
import kozossegi.view.elements.KozossegiSuggestBox;
import kozossegi.view.elements.maincontent.KozossegiLogin;

public class KozossegiMainFrame extends JFrame {
	private static final long serialVersionUID = -3443677995502851727L;
	private KozossegiController controller;
	private JPanel activePanel;
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
	
	public KozossegiMainFrame(KozossegiController controller) {
		this.controller = controller;
		activePanel = new JPanel(new CardLayout());
		logoPanel = new JPanel(new FlowLayout());
		leftSideContentPanel = new JPanel(new GridLayout(2,10,1,10));
		topSideContentPanel = new JPanel(new FlowLayout());
		rightSideContentPanel = new JPanel(new FlowLayout());
		cardLayout = (CardLayout) activePanel.getLayout();
		logoImage = getImageFromURL(Labels.LOGO_URL);
		//USERDATA
		profileMiniature = new KozossegiProfileMiniature();
		ownClubList = new ArrayList<KozossegiClub>();
		tagClubList = new ArrayList<KozossegiClub>();
		suggestedClubList = new ArrayList<KozossegiClub>();
		suggestedFriendList = new ArrayList<KozossegiProfileMiniature>();
		
		setLayout(new BorderLayout(20,20));
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle(Labels.MAIN_FRAME_TITLE);
		setSize(new Dimension(1240, 768));
		add(activePanel, BorderLayout.CENTER);		
		add(leftSideContentPanel, BorderLayout.WEST);		
		add(topSideContentPanel, BorderLayout.NORTH);		
		add(rightSideContentPanel, BorderLayout.EAST);		
		setMainContent(startScreen());
		setLocationRelativeTo(null);
		setVisible(true);
					
	}
	
	
	public JPanel startScreen(){
		 return new KozossegiLogin(this);
	}

	public void setMainContent(JPanel panelToVisible) {
		activePanel.removeAll();
		activePanel.add(panelToVisible,panelToVisible.getName());
		cardLayout.show(activePanel, panelToVisible.getName());
		pack();
		
	}
	
	public void initializeViewElements(){	
		logoPanel.add(new JLabel(new ImageIcon(logoImage)));
		
		topSideContentPanel.add(logoPanel);	
		topSideContentPanel.add(new KozossegiSearchBox(this));
		topSideContentPanel.add(new KozossegiMenu(this));		
		
			
		leftSideContentPanel.add(new KozossegiProfileInfo(this));
		leftSideContentPanel.add(new KozossegiClubMenu(this));		
		
		
		
		rightSideContentPanel.add(new KozossegiSuggestBox(this));
	}
	
	public void initializeUserData(){
		profileMiniature = new KozossegiProfileMiniature(1111,"Teszt Elek", getImageFromURL(Labels.PROFILE_PICTURE_URL));
		//test data
		ownClubList.add(new KozossegiClub(1, 1, new Date(), "asd", null));
		ownClubList.add(new KozossegiClub(2, 2, new Date(), "qwe", null));
		tagClubList.add(new KozossegiClub(1, 1, new Date(), "asd", null));
		tagClubList.add(new KozossegiClub(2, 2, new Date(), "qwe", null));
		
		suggestedClubList.add(new KozossegiClub(1, 1, new Date(), "asd", null));
		suggestedClubList.add(new KozossegiClub(2, 2, new Date(), "qwe", null));
		suggestedFriendList.add(new KozossegiProfileMiniature(1111,"Ajlánlott Teszt Elek", getImageFromURL(Labels.PROFILE_PICTURE_ICO_URL)));
		suggestedFriendList.add(new KozossegiProfileMiniature(1111,"Ajlánlott Teszt Elek", getImageFromURL(Labels.PROFILE_PICTURE_ICO_URL)));
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



	
}
