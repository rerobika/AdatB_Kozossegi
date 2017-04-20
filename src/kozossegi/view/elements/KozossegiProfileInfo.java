package kozossegi.view.elements;

import java.awt.Color;
import java.awt.GridLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;

import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.maincontent.KozossegiProfile;

public class KozossegiProfileInfo extends JPanel {
	private static final long serialVersionUID = -7312979432042577633L;
	private KozossegiMainFrame mainFrame;
	private JLabel nameLabel;
	private JLabel profilePictureLabel;
	
	public KozossegiProfileInfo(final KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		
		setBorder(BorderFactory.createLineBorder(Color.black));
		setLayout(new GridLayout(2, 10, 1, 10));
		profilePictureLabel = new JLabel(new ImageIcon(this.mainFrame.getProfileMiniature().getPic()));
		profilePictureLabel.setBorder(BorderFactory.createLineBorder(Color.black));		
			
		nameLabel= new JLabel(this.mainFrame.getProfileMiniature().getName());
		nameLabel.setHorizontalAlignment(SwingConstants.CENTER);				
		addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				mainFrame.setMainContent(new KozossegiProfile(mainFrame, mainFrame.getProfile()));
			}
		});
		
		add(profilePictureLabel);
		add(nameLabel);
		
		
	}

}
