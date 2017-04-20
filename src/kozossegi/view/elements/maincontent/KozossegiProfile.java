package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;

import kozossegi.Labels;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiProfile extends JPanel implements ActionListener{
	private static final long serialVersionUID = 8887892468059042379L;
	
	private KozossegiMainFrame mainFrame;
	private kozossegi.bean.KozossegiProfileBean profile;
	private JPanel leftPanel;
	private JPanel postPanel;
	private JPanel topPanel;
	private JTabbedPane contentTabbedPane;
	private JPanel infoPanel;
	private JPanel wallPanel;
	private JPanel albumsPanel;
	private JPanel editPanel;
	private JPanel friendsPanel;
	private JTextArea messageText;
	private JButton messageSendButton;
	
	public KozossegiProfile(KozossegiMainFrame mainFrame,kozossegi.bean.KozossegiProfileBean profile) {
		this.profile = profile;
		this.mainFrame = mainFrame;
		leftPanel = new JPanel();
		postPanel = new JPanel();
		topPanel = new JPanel();
		contentTabbedPane = new JTabbedPane();
		infoPanel = new JPanel();
		wallPanel = new JPanel();
		albumsPanel = new JPanel();
		editPanel = new JPanel();
		friendsPanel = new JPanel();
		messageText = new JTextArea("",3,50);
		messageSendButton = new JButton(Labels.MESSAGE_SEND);
		
		leftPanel.add(initLeftSidePanel());
		topPanel.add(initTopPanel());
		postPanel.add(initPostPanel());
		
		contentTabbedPane.addTab("wall", wallPanel);
		contentTabbedPane.addTab("info", infoPanel);
		contentTabbedPane.addTab("albums", albumsPanel);
		contentTabbedPane.addTab("friends", friendsPanel);
		
		if(profile.getId() == mainFrame.getProfileMiniature().getId()){
			contentTabbedPane.addTab("edit", editPanel);
		}
		
		contentTabbedPane.setSelectedComponent(wallPanel);
		
		setLayout(new BorderLayout());
		add(leftPanel, BorderLayout.WEST);
		add(contentTabbedPane, BorderLayout.CENTER);
		add(postPanel, BorderLayout.SOUTH);		
		add(topPanel, BorderLayout.NORTH);		
		
	}

	private JPanel initPostPanel() {
		JPanel resultpanel = new JPanel();
		messageText.addKeyListener(new KeyAdapter() {
			public void keyPressed(KeyEvent e) {
				if(e.getKeyCode() == KeyEvent.VK_ENTER){
					if(!messageText.getText().isEmpty()){
						messageText.setText("");					
					}
				}
				
			}
		});
		
		resultpanel.setLayout(new FlowLayout());
		resultpanel.add(messageText);
		resultpanel.add(messageSendButton);
		return resultpanel;
		
	}

	private JLabel initTopPanel() {
		return new JLabel(profile.getName());
	}

	private JPanel initLeftSidePanel() {
		JPanel resultPanel = new JPanel();
		JLabel profilePictureLabel;
		JLabel wallLabel;
		JLabel infoLabel;
		JLabel albumsLabel;
		JLabel friendsLabel;
		
		setBorder(BorderFactory.createLineBorder(Color.black));
		resultPanel.setLayout(new BoxLayout(resultPanel, BoxLayout.Y_AXIS));
		profilePictureLabel = new JLabel(new ImageIcon(profile.getProfilepic()));
		profilePictureLabel.setBorder(BorderFactory.createLineBorder(Color.black));		

			
		wallLabel= new JLabel(Labels.PROFIL_WALL);		
		wallLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				contentTabbedPane.setSelectedComponent(wallPanel);
			}
		});
		infoLabel= new JLabel(Labels.PROFIL_INFO);
		infoLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				contentTabbedPane.setSelectedComponent(infoPanel);
			}
		});
		
		albumsLabel= new JLabel(Labels.PROFIL_ALBUMS);				
		albumsLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				contentTabbedPane.setSelectedComponent(albumsPanel);
			}
		});
		
		friendsLabel= new JLabel(Labels.PROFIL_FRIENDS);		
		friendsLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				/*friendsPanel.removeAll();
				friendsPanel.add(new KozossegiFriendManagement(mainFrame, profile));
				contentTabbedPane.setSelectedComponent(friendsPanel);
				revalidate();
				repaint();*/
			}
		});
		
		resultPanel.add(profilePictureLabel);
		resultPanel.add(wallLabel);
		resultPanel.add(infoLabel);
		resultPanel.add(albumsLabel);
		resultPanel.add(friendsLabel);
		
		return resultPanel;
	}

	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	
	

}
