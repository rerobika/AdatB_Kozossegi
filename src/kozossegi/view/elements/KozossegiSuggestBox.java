package kozossegi.view.elements;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClub;
import kozossegi.bean.KozossegiProfileMiniature;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.maincontent.KozossegiProfile;

public class KozossegiSuggestBox extends JPanel {
	private static final long serialVersionUID = -7611266213286581278L;
	private KozossegiMainFrame mainFrame;
	private JPanel suggestClubPanel;
	private JPanel suggestFriendPanel;
	private JLabel suggestClubLabel;
	private JLabel suggestFriendLabel;
	
	public KozossegiSuggestBox(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		suggestClubPanel = new JPanel();
		suggestFriendPanel = new JPanel();
		suggestClubLabel = new JLabel(Labels.CLUB_SUGGESTION);
		suggestFriendLabel = new JLabel(Labels.FRINED_SUGGESTION);
		
		suggestClubLabel.setBorder(BorderFactory.createLineBorder(Color.black));
		suggestClubLabel.setHorizontalAlignment(SwingConstants.CENTER);
		suggestFriendLabel.setBorder(BorderFactory.createLineBorder(Color.black));
		suggestFriendLabel.setHorizontalAlignment(SwingConstants.CENTER);
		
		
		suggestClubPanel.setLayout(new GridLayout(this.mainFrame.getSuggestedClubList().size(), 1));
		for(KozossegiClub c : this.mainFrame.getSuggestedClubList()){
			JLabel groupNameLabel = new JLabel(mainFrame.getController().getNameById(c.getId()));
			groupNameLabel.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiProfile(mainFrame, c.getId()));
				}
			});
			suggestClubPanel.add(groupNameLabel);
		}
		
		suggestFriendPanel.setLayout(new GridLayout(this.mainFrame.getSuggestedFriendList().size(), 1));
		for(KozossegiProfileMiniature c : this.mainFrame.getSuggestedFriendList()){
			JPanel suggestProfileMiniature = new JPanel(new FlowLayout());
			JLabel profilePictureIconLabel = new JLabel(new ImageIcon(c.getPic()));			
			JLabel friendNameLabel = new JLabel(mainFrame.getController().getNameById(c.getId()));
			
			profilePictureIconLabel.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiProfile(mainFrame, c.getId()));
				}
			});
			
			friendNameLabel.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiProfile(mainFrame, c.getId()));
				}
			});
			suggestProfileMiniature.add(profilePictureIconLabel);
			suggestProfileMiniature.add(friendNameLabel);
			suggestFriendPanel.add(suggestProfileMiniature);
		}
		
		setLayout(new GridLayout(4, 1));
		setBorder(BorderFactory.createLineBorder(Color.black));
		
		add(suggestClubLabel);
		add(suggestClubPanel);
		add(suggestFriendLabel);
		add(suggestFriendPanel);
	}

}
