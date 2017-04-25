package kozossegi.view.elements;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.maincontent.KozossegiBirthAndNameday;
import kozossegi.view.elements.maincontent.KozossegiFriendManagement;
import kozossegi.view.elements.maincontent.KozossegiMessages;
import kozossegi.view.elements.maincontent.KozossegiNewsFeed;
import kozossegi.view.elements.maincontent.KozossegiUserProfile;

public class KozossegiMenu extends JPanel implements ActionListener{

	private static final long serialVersionUID = -3390975037529838200L;
	private KozossegiMainFrame mainFrame;
	private JButton newFeedButton;
	private JButton profilButton;
	private JButton messagesButton;
	private JButton friendsButton;
	private JButton birtAndNameDayButton;
	private JButton logOutButton;
	
	public KozossegiMenu() {
		this.mainFrame = KozossegiMainFrame.getInstance();
		newFeedButton = new JButton(Labels.MENU_NEWS_FEED);
		profilButton = new JButton(Labels.MENU_PROFIL);
		messagesButton = new JButton(Labels.MENU_MESSAGES);
		friendsButton = new JButton(Labels.MENU_FRIENDS);
		birtAndNameDayButton = new JButton(Labels.MENU_BIRTH_AND_NAME_DAY);
		logOutButton = new JButton(Labels.MENU_LOGOUT);
		
		setBorder(BorderFactory.createLineBorder(Color.black));
		setLayout(new FlowLayout());
		add(newFeedButton);
		add(profilButton);
		add(messagesButton);
		add(friendsButton);
		add(birtAndNameDayButton);
		add(logOutButton);
		
		newFeedButton.addActionListener(this);
		profilButton.addActionListener(this);
		messagesButton.addActionListener(this);
		friendsButton.addActionListener(this);
		birtAndNameDayButton.addActionListener(this);
		logOutButton.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		mainFrame = KozossegiMainFrame.getInstance();
		if(e.getSource()==newFeedButton){
			mainFrame.setMainContent(new KozossegiNewsFeed());
		}
		if(e.getSource()==profilButton){
			mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getProfile()));
		}
		if(e.getSource()==messagesButton){
			mainFrame.setMainContent(new KozossegiMessages());
		}
		if(e.getSource()==friendsButton){
			mainFrame.setMainContent(new KozossegiFriendManagement(mainFrame.getProfile()));
		}
		if(e.getSource()==birtAndNameDayButton){
			mainFrame.setMainContent(new KozossegiBirthAndNameday());
		}
		if(e.getSource()==logOutButton){
			System.exit(0);
		}
		
	}

}
