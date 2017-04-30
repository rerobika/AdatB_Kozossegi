package kozossegi.view.elements.maincontent;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BoxLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiProfileMiniature;

public class KozossegiBirthAndNameday extends JPanel {

	private static final long serialVersionUID = -2428632206242640190L;

	
	public KozossegiBirthAndNameday() {
			KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
			JPanel nameday = new JPanel();
			JPanel birthday = new JPanel();
			JLabel nLabel = new JLabel(Labels.NAMEDAY);
			JLabel bLabel = new JLabel(Labels.BIRTHDAY);
			nLabel.setAlignmentX(JLabel.CENTER_ALIGNMENT);
			bLabel.setAlignmentX(JLabel.CENTER_ALIGNMENT);
			setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
			nameday.setLayout(new FlowLayout(FlowLayout.LEFT));
			birthday.setLayout(new FlowLayout(FlowLayout.LEFT));
			nLabel.setPreferredSize(new Dimension(mainFrame.getWidth(), 40));
			
			for(KozossegiProfileMiniatureBean p: mainFrame.getBirthdayList())
			{
				KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(p); 
				birthday.add(miniature);
				miniature.addMouseListener(new MouseAdapter() {
					public void mouseClicked(MouseEvent e) {
						mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
					}
				});	
			}
			for(KozossegiProfileMiniatureBean p: mainFrame.getNamedayList())
			{
				KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(p); 
				nameday.add(miniature);
				miniature.addMouseListener(new MouseAdapter() {
					public void mouseClicked(MouseEvent e) {
						mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
					}
				});	
			}
			
			add(nLabel);
			add(nameday);	
			add(bLabel);
			add(birthday);
			setMaximumSize(getPreferredSize());
	}

}
