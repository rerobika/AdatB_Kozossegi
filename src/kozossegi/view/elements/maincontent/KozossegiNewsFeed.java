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
	
	public KozossegiNewsFeed(KozossegiProfileBean profile) {
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		setLayout(new BorderLayout());
		if(profile==mainFrame.getProfile())
			add(new KozossegiWritePost(),BorderLayout.NORTH);
		else
			add(new KozossegiWritePost(profile),BorderLayout.NORTH);
		JPanel feed = new JPanel(); 
		feed.setLayout(new BoxLayout(feed, BoxLayout.PAGE_AXIS));
		add(new JScrollPane(feed, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED,ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER),BorderLayout.CENTER);
		for(KozossegiPostData d : mainFrame.getController().getPostData(0, 10, profile.getId()))
		{
			feed.add(new KozossegiPost(d));
			feed.add(Box.createRigidArea(new Dimension(10, 10)));
		}
	}

}
