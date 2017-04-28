package kozossegi.view.elements;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClubBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.maincontent.KozossegiProfile;

public class KozossegiClubTagManagement extends JPanel{
	private static final long serialVersionUID = 5588423784248411444L;
	private KozossegiMainFrame mainFrame;
	public KozossegiClubTagManagement(KozossegiClubBean club) {
		mainFrame = KozossegiMainFrame.getInstance();
		JPanel clubTagPanel = new JPanel();
		JLabel clubTagLabel = new JLabel(Labels.CLUB_TAGS);
		JLabel clubOwnerLabel = new JLabel(Labels.CLUB_OWNER_NAME);
		setLayout(new FlowLayout(FlowLayout.LEFT));
		clubTagPanel.setLayout(new FlowLayout(FlowLayout.LEFT));

		
		for(KozossegiProfileMiniatureBean p: mainFrame.getClub().getMembers())
		{
			KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(p); 
			clubTagPanel.add(miniature);
			miniature.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
				}
			});
			
		}
		
		clubTagLabel.setPreferredSize(new Dimension(mainFrame.getMainContentPanel().getWidth(), 40));
		clubOwnerLabel.setPreferredSize(new Dimension(mainFrame.getMainContentPanel().getWidth(), 40));
		add(clubOwnerLabel);
		add(new KozossegiProfileMiniature(mainFrame.getController().getMiniature(club.getOwnerId())));
		add(clubTagLabel);
		add(clubTagPanel);
	}
}
