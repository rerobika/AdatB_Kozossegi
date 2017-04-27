package kozossegi.view.elements.maincontent;

import java.awt.Dimension;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JPanel;

import kozossegi.bean.KozossegiAlbumBean;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiAlbum;

public class KozossegiAlbumView extends JPanel {
	private static final long serialVersionUID = 4344802648925029464L;

	public KozossegiAlbumView(KozossegiProfileBean profile) {
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		if (profile == mainFrame.getProfile()) {
			for (KozossegiAlbumBean a : mainFrame.getController().getAlbums(profile.getId())) {
				add(new KozossegiAlbum(a, true));
				add(Box.createRigidArea(new Dimension(10, 10)));
			}
			add(new KozossegiAlbum());
		} else {
			for (KozossegiAlbumBean a : mainFrame.getController().getAlbums(profile.getId())) {
				add(new KozossegiAlbum(a, false));
				add(Box.createRigidArea(new Dimension(10, 10)));
			}
		}

	}
}
