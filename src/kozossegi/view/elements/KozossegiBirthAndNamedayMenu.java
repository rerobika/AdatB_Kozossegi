package kozossegi.view.elements;

import java.awt.Color;
import java.awt.GridLayout;

import javax.swing.BorderFactory;
import javax.swing.JLabel;
import javax.swing.JPanel;
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
	
	public KozossegiBirthAndNamedayMenu(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		birthdayPanel = new JPanel();
		namedayPanel = new JPanel();
		birthdayLabel = new JLabel(Labels.BIRTHDAY);
		namedayLabel = new JLabel(Labels.NAMEDAY);
		
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
		
		add(birthdayLabel);
		add(birthdayPanel);
		add(namedayLabel);
		add(namedayPanel);
	}

}
