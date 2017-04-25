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
		JPanel pendingRequest = new JPanel();
		JPanel friends = new JPanel();
		JLabel reqLabel = new JLabel(Labels.PENDING_REQUEST);
		JLabel friendLabel = new JLabel(Labels.ALREADY_FRIENDS);
		setLayout(new FlowLayout(FlowLayout.LEFT));
		pendingRequest.setLayout(new FlowLayout(FlowLayout.LEFT));
		friends.setLayout(new FlowLayout(FlowLayout.LEFT));
		
		
		for(KozossegiProfileMiniatureBean p: mainFrame.getController().getFriends(profile.getId()))
		{
			KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(p); 
			friends.add(miniature);
			miniature.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
				}
			});
		}
		
		for(KozossegiProfileMiniatureBean p: mainFrame.getController().getPendingFriends(profile.getId()))
		{
			KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(p); 
			pendingRequest.add(miniature);
			miniature.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
				}
			});
		}
		
		
		
		reqLabel.setPreferredSize(new Dimension(750, 40));
		add(reqLabel);
		add(pendingRequest);		
		friendLabel.setPreferredSize(new Dimension(750, 40));
		add(friendLabel);
		add(friends);
	}

}