package kozossegi.view.elements.maincontent;

import java.awt.FlowLayout;
import java.awt.GridLayout;

import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClubBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiClubTagManagement;

public class KozossegiClubProfile extends KozossegiProfile {

	private static final long serialVersionUID = 5773153401651396607L;
	private KozossegiMainFrame mainFrame;
	private KozossegiClubBean club;
	protected JPanel tagPanel;
	
	public KozossegiClubProfile(KozossegiClubBean club)  {
		super(club);
		this.mainFrame = KozossegiMainFrame.getInstance();
		this.club = mainFrame.getController().getClub(club.getId());
		tagPanel = new KozossegiClubTagManagement(club);
		contentTabbedPane.addTab(Labels.PROFIL_INFO, infoPanel);
		contentTabbedPane.addTab(Labels.PROFIL_CLUB_TAGS, tagPanel);
		contentTabbedPane.addTab(Labels.PROFIL_EDIT, editPanel);
		
		initInfoPanel();
		initTopPanel();
	}

	private void initTopPanel() {
		topPanel.setLayout(new FlowLayout(FlowLayout.CENTER));
		JLabel name = new JLabel(profile.getName());
		topPanel.add(name);
		
	}

	private void initInfoPanel() {
		infoPanel.setLayout(new GridLayout(3, 2));
		infoPanel.add(new JLabel(Labels.CLUB_OWNER_NAME));
		infoPanel.add(new JLabel(mainFrame.getController().getProfile(club.getOwnerId()).getName()));
		infoPanel.add(new JLabel(Labels.CLUB_DESCRIPTION));
		JTextArea description = new JTextArea(club.getDesc());
		description.setLineWrap(true);
		infoPanel.add(description);
		infoPanel.add(new JLabel(Labels.CLUB_NUMBER_OF_TAGS));
		infoPanel.add(new JLabel(Integer.toString(club.getMembers().size())));
	}

}
