package kozossegi.view.elements.maincontent;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiProfileMiniature;

public class KozossegiFriendManagement extends JPanel {
	private static final long serialVersionUID = 376657845468532264L;

	public KozossegiFriendManagement(KozossegiProfileBean profile) {
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		JLabel reqLabel = new JLabel(Labels.PENDING_REQUEST);
		JLabel friendLabel = new JLabel(Labels.ALREADY_FRIENDS);
		setLayout(new FlowLayout(FlowLayout.LEFT));
		
		add(reqLabel);
		if(profile.getId() == mainFrame.getProfile().getId()){
			for(KozossegiProfileMiniatureBean p: mainFrame.getController().getPendingFriends(profile.getId()))
			{
				KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(p); 
				add(miniature);
				miniature.addMouseListener(new MouseAdapter() {
					public void mouseClicked(MouseEvent e) {
						mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
					}
				});
			}
			reqLabel.setPreferredSize(new Dimension(mainFrame.getWidth(), 40));

		}
		add(friendLabel);
		for(KozossegiProfileMiniatureBean p: mainFrame.getController().getFriends(profile.getId()))
		{
			KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(p); 
			add(miniature);
			miniature.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
				}
			});
			
		}
		
		friendLabel.setPreferredSize(new Dimension(mainFrame.getWidth(), 40));
	}

}