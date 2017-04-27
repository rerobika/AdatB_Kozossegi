package kozossegi.view.elements.maincontent;

import java.awt.Dimension;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JPanel;

import kozossegi.bean.KozossegiAlbumBean;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiAlbum;
import kozossegi.view.elements.KozossegiAddAlbum;

public class KozossegiAlbumView extends JPanel {
	private static final long serialVersionUID = 4344802648925029464L;
	private KozossegiProfile profile;
	public KozossegiAlbumView(KozossegiProfileBean profile) {
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		this.profile=profile;
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		update();

	}
	public void update()
	{
		removeAll();
		for (KozossegiAlbumBean a : mainFrame.getController().getAlbums(profile.getId())) {
			add(new KozossegiAlbum(this,a));
			add(Box.createRigidArea(new Dimension(10, 10)));
		}
		add(new KozossegiAddAlbum(this));
	}
	public KozossegiProfile getProfile() {
		return profile;
	}
}
