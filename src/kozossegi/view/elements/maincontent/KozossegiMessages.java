package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JSplitPane;
import javax.swing.JTextArea;
import javax.swing.SwingConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiMessage;
import kozossegi.bean.KozossegiProfileMiniature;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiMessages extends JPanel {
	private static final long serialVersionUID = -725144772134434500L;
	private KozossegiMainFrame mainFrame;
	private JPanel friendList;
	private JPanel conversation;
	private JPanel sendMessagePanel;
	private JTextArea messageText;
	private JButton messageSendButton;

	
	public KozossegiMessages(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		friendList = new JPanel();
		conversation = new JPanel();
		sendMessagePanel = new JPanel();
		messageText = new JTextArea("",3,100);
		messageSendButton = new JButton(Labels.MESSAGE_SEND);
		
		setLayout(new BorderLayout());
		messageText.setEditable(true);
		
	    setBorder(BorderFactory.createLineBorder(Color.black));
	    friendList.setBorder(BorderFactory.createLineBorder(Color.black));
	    conversation.setBorder(BorderFactory.createLineBorder(Color.black));
		friendList.setLayout(new GridLayout(mainFrame.getFriendList().size(), 1));
		conversation.setLayout(new BorderLayout());
		for(KozossegiProfileMiniature c : mainFrame.getFriendList()){
			JPanel profileMiniature = new JPanel(new FlowLayout());
			JLabel profilePictureIconLabel = new JLabel(new ImageIcon(c.getPic()));			
			JLabel friendNameLabel = new JLabel(c.getName());
			
			profilePictureIconLabel.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					conversation.removeAll();
					conversation.add(listConversation(c));
					System.out.println(c.getName());
					revalidate();
					repaint();
				}
			});
			
			friendNameLabel.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					conversation.removeAll();
					conversation.add(listConversation(c));
					System.out.println(c.getName());
					revalidate();
					repaint();
				}
			});
			profileMiniature.add(profilePictureIconLabel);
			profileMiniature.add(friendNameLabel);
			friendList.add(profileMiniature);
			
		}
		sendMessagePanel.setLayout(new FlowLayout());
		sendMessagePanel.add(messageText);
		sendMessagePanel.add(messageSendButton);
		
		
		add(friendList, BorderLayout.WEST);
		add(conversation, BorderLayout.CENTER);
		add(sendMessagePanel, BorderLayout.SOUTH);
	}
	
	private JPanel listConversation(KozossegiProfileMiniature actualProfile){
		JPanel result = new JPanel();
		result.setLayout(new BoxLayout(result, BoxLayout.Y_AXIS));
		for(KozossegiMessage actualMessage : mainFrame.getMessagesMap().get(actualProfile)){			
			if(mainFrame.getMessagesMap().get(actualProfile).get(mainFrame.getMessagesMap().get(actualProfile).indexOf(actualMessage)).getFrom() ==  mainFrame.getProfileMiniature().getId() && mainFrame.getMessagesMap().get(actualProfile).get(mainFrame.getMessagesMap().get(actualProfile).indexOf(actualMessage)).getTo() == actualProfile.getId()){
		       	 result.add(ownMessage(mainFrame.getMessagesMap().get(actualProfile).get(mainFrame.getMessagesMap().get(actualProfile).indexOf(actualMessage))));
		     }
			if(mainFrame.getMessagesMap().get(actualProfile).get(mainFrame.getMessagesMap().get(actualProfile).indexOf(actualMessage)).getTo() ==mainFrame.getProfileMiniature().getId() && mainFrame.getMessagesMap().get(actualProfile).get(mainFrame.getMessagesMap().get(actualProfile).indexOf(actualMessage)).getFrom() == actualProfile.getId()){
		       	 result.add(notOwnMessage(actualProfile,mainFrame.getMessagesMap().get(actualProfile).get(mainFrame.getMessagesMap().get(actualProfile).indexOf(actualMessage))));
		     }
		}
		return result;
		
	}
	
	private JPanel ownMessage(KozossegiMessage message) {
		JPanel result = new JPanel(new BorderLayout());
		JPanel profileMiniature = new JPanel(new FlowLayout());
		JLabel profilePictureIconLabel = new JLabel(new ImageIcon(mainFrame.getProfileMiniature().getPic()));			
		JLabel nameLabel = new JLabel(message.getContent());
		JLabel dateLabel = new JLabel(message.getTime().toString());
		dateLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		
		profileMiniature.add(nameLabel);
		profileMiniature.add(profilePictureIconLabel);
		
		result.add(profileMiniature,BorderLayout.EAST);
		result.add(dateLabel, BorderLayout.SOUTH);
		return result;
	}
	
	private JPanel notOwnMessage(KozossegiProfileMiniature c , KozossegiMessage message) {
		JPanel result = new JPanel(new BorderLayout());
		JPanel profileMiniature = new JPanel(new FlowLayout());
		JLabel profilePictureIconLabel = new JLabel(new ImageIcon(c.getPic()));			
		JLabel nameLabel = new JLabel(message.getContent());
		JLabel dateLabel = new JLabel(message.getTime().toString());
		dateLabel.setHorizontalAlignment(SwingConstants.LEFT);
		
		profilePictureIconLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				mainFrame.setMainContent(new KozossegiProfile(mainFrame, mainFrame.getProfileMiniature().getId()));
			}
		});
		
		profileMiniature.add(profilePictureIconLabel);		
		profileMiniature.add(nameLabel);		
		result.add(profileMiniature,BorderLayout.WEST);
		result.add(dateLabel, BorderLayout.SOUTH);
		return result;
	}
}
