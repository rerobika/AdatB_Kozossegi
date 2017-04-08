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
import kozossegi.view.elements.maincontent.KozossegiBirthDay;
import kozossegi.view.elements.maincontent.KozossegiFriendManagement;
import kozossegi.view.elements.maincontent.KozossegiMessages;
import kozossegi.view.elements.maincontent.KozossegiNameDay;
import kozossegi.view.elements.maincontent.KozossegiNewsFeed;
import kozossegi.view.elements.maincontent.KozossegiProfile;

public class KozossegiMenu extends JPanel implements ActionListener{

	private static final long serialVersionUID = -3390975037529838200L;
	private KozossegiMainFrame mainFrame;
	private JButton newFeedButton;
	private JButton profilButton;
	private JButton messagesButton;
	private JButton friendsButton;
	private JButton birtDayButton;
	private JButton nameDayButton;
	private JButton logOutButton;
	
	public KozossegiMenu(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		newFeedButton = new JButton(Labels.MENU_NEWS_FEED);
		profilButton = new JButton(Labels.MENU_PROFIL);
		messagesButton = new JButton(Labels.MENU_MESSAGES);
		friendsButton = new JButton(Labels.MENU_FRIENDS);
		birtDayButton = new JButton(Labels.MENU_BIRTHDAY);
		nameDayButton = new JButton(Labels.MENU_NAMEDAY);
		logOutButton = new JButton(Labels.MENU_LOGOUT);
		
		setBorder(BorderFactory.createLineBorder(Color.black));
		setLayout(new FlowLayout());
		add(newFeedButton);
		add(profilButton);
		add(messagesButton);
		add(friendsButton);
		add(birtDayButton);
		add(nameDayButton);
		add(logOutButton);
		
		newFeedButton.addActionListener(this);
		profilButton.addActionListener(this);
		messagesButton.addActionListener(this);
		friendsButton.addActionListener(this);
		birtDayButton.addActionListener(this);
		nameDayButton.addActionListener(this);
		logOutButton.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==newFeedButton){
			mainFrame.setMainContent(new KozossegiNewsFeed(mainFrame));
		}
		if(e.getSource()==profilButton){
			mainFrame.setMainContent(new KozossegiProfile(mainFrame, mainFrame.getProfileMiniature().getId()));
		}
		if(e.getSource()==messagesButton){
			mainFrame.setMainContent(new KozossegiMessages(mainFrame));
		}
		if(e.getSource()==friendsButton){
			mainFrame.setMainContent(new KozossegiFriendManagement(mainFrame));
		}
		if(e.getSource()==birtDayButton){
			mainFrame.setMainContent(new KozossegiBirthDay(mainFrame));
		}
		if(e.getSource()==nameDayButton){
			mainFrame.setMainContent(new KozossegiNameDay(mainFrame));
		}
		if(e.getSource()==logOutButton){
			System.exit(0);
		}
		
	}

}
