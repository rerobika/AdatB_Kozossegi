package kozossegi.view.elements;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;

import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.maincontent.KozossegiUserProfile;

public class KozossegiProfileInfo extends JPanel {
	private static final long serialVersionUID = -7312979432042577633L;
	private JLabel nameLabel;
	private JLabel profilePictureLabel;
	
	public KozossegiProfileInfo() {		
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		setBorder(BorderFactory.createLineBorder(Color.black));
		setLayout(new BorderLayout());
		profilePictureLabel = new JLabel(new ImageIcon(mainFrame.getProfile().getProfilepic().getImage()));
		profilePictureLabel.setBorder(BorderFactory.createLineBorder(Color.black));		
			
		nameLabel= new JLabel(mainFrame.getProfile().getName());
		nameLabel.setHorizontalAlignment(SwingConstants.CENTER);				
		addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getProfile()));
			}
		});
		
		add(profilePictureLabel,BorderLayout.CENTER);
		add(nameLabel,BorderLayout.SOUTH);
		
		
	}

}
