package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiMessage;
import kozossegi.bean.KozossegiProfileMiniature;
import kozossegi.view.KozossegiMainFrame;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

public class KozossegiMessages extends JPanel implements ActionListener {
	private static final long serialVersionUID = -725144772134434500L;
	private KozossegiMainFrame mainFrame;
	private JScrollPane friendListScroll;
	private JScrollPane conversationScroll;
	private JPanel friendListPanel;
	private JPanel conversationPanel;
	private JPanel sendMessagePanel;
	private JTextArea messageText;
	private JButton messageSendButton;
	private KozossegiProfileMiniature conversationPartner;
	
	public KozossegiMessages(final KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		friendListPanel = new JPanel();
		conversationPanel = new JPanel();
		sendMessagePanel = new JPanel();
		messageText = new JTextArea("",3,50);
		
		messageText.addKeyListener(new KeyAdapter() {
			public void keyPressed(KeyEvent e) {
				if(e.getKeyCode() == KeyEvent.VK_ENTER){
					if(!messageText.getText().isEmpty()){
						mainFrame.updateMessageList(conversationPartner, messageText.getText());
						refreshConversationList(conversationPartner);
						messageText.setText("");					
					}
				}
				
			}
		});
		messageSendButton = new JButton(Labels.MESSAGE_SEND);
		friendListScroll = new JScrollPane(friendListPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		conversationScroll = new JScrollPane(conversationPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		conversationPartner = new KozossegiProfileMiniature();
		
		setLayout(new BorderLayout());		
	    setBorder(BorderFactory.createLineBorder(Color.black));
	    
	    friendListPanel.setBorder(BorderFactory.createLineBorder(Color.black));
	    friendListPanel.setLayout(new BoxLayout(friendListPanel, BoxLayout.Y_AXIS));
	    conversationPanel.setBorder(BorderFactory.createLineBorder(Color.black));		
	    conversationPanel.setLayout(new BoxLayout(conversationPanel, BoxLayout.Y_AXIS));
	    messageText.setEditable(false);	

		add(friendListScroll, BorderLayout.WEST);
		add(conversationScroll, BorderLayout.CENTER);
		
		
		for(final KozossegiProfileMiniature c : mainFrame.getFriendList()){
			JPanel profileMiniature = new JPanel();
			JLabel profilePictureIconLabel = new JLabel(new ImageIcon(c.getPic()));			
			JLabel friendNameLabel = new JLabel(c.getName());
			
			profilePictureIconLabel.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					refreshConversationList(c);
					conversationPartner = c;
					messageText.setEditable(true);
				}
			});
			
			friendNameLabel.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					refreshConversationList(c);
					conversationPartner = c;
					messageText.setEditable(true);
				}
			});
			profileMiniature.add(profilePictureIconLabel);
			profileMiniature.add(friendNameLabel);
			profileMiniature.setBorder(BorderFactory.createLineBorder(Color.black));
			friendListPanel.add(profileMiniature);
			
		}
		messageSendButton.addActionListener(this);
		FlowLayout fl_sendMessagePanel = new FlowLayout();
		fl_sendMessagePanel.setAlignment(FlowLayout.RIGHT);
		sendMessagePanel.setLayout(fl_sendMessagePanel);
		sendMessagePanel.add(messageText);
		sendMessagePanel.add(messageSendButton);
		
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
		
		profileMiniature.setToolTipText(message.getTime().toString());
		profileMiniature.add(nameLabel);
		profileMiniature.add(profilePictureIconLabel);
		
		result.add(profileMiniature,BorderLayout.EAST);
		return result;
	}
	
	private JPanel notOwnMessage(KozossegiProfileMiniature c , KozossegiMessage message) {
		JPanel result = new JPanel(new BorderLayout());
		JPanel profileMiniature = new JPanel(new FlowLayout());
		JLabel profilePictureIconLabel = new JLabel(new ImageIcon(c.getPic()));			
		JLabel nameLabel = new JLabel(message.getContent());
		
		profilePictureIconLabel.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				mainFrame.setMainContent(new KozossegiProfile(mainFrame, mainFrame.getProfileMiniature().getId()));
			}
		});
		
		profileMiniature.setToolTipText(message.getTime().toString());
		profileMiniature.add(profilePictureIconLabel);		
		profileMiniature.add(nameLabel);	
		
		result.add(profileMiniature,BorderLayout.WEST);
		return result;
	}

	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==messageSendButton){
			if(!messageText.getText().isEmpty()){
				mainFrame.updateMessageList(conversationPartner, messageText.getText());
				refreshConversationList(conversationPartner);
				messageText.setText("");
			}
		}
		
	}
	
	private void refreshConversationList(KozossegiProfileMiniature conversationPartner) {
		conversationPanel.removeAll();
		conversationPanel.add(listConversation(conversationPartner));
		revalidate();
		repaint();
	}
}
