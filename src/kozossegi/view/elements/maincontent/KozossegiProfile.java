package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiAlbumBean;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiAlbum;

public class KozossegiProfile extends JPanel{
	private static final long serialVersionUID = 8887892468059042379L;

	protected KozossegiProfileBean profile;
	protected KozossegiMainFrame mainFrame;
	protected JPanel postPanel;
	protected JPanel topPanel;
	protected JTabbedPane contentTabbedPane;
	protected JPanel infoPanel;
	protected JPanel wallPanel;
	protected JPanel albumsPanel;
	protected JPanel editPanel;
	
	public KozossegiProfile(KozossegiProfileBean profile) {
		this.mainFrame = KozossegiMainFrame.getInstance();
		this.profile = profile;
		postPanel = new JPanel();
		topPanel = new JPanel();
		contentTabbedPane = new JTabbedPane();
		infoPanel = new JPanel();
		wallPanel = new KozossegiNewsFeed(profile);
		albumsPanel = new KozossegiAlbumView(profile);
		editPanel = new JPanel();
		
		
		
		contentTabbedPane.addTab(Labels.PROFIL_WALL, new JScrollPane(wallPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER));
		contentTabbedPane.addTab(Labels.PROFIL_ALBUMS, new JScrollPane(albumsPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER));
		contentTabbedPane.setSelectedIndex(0);;
		
		setLayout(new BorderLayout());
		add(contentTabbedPane, BorderLayout.CENTER);
		add(postPanel, BorderLayout.SOUTH);		
		add(topPanel, BorderLayout.NORTH);
		
		
	}
}
