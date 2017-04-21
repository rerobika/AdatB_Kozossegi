package kozossegi.view.elements.maincontent;

import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiUserProfile extends KozossegiProfile {

	private static final long serialVersionUID = 5773153401651396607L;
	private JPanel createClubPanel;
	protected JPanel friendsPanel;
	
	public KozossegiUserProfile(KozossegiMainFrame mainFrame,KozossegiProfileBean profile)  {
		super(mainFrame, profile);
		friendsPanel = new JPanel();
		createClubPanel = new JPanel();
		contentTabbedPane.addTab(Labels.PROFIL_FRIENDS, friendsPanel);
		if(profile.getId() == mainFrame.getProfileMiniature().getId()){
			contentTabbedPane.addTab(Labels.PROFIL_EDIT, editPanel);
			contentTabbedPane.addTab(Labels.PROFIL_CREATE_CLUB, createClubPanel);
		}
		
	}

}
