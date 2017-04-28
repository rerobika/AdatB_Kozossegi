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
	protected JPanel postPanel;
	protected JPanel topPanel;
	protected JTabbedPane contentTabbedPane;
	protected JPanel infoPanel;
	protected JPanel wallPanel;
	protected JPanel albumsPanel;
	protected JPanel editPanel;
	
	public KozossegiProfile(KozossegiUserBean user) {
		this.mainFrame = KozossegiMainFrame.getInstance();
		this.profile = user;
		postPanel = new JPanel();
		topPanel = new JPanel();
		contentTabbedPane = new JTabbedPane();
		infoPanel = new JPanel();
		wallPanel = new KozossegiNewsFeed(user);
		albumsPanel = new KozossegiAlbumView(user);
		editPanel = new JPanel();
		
		
		
		contentTabbedPane.addTab(Labels.PROFIL_WALL, new JScrollPane(wallPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER));
		contentTabbedPane.addTab(Labels.PROFIL_ALBUMS, new JScrollPane(albumsPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER));
		contentTabbedPane.setSelectedIndex(0);
		
		setLayout(new BorderLayout());
		add(contentTabbedPane, BorderLayout.CENTER);
		add(postPanel, BorderLayout.SOUTH);		
		add(topPanel, BorderLayout.NORTH);
		
		
	}
}
