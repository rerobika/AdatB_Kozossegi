package kozossegi.view.elements;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Date;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import kozossegi.Labels;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.bean.KozossegiProfileNameBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.maincontent.KozossegiNewsFeed;

public class KozossegiWritePost extends JPanel {
	private static final long serialVersionUID = 304887341847941322L;

	public KozossegiWritePost(KozossegiNewsFeed feed) {
		super();
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		setLayout(new BoxLayout(this, BoxLayout.X_AXIS));
		JTextArea text = new JTextArea(2, 30);
		text.setLineWrap(true);
		JButton send = new JButton(Labels.MESSAGE_SEND);
		if (feed.getUser().getId() == mainFrame.getProfile().getId()) {
			JComboBox<KozossegiProfileNameBean> friend = new JComboBox<KozossegiProfileNameBean>();
			send.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					if (friend.getSelectedIndex() == -1) {
						mainFrame.getController().sendPost(
								new KozossegiPostData(new KozossegiProfileNameBean(mainFrame.getProfile().getId(),
										mainFrame.getProfile().getName()), null, new Date(), text.getText()));

					} else {
						mainFrame.getController().sendPost(new KozossegiPostData(
								new KozossegiProfileNameBean(mainFrame.getProfile().getId(),
										mainFrame.getProfile().getName()),
								(KozossegiProfileNameBean) friend.getSelectedItem(), new Date(), text.getText()));
					}
					text.setText("");
					feed.update();
				}
			});
			for (KozossegiProfileMiniatureBean b : mainFrame.getFriendList()) {
				friend.addItem(new KozossegiProfileNameBean(b));
				friend.setSelectedItem(b);
			}
			friend.setSelectedIndex(-1);
			add(friend);
		} 
		else if (mainFrame.getClub() != null && mainFrame.getClub().getOwnerId() == mainFrame.getProfile().getId()) {
			JComboBox<KozossegiProfileNameBean> tags = new JComboBox<KozossegiProfileNameBean>();
			send.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					if (tags.getSelectedIndex() == -1) {
						mainFrame.getController().sendPost(
								new KozossegiPostData(new KozossegiProfileNameBean(mainFrame.getClub().getId(),
										mainFrame.getClub().getName()), null, new Date(), text.getText()));

					} else {
						mainFrame.getController().sendPost(new KozossegiPostData(
								new KozossegiProfileNameBean(mainFrame.getClub().getId(),
										mainFrame.getClub().getName()),
								(KozossegiProfileNameBean) tags.getSelectedItem(), new Date(), text.getText()));
					}
					text.setText("");
					feed.update();
				}
			});
			for (KozossegiProfileMiniatureBean b : mainFrame.getClub().getMembers()) {
				tags.addItem(new KozossegiProfileNameBean(b));
				tags.setSelectedItem(b);
			}
			tags.setSelectedIndex(-1);
			add(tags);
		}
		else {
			send.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					mainFrame.getController()
							.sendPost(new KozossegiPostData(
									new KozossegiProfileNameBean(mainFrame.getProfile().getId(),
											mainFrame.getProfile().getName()),
									new KozossegiProfileNameBean(feed.getUser()), new Date(), text.getText()));
					text.setText("");
					feed.update();
				}
			});
		}
		add(text);
		add(send);
		setBorder(BorderFactory.createLineBorder(Color.BLACK));
	}

}