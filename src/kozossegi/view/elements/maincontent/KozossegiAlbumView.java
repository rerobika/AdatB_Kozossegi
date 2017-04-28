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
<<<<<<< HEAD
	private KozossegiProfileBean profile;
	public KozossegiAlbumView(KozossegiProfileBean profile) {
=======
	private KozossegiProfile profile;
	public KozossegiAlbumView(KozossegiProfileBean profile) {
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb
		this.profile=profile;
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		update();

	}
	public void update()
	{
		removeAll();
<<<<<<< HEAD
		for (KozossegiAlbumBean a : KozossegiMainFrame.getInstance().getController().getAlbums(profile.getId())) {
			add(new KozossegiAlbum(this,a));
			add(Box.createRigidArea(new Dimension(10, 10)));
		}
		if(profile.getId()==KozossegiMainFrame.getInstance().getProfile().getId())
		add(new KozossegiAddAlbum(this));
		repaint();
		revalidate();
	}
	public KozossegiProfileBean getProfile() {
		return profile;
	}
}
=======
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
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb
