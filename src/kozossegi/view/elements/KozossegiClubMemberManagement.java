package kozossegi.view.elements;

import java.awt.GridLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BoxLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClubBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.maincontent.KozossegiUserProfile;

public class KozossegiClubMemberManagement extends JPanel{
	private static final long serialVersionUID = 5588423784248411444L;
	private KozossegiMainFrame mainFrame;
	public KozossegiClubMemberManagement(KozossegiClubBean club) {
		mainFrame = KozossegiMainFrame.getInstance();
		JPanel clubMemberPanel = new JPanel();
		JLabel clubMemberLabel = new JLabel(Labels.CLUB_TAGS);
		JLabel clubOwnerLabel = new JLabel(Labels.CLUB_OWNER_NAME);
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		clubMemberPanel.setLayout(new GridLayout(0, 3,5,5));

		
		for(KozossegiProfileMiniatureBean p: club.getMembers())
		{
			KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(p); 
			clubMemberPanel.add(miniature);
			miniature.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
				}
			});
			
		}
		clubMemberLabel.setAlignmentX(JLabel.CENTER_ALIGNMENT);
		clubOwnerLabel.setAlignmentX(JLabel.CENTER_ALIGNMENT);
		clubMemberPanel.setMaximumSize(clubMemberPanel.getPreferredSize());
		setMaximumSize(getPreferredSize());
		add(clubOwnerLabel);
		add(new KozossegiProfileMiniature(mainFrame.getController().getMiniature(club.getOwnerId())));
		add(clubMemberLabel);
		add(clubMemberPanel);
		}
}
