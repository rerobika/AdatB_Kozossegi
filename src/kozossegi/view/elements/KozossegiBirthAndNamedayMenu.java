package kozossegi.view.elements;

import java.awt.Color;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.ScrollPaneConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileMiniatureBean;
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
	
	public KozossegiBirthAndNamedayMenu() {
		this.mainFrame = KozossegiMainFrame.getInstance();
		birthdayPanel = new JPanel();
		namedayPanel = new JPanel();
		birthdayLabel = new JLabel(Labels.BIRTHDAY);
		namedayLabel = new JLabel(Labels.NAMEDAY);
		birthdayScroll = new JScrollPane(birthdayPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		namedayScroll = new JScrollPane(namedayPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		
		
		birthdayPanel.setLayout(new BoxLayout(birthdayPanel, BoxLayout.Y_AXIS));
		for(KozossegiProfileMiniatureBean c : this.mainFrame.getBirthdayList()){
			birthdayPanel.add(new KozossegiProfileMiniature(c));
			System.out.println(c);
		}
		
		namedayPanel.setLayout(new BoxLayout(namedayPanel, BoxLayout.Y_AXIS));
		for(KozossegiProfileMiniatureBean c : this.mainFrame.getNamedayList()){
			namedayPanel.add(new KozossegiProfileMiniature(c));
		}
		
		setLayout(new BoxLayout(this,BoxLayout.PAGE_AXIS));
		setBorder(BorderFactory.createLineBorder(Color.black));
		
		add(birthdayLabel);
		add(birthdayScroll);
		add(namedayLabel);
		add(namedayScroll);
	}

}
