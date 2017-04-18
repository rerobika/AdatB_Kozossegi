package kozossegi.view.elements.maincontent;

import javax.swing.JPanel;

import kozossegi.view.KozossegiMainFrame;

public class KozossegiFriendManagement extends JPanel {
	
private KozossegiMainFrame mainFrame;
private int id;
	
	public KozossegiFriendManagement(KozossegiMainFrame mainFrame, int id) {
		this.mainFrame = mainFrame;
		this.id = id;
	}

}
