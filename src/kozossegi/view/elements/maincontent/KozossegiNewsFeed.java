package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.util.Date;

import javax.swing.BoxLayout;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.ScrollPaneConstants;

import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileNameBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiPost;
import kozossegi.view.elements.KozossegiWritePost;

public class KozossegiNewsFeed extends JPanel {
	private static final long serialVersionUID = 1789624631107783247L;
	private KozossegiMainFrame mainFrame;
	
	public KozossegiNewsFeed(KozossegiMainFrame mainFrame) {
		add(new KozossegiWritePost());
		JPanel feed = new JPanel(); 
		feed.setLayout(new BoxLayout(feed, BoxLayout.PAGE_AXIS));
		add(new JScrollPane(feed, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED,ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED));
		this.mainFrame = mainFrame;
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		feed.add(new KozossegiPost(new KozossegiPostData(1, new KozossegiProfileNameBean(670, "Asd"), new KozossegiProfileNameBean(1020, "asd"), new Date(), "http://icons.iconarchive.com/icons/graphicloads/100-flat/256/home-icon.png", 0)),BorderLayout.CENTER);
		feed.add(new KozossegiPost(new KozossegiPostData(1, new KozossegiProfileNameBean(670, "Asd"), new KozossegiProfileNameBean(1020, "asd"), new Date(), "szöveg asdasdfa", 0)),BorderLayout.CENTER);
	}

}
