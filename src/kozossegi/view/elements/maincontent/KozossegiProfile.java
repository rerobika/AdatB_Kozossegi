package kozossegi.view.elements.maincontent;

import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.view.KozossegiMainFrame;
import javax.swing.JTabbedPane;

public class KozossegiProfile extends JPanel {
	private static final long serialVersionUID = 8887892468059042379L;
	
	private KozossegiMainFrame mainFrame;
	
	public KozossegiProfile(KozossegiMainFrame mainFrame, int id) {
		this.mainFrame = mainFrame;
		
		JTabbedPane tabbedPane = new JTabbedPane(JTabbedPane.TOP);
		add(tabbedPane);
		
		add(new JLabel(mainFrame.getController().getNameById(id)));
	}

}
