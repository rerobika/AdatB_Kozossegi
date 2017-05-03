package kozossegi.view.elements.maincontent;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiProfileMiniature;

public class KozossegiSearchResult extends JPanel{
	private static final long serialVersionUID = -5735138452812260126L;
	
	public KozossegiSearchResult(String text) {
		
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		JLabel resultLabel = new JLabel(Labels.SEARCH_RESULT);
		setLayout(new FlowLayout(FlowLayout.LEFT));		
		
		add(resultLabel);
		for(KozossegiProfileMiniatureBean p: mainFrame.getController().getSearchResult(mainFrame.getProfile().getId(), text))
		{
			KozossegiProfileMiniature  miniature = new KozossegiProfileMiniature(p); 
			add(miniature);
			miniature.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					mainFrame.setMainContent(new KozossegiUserProfile(mainFrame.getController().getProfile(miniature.getData().getId())));
				}
			});
		}
		resultLabel.setPreferredSize(new Dimension(mainFrame.getWidth(), 40));
		
		
	}

}
