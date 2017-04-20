package kozossegi.view.elements;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.GridLayout;

import javax.swing.BorderFactory;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.ScrollPaneConstants;
import javax.swing.SwingConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClubBean;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiClubMenu extends JPanel {
	private static final long serialVersionUID = 3769578717950897182L;
	private KozossegiMainFrame mainFrame;
	private JPanel ownClubPanel;
	private JPanel tagClubPanel;
	private JLabel ownClubLabel;
	private JLabel tagClubLabel;
	private JScrollPane ownClubScroll;
	private JScrollPane tagClubScroll;
	
	public KozossegiClubMenu(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		ownClubPanel = new JPanel();
		tagClubPanel = new JPanel();
		ownClubLabel = new JLabel(Labels.CLUB_OWNER);
		tagClubLabel = new JLabel(Labels.CLUB_TAG);
		ownClubScroll = new JScrollPane(ownClubPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		tagClubScroll = new JScrollPane(tagClubPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		
		ownClubLabel.setBorder(BorderFactory.createLineBorder(Color.black));
		ownClubLabel.setHorizontalAlignment(SwingConstants.CENTER);
		tagClubLabel.setBorder(BorderFactory.createLineBorder(Color.black));
		tagClubLabel.setHorizontalAlignment(SwingConstants.CENTER);
		
		
		ownClubPanel.setLayout(new GridLayout(this.mainFrame.getOwnClubList().size(), 1));
		for(KozossegiClubBean c : this.mainFrame.getOwnClubList()){
			ownClubPanel.add(mainFrame.ListClubMiniatures(c));
		}
		
		tagClubPanel.setLayout(new GridLayout(this.mainFrame.getTagClubList().size(), 1));
		for(KozossegiClubBean c : this.mainFrame.getTagClubList()){
			tagClubPanel.add(mainFrame.ListClubMiniatures(c));
		}
		setPreferredSize(new Dimension(150, 200));
		setLayout(new GridLayout(4, 1));
		setBorder(BorderFactory.createLineBorder(Color.black));
		
		add(ownClubLabel);
		add(ownClubScroll);
		add(tagClubLabel);
		add(tagClubScroll);
		
	}

}
