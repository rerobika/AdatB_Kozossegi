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
import java.util.Date;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;

import kozossegi.Labels;
import kozossegi.bean.KozossegiMessageBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiMessage;
import kozossegi.view.elements.KozossegiProfileMiniature;

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
	private KozossegiProfileMiniatureBean conversationPartner;

	public KozossegiMessages(final KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		friendListPanel = new JPanel();
		conversationPanel = new JPanel();
		sendMessagePanel = new JPanel();
		messageText = new JTextArea("", 3, 50);
		messageText.setLineWrap(true);

		messageText.addKeyListener(new KeyAdapter() {
			public void keyPressed(KeyEvent e) {
				if (e.getKeyCode() == KeyEvent.VK_ENTER) {
					if (!messageText.getText().trim().isEmpty()) {
						mainFrame.getController().sendMessage(new KozossegiMessageBean(mainFrame.getProfile().getId(),
								conversationPartner.getId(), messageText.getText(), new Date()));
						messageText.setText("");
						updateMessages(conversationPartner.getId());
					}
				}

			}
		});
		messageSendButton = new JButton(Labels.MESSAGE_SEND);
		friendListScroll = new JScrollPane(friendListPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		conversationScroll = new JScrollPane(conversationPanel, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		conversationPartner = new KozossegiProfileMiniatureBean();

		setLayout(new BorderLayout());
		setBorder(BorderFactory.createLineBorder(Color.black));

		friendListPanel.setBorder(BorderFactory.createLineBorder(Color.black));
		friendListPanel.setLayout(new BoxLayout(friendListPanel, BoxLayout.Y_AXIS));
		conversationPanel.setBorder(BorderFactory.createLineBorder(Color.black));
		conversationPanel.setLayout(new BoxLayout(conversationPanel, BoxLayout.Y_AXIS));
		messageText.setEditable(false);

		add(friendListScroll, BorderLayout.WEST);
		add(conversationScroll, BorderLayout.CENTER);

		for (KozossegiProfileMiniatureBean p : mainFrame.getController().getFriends(mainFrame.getProfile().getId())) {
			KozossegiProfileMiniature miniature = new KozossegiProfileMiniature(p);
			miniature.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					conversationPartner = ((KozossegiProfileMiniature) e.getSource()).getData();
					updateMessages(conversationPartner.getId());
				}
			});
			friendListPanel.add(miniature);
		}

		messageSendButton.addActionListener(this);
		FlowLayout fl_sendMessagePanel = new FlowLayout();
		fl_sendMessagePanel.setAlignment(FlowLayout.RIGHT);
		sendMessagePanel.setLayout(fl_sendMessagePanel);
		sendMessagePanel.add(messageText);
		sendMessagePanel.add(messageSendButton);

		add(sendMessagePanel, BorderLayout.SOUTH);
	}

	public void actionPerformed(ActionEvent e) {
		if (e.getSource() == messageSendButton) {
			if (!messageText.getText().trim().isEmpty()) {
				mainFrame.getController().sendMessage(new KozossegiMessageBean(mainFrame.getProfile().getId(),
						conversationPartner.getId(), messageText.getText(), new Date()));
				messageText.setText("");
				updateMessages(conversationPartner.getId());
			}
		}

	}

	public void updateMessages(int id) {
		conversationPanel.removeAll();
		for (KozossegiMessageBean m : mainFrame.getController().getMessages(mainFrame.getProfile().getId(), id)) {
			KozossegiMessage msg = new KozossegiMessage(m);
			if (msg.getData().getFrom() == mainFrame.getProfile().getId())
				msg.setLayout(new FlowLayout(FlowLayout.RIGHT));
			else
				msg.setLayout(new FlowLayout(FlowLayout.LEFT));
			conversationPanel.add(msg);
		}
		conversationPanel.revalidate();
		conversationPanel.repaint();
		messageText.setEditable(true);
	}
}
