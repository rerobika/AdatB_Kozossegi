package kozossegi.view.elements.maincontent;

import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JPanel;

import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiProfileMiniature;

public class KozossegiFriendManagement extends JPanel {
	
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private KozossegiMainFrame mainFrame;
private KozossegiProfileBean profile;
	
	public KozossegiFriendManagement(KozossegiMainFrame mainFrame,KozossegiProfileBean profile) {
		this.mainFrame = mainFrame;
		this.profile=profile;
		setLayout(new FlowLayout(FlowLayout.LEFT));
		for(KozossegiProfileMiniatureBean p: mainFrame.getController().getFriends(profile.getId()))
		{
			KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(p); 
			System.out.println(p.getName());
			add(miniature);
			miniature.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
				}
			});
		}
	}

}
