package kozossegi.view.elements;

import java.awt.Color;
import java.awt.GridLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.ScrollPaneConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.maincontent.KozossegiClubProfile;
import kozossegi.view.elements.maincontent.KozossegiUserProfile;

public class KozossegiSuggestBox extends JPanel {
	private static final long serialVersionUID = -7611266213286581278L;
	
	private JPanel suggestClubPanel;
	private JPanel suggestFriendPanel;
	private JLabel suggestClubLabel;
	private JLabel suggestFriendLabel;
	private JScrollPane suggestClubScroll;
	private JScrollPane suggestFriendScroll;
	
	public KozossegiSuggestBox() {
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		suggestClubPanel = new JPanel();
		suggestFriendPanel = new JPanel();
		suggestClubLabel = new JLabel(Labels.CLUB_SUGGESTION);
		suggestFriendLabel = new JLabel(Labels.FRINED_SUGGESTION);
		suggestClubScroll = new JScrollPane(suggestClubPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		suggestFriendScroll = new JScrollPane(suggestFriendPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
				
		
		suggestClubPanel.setLayout(new GridLayout(0, 1));
		for(KozossegiProfileMiniatureBean c : mainFrame.getSuggestedClubList()){
			KozossegiProfileMiniature miniature = new KozossegiProfileMiniature(c);
			miniature.addMouseListener(new MouseAdapter(){
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiClubProfile(mainFrame.getController().getClub(c.getId())));
				}
			});
			suggestClubPanel.add(miniature);
		}
		
		suggestFriendPanel.setLayout(new GridLayout(0, 1));
		for(KozossegiProfileMiniatureBean c : mainFrame.getSuggestedFriendList()){
			KozossegiProfileMiniature miniature =new KozossegiProfileMiniature(c);
			miniature.addMouseListener(new MouseAdapter(){
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getController().getProfile(c.getId())));
				}
			});	
			suggestFriendPanel.add(miniature);
		}
		
		setLayout(new BoxLayout(this,BoxLayout.PAGE_AXIS));
		setBorder(BorderFactory.createLineBorder(Color.black));
		
		add(suggestClubLabel);
		add(suggestClubScroll);
		add(suggestFriendLabel);
		add(suggestFriendScroll);
	}

}
