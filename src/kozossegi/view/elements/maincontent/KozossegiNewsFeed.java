package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Point;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JViewport;
import javax.swing.ScrollPaneConstants;

import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiPost;
import kozossegi.view.elements.KozossegiWritePost;

public class KozossegiNewsFeed extends JPanel {
	private static final long serialVersionUID = 1789624631107783247L;
	private JPanel feed;
	private KozossegiProfileBean profile;
<<<<<<< HEAD
	private JScrollPane scroll;
	public KozossegiNewsFeed(KozossegiProfileBean profile) {
=======

	public KozossegiNewsFeed(KozossegiProfileBean profile) {
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb
		this.profile = profile;
		setLayout(new BorderLayout());
		add(new KozossegiWritePost(this), BorderLayout.NORTH);
		feed = new JPanel();
		feed.setLayout(new BoxLayout(feed, BoxLayout.PAGE_AXIS));
<<<<<<< HEAD
		scroll = new JScrollPane(feed, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		add(scroll,BorderLayout.CENTER);
=======
		add(new JScrollPane(feed, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER), BorderLayout.CENTER);
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb
		update();
	}
	public void update() {
		feed.removeAll();
<<<<<<< HEAD
		for (KozossegiPostData d : KozossegiMainFrame.getInstance().getController().getPostData(0, 10, profile.getId())) {
			feed.add(new KozossegiPost(this,d));
=======
		for (KozossegiPostData d : mainFrame.getController().getPostData(0, 10, profile.getId())) {
			feed.add(new KozossegiPost(d));
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb
			feed.add(Box.createRigidArea(new Dimension(10, 10)));
		}
		repaint();
		revalidate();
	}
	public KozossegiProfileBean getProfile() {
		return profile;
	}
<<<<<<< HEAD
}
=======
}
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb
