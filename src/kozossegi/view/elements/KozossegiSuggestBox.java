package kozossegi.view.elements;

import java.awt.Color;
import java.awt.GridLayout;

import javax.swing.BorderFactory;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClub;
import kozossegi.bean.KozossegiProfileMiniature;
import kozossegi.view.KozossegiMainFrame;

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
			suggestClubPanel.add(mainFrame.ListClubMiniatures(c));
		}
		
		suggestFriendPanel.setLayout(new GridLayout(this.mainFrame.getSuggestedFriendList().size(), 1));
		for(KozossegiProfileMiniature c : this.mainFrame.getSuggestedFriendList()){
			suggestFriendPanel.add(mainFrame.listProfileMiniatures(c));
		}
		
		setLayout(new GridLayout(4, 1));
		setBorder(BorderFactory.createLineBorder(Color.black));
		
		add(suggestClubLabel);
		add(suggestClubPanel);
		add(suggestFriendLabel);
		add(suggestFriendPanel);
	}

}
