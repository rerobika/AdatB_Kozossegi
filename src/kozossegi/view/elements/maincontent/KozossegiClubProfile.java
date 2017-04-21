package kozossegi.view.elements.maincontent;

import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiClubProfile extends KozossegiProfile {

	private static final long serialVersionUID = 5773153401651396607L;
	protected JPanel tagPanel;
	
	public KozossegiClubProfile(KozossegiMainFrame mainFrame,KozossegiProfileBean profile)  {
		super(profile);
		tagPanel = new JPanel();
		contentTabbedPane.addTab(Labels.PROFIL_CLUB_TAGS, tagPanel);
		if(profile.getId() == mainFrame.getProfileMiniature().getId()){
			contentTabbedPane.addTab(Labels.PROFIL_EDIT, editPanel);
		}
		
	}

}
