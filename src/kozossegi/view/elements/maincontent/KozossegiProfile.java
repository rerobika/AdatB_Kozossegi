package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;

import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.ScrollPaneConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiUserBean;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiProfile extends JPanel{
	private static final long serialVersionUID = 8887892468059042379L;

	protected KozossegiUserBean profile;
	protected KozossegiMainFrame mainFrame;
	protected JPanel topPanel;
	protected JTabbedPane contentTabbedPane;
	protected JPanel infoTab;
	protected JPanel wallTab;
	protected JPanel albumsTab;
	protected JPanel editTab;
	
	public KozossegiProfile(KozossegiUserBean user) {
		this.mainFrame = KozossegiMainFrame.getInstance();
		this.profile = user;
		topPanel = new JPanel();
		contentTabbedPane = new JTabbedPane();
		infoTab = new JPanel();
		wallTab = new KozossegiNewsFeed(user);
		albumsTab = new KozossegiAlbumView(user);
		editTab = new JPanel();
		
		
		
		contentTabbedPane.addTab(Labels.PROFIL_WALL, new JScrollPane(wallTab, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER));
		contentTabbedPane.addTab(Labels.PROFIL_ALBUMS, new JScrollPane(albumsTab, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER));
		contentTabbedPane.setSelectedIndex(0);
		
		setLayout(new BorderLayout());
		add(contentTabbedPane, BorderLayout.CENTER);	
		add(topPanel, BorderLayout.NORTH);
		
		
	}
}
