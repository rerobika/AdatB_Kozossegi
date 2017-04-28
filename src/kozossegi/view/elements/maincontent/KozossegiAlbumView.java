package kozossegi.view.elements.maincontent;

import java.awt.Dimension;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JPanel;

import kozossegi.bean.KozossegiAlbumBean;
import kozossegi.bean.KozossegiUserBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiAddAlbum;
import kozossegi.view.elements.KozossegiAlbum;

public class KozossegiAlbumView extends JPanel {
	private static final long serialVersionUID = 4344802648925029464L;
	private KozossegiUserBean user;
	private KozossegiMainFrame mainFrame;
	public KozossegiAlbumView(KozossegiUserBean user) {
		this.user=user;
		mainFrame = KozossegiMainFrame.getInstance();
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		update();

	}
	public void update()
	{
		removeAll();
		for (KozossegiAlbumBean a : KozossegiMainFrame.getInstance().getController().getAlbums(user.getId())) {
			add(new KozossegiAlbum(this,a));
			add(Box.createRigidArea(new Dimension(10, 10)));
		}
		if(user.getId()==mainFrame.getProfile().getId() || mainFrame.getProfile().getId() == mainFrame.getClub().getOwnerId())
		add(new KozossegiAddAlbum(this));
		repaint();
		revalidate();
	}
	public KozossegiUserBean getUser() {
		return user;
	}
}
