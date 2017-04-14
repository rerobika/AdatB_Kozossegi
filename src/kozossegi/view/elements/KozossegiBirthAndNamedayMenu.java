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
import kozossegi.bean.KozossegiProfileMiniature;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiBirthAndNamedayMenu extends JPanel {
	private static final long serialVersionUID = -7611266213286581278L;
	private KozossegiMainFrame mainFrame;
	private JPanel birthdayPanel;
	private JPanel namedayPanel;
	private JLabel birthdayLabel;
	private JLabel namedayLabel;
	private JScrollPane birthdayScroll;
	private JScrollPane namedayScroll;
	
	public KozossegiBirthAndNamedayMenu(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		birthdayPanel = new JPanel();
		namedayPanel = new JPanel();
		birthdayLabel = new JLabel(Labels.BIRTHDAY);
		namedayLabel = new JLabel(Labels.NAMEDAY);
		birthdayScroll = new JScrollPane(birthdayPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		namedayScroll = new JScrollPane(namedayPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		
		birthdayLabel.setBorder(BorderFactory.createLineBorder(Color.black));
		birthdayLabel.setHorizontalAlignment(SwingConstants.CENTER);
		namedayLabel.setBorder(BorderFactory.createLineBorder(Color.black));
		namedayLabel.setHorizontalAlignment(SwingConstants.CENTER);
		
		
		birthdayPanel.setLayout(new GridLayout(this.mainFrame.getBirthdayList().size(), 1));
		for(KozossegiProfileMiniature c : this.mainFrame.getBirthdayList()){
			birthdayPanel.add(mainFrame.listProfileMiniatures(c));
		}
		
		namedayPanel.setLayout(new GridLayout(this.mainFrame.getNamedayList().size(), 1));
		for(KozossegiProfileMiniature c : this.mainFrame.getNamedayList()){
			namedayPanel.add(mainFrame.listProfileMiniatures(c));
		}
		
		setLayout(new GridLayout(4, 1));
		setBorder(BorderFactory.createLineBorder(Color.black));
		setPreferredSize(new Dimension(150, 200));
		
		add(birthdayLabel);
		add(birthdayScroll);
		add(namedayLabel);
		add(namedayScroll);
	}

}
