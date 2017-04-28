package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Dimension;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
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
	private JScrollPane scroll;

	public KozossegiNewsFeed(KozossegiProfileBean profile) {
		this.profile = profile;
		setLayout(new BorderLayout());
		add(new KozossegiWritePost(this), BorderLayout.NORTH);
		feed = new JPanel();
		feed.setLayout(new BoxLayout(feed, BoxLayout.PAGE_AXIS));

		scroll = new JScrollPane(feed, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		add(scroll, BorderLayout.CENTER);
		update();
	}

	public void update() {
		feed.removeAll();

		for (KozossegiPostData d : KozossegiMainFrame.getInstance().getController().getPostData(0, 10,
				profile.getId())) {
			feed.add(new KozossegiPost(this, d));
			feed.add(Box.createRigidArea(new Dimension(10, 10)));
		}
		repaint();
		revalidate();
	}

	public KozossegiProfileBean getProfile() {
		return profile;
	}
}
