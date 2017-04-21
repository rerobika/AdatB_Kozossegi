package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiProfile extends JPanel{
	private static final long serialVersionUID = 8887892468059042379L;
	
	protected KozossegiMainFrame mainFrame;
	protected KozossegiProfileBean profile;
	protected JPanel postPanel;
	private JPanel topPanel;
	protected JTabbedPane contentTabbedPane;
	protected JPanel infoPanel;
	protected JPanel wallPanel;
	protected JPanel albumsPanel;
	protected JPanel editPanel;
	private JTextArea postText;
	private JButton messageSendButton;
	
	public KozossegiProfile(KozossegiMainFrame mainFrame,KozossegiProfileBean profile) {
		this.profile = profile;
		this.mainFrame = mainFrame;
		postPanel = new JPanel();
		topPanel = new JPanel();
		contentTabbedPane = new JTabbedPane();
		infoPanel = new JPanel();
		wallPanel = new JPanel();
		albumsPanel = new JPanel();
		editPanel = new JPanel();
		
		postText = new JTextArea("",3,50);
		messageSendButton = new JButton(Labels.MESSAGE_SEND);
		
		topPanel.add(initTopPanel());
		postPanel.add(initPostPanel());
		
		contentTabbedPane.addTab(Labels.PROFIL_WALL, wallPanel);
		contentTabbedPane.addTab(Labels.PROFIL_INFO, infoPanel);
		contentTabbedPane.addTab(Labels.PROFIL_ALBUMS, albumsPanel);
		
				
		
		contentTabbedPane.setSelectedComponent(wallPanel);
		
		setLayout(new BorderLayout());
		add(contentTabbedPane, BorderLayout.CENTER);
		add(postPanel, BorderLayout.SOUTH);		
		add(topPanel, BorderLayout.NORTH);		
		
	}

	private JPanel initPostPanel() {
		JPanel resultpanel = new JPanel();
		postText.addKeyListener(new KeyAdapter() {
			public void keyPressed(KeyEvent e) {
				if(e.getKeyCode() == KeyEvent.VK_ENTER){
					if(!postText.getText().isEmpty()){
						postText.setText("");					
					}
				}
				
			}
		});
		
		resultpanel.setLayout(new FlowLayout());
		resultpanel.add(postText);
		resultpanel.add(messageSendButton);
		return resultpanel;
		
	}

	private JLabel initTopPanel() {
		return new JLabel(profile.getName());
	}

	
	

}
