package kozossegi.view.elements;

import java.awt.Color;
import java.awt.GridLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.ScrollPaneConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.maincontent.KozossegiClubProfile;

public class KozossegiClubMenu extends JPanel {
	private static final long serialVersionUID = 3769578717950897182L;
	private KozossegiMainFrame mainFrame;
	private JPanel ownClubPanel;
	private JPanel memberClubPanel;
	private JLabel ownClubLabel;
	private JLabel tagClubLabel;
	private JScrollPane ownClubScroll;
	private JScrollPane tagClubScroll;
	
	public KozossegiClubMenu() {
		this.mainFrame = KozossegiMainFrame.getInstance();
		ownClubPanel = new JPanel();
		memberClubPanel = new JPanel();
		ownClubLabel = new JLabel(Labels.CLUB_OWNER);
		tagClubLabel = new JLabel(Labels.CLUB_TAG);
		ownClubScroll = new JScrollPane(ownClubPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		tagClubScroll = new JScrollPane(memberClubPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);		
		
		ownClubPanel.setLayout(new GridLayout(this.mainFrame.getOwnClubList().size(), 1));
		for(KozossegiProfileMiniatureBean c : this.mainFrame.getOwnClubList()){
			KozossegiProfileMiniature miniature = new KozossegiProfileMiniature(c);
			miniature.addMouseListener(new MouseAdapter(){
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiClubProfile(mainFrame.getController().getClub(c.getId())));
				}
			});
			ownClubPanel.add(miniature);
		}
		
		memberClubPanel.setLayout(new GridLayout(this.mainFrame.getTagClubList().size(), 1));
		for(KozossegiProfileMiniatureBean c : this.mainFrame.getTagClubList()){
			KozossegiProfileMiniature miniature = new KozossegiProfileMiniature(c);
			miniature.addMouseListener(new MouseAdapter(){
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiClubProfile(mainFrame.getController().getClub(c.getId())));
				}
			});
			memberClubPanel.add(miniature);
		}
		
		setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
		setBorder(BorderFactory.createLineBorder(Color.black));
		
		add(ownClubLabel);
		add(ownClubScroll);
		add(tagClubLabel);
		add(tagClubScroll);
	}

}
