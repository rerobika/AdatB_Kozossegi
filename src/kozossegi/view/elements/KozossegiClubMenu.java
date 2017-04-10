package kozossegi.view.elements;

import java.awt.Color;
import java.awt.GridLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BorderFactory;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClub;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.maincontent.KozossegiProfile;

public class KozossegiClubMenu extends JPanel {
	private static final long serialVersionUID = 3769578717950897182L;
	private KozossegiMainFrame mainFrame;
	private JPanel ownClubPanel;
	private JPanel tagClubPanel;
	private JLabel ownClubLabel;
	private JLabel tagClubLabel;
	
	public KozossegiClubMenu(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		ownClubPanel = new JPanel();
		tagClubPanel = new JPanel();
		ownClubLabel = new JLabel(Labels.CLUB_OWNER);
		tagClubLabel = new JLabel(Labels.CLUB_TAG);
		
		ownClubLabel.setBorder(BorderFactory.createLineBorder(Color.black));
		ownClubLabel.setHorizontalAlignment(SwingConstants.CENTER);
		tagClubLabel.setBorder(BorderFactory.createLineBorder(Color.black));
		tagClubLabel.setHorizontalAlignment(SwingConstants.CENTER);
		
		
		ownClubPanel.setLayout(new GridLayout(this.mainFrame.getOwnClubList().size(), 1));
		for(KozossegiClub c : this.mainFrame.getOwnClubList()){
			ownClubPanel.add(mainFrame.ListClubMiniatures(c));
		}
		
		tagClubPanel.setLayout(new GridLayout(this.mainFrame.getTagClubList().size(), 1));
		for(KozossegiClub c : this.mainFrame.getTagClubList()){
			tagClubPanel.add(mainFrame.ListClubMiniatures(c));
		}
		
		setLayout(new GridLayout(4, 1));
		setBorder(BorderFactory.createLineBorder(Color.black));
		
		add(ownClubLabel);
		add(ownClubPanel);
		add(tagClubLabel);
		add(tagClubPanel);
		
	}

}
