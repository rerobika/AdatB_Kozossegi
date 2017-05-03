package kozossegi.view.elements;

import java.awt.Color;
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
import kozossegi.view.elements.maincontent.KozossegiUserProfile;

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
			KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(c); 
			birthdayPanel.add(miniature);
			miniature.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
				}
			});
		}
		
		namedayPanel.setLayout(new BoxLayout(namedayPanel, BoxLayout.Y_AXIS));
		for(KozossegiProfileMiniatureBean c : this.mainFrame.getNamedayList()){
			KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(c); 
			namedayPanel.add(miniature);
			miniature.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
				}
			});
		}
		
		setLayout(new BoxLayout(this,BoxLayout.PAGE_AXIS));
		setBorder(BorderFactory.createLineBorder(Color.black));
		
		add(birthdayLabel);
		add(birthdayScroll);
		add(namedayLabel);
		add(namedayScroll);
	}

}
