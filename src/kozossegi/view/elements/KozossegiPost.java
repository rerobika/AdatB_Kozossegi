package kozossegi.view.elements;

import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;

import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import kozossegi.Labels;
import kozossegi.bean.KozossegiPostData;
import kozossegi.dao.KozossegiImageManager;
import kozossegi.view.elements.maincontent.KozossegiNewsFeed;

public class KozossegiPost extends JPanel {
	private static final long serialVersionUID = 7755087122308505879L;
	private KozossegiPostData data;
	private KozossegiNewsFeed feed;

	public KozossegiNewsFeed getFeed() {
		return feed;
	}

	public void setFeed(KozossegiNewsFeed feed) {
		this.feed = feed;
	}

	public KozossegiPostData getData() {
		return data;
	}

	public void setData(KozossegiPostData data) {
		this.data = data;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public KozossegiPost(KozossegiNewsFeed feed, KozossegiPostData data) {
		super();
		this.data = data;
		this.feed = feed;
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		JPanel head = new JPanel();
		head.setLayout(new FlowLayout(FlowLayout.LEFT));
		head.add(new KozossegiProfileName(data.getSender()));
		if (data.getReceiver() != null) {
			head.add(new JLabel("->"));
			head.add(new KozossegiProfileName(data.getReceiver()));
		}
		head.add(new JLabel(data.getTime().toString()));
		head.setBorder(BorderFactory.createLineBorder(Color.BLACK));
		add(head);

		JTextArea text;
		String content = data.getContent();
		if(content.startsWith("http://")){
			String t[] = data.getContent().split("http://");

			if (t.length > 1) {
				String t2[] = t[1].split(" ");
				try {
					JLabel img = new JLabel(
							new ImageIcon(KozossegiImageManager.download(new URL("http://" + t2[0]).toURI().toURL())
									.getScaledInstance(256, 256, Image.SCALE_FAST)));
					img.setAlignmentX(Component.CENTER_ALIGNMENT);
					add(img);
				} catch (MalformedURLException | URISyntaxException | NullPointerException e) {

				}
				content = t[0];
				for (int i=1;i<t2.length;i++) {
					content += t2[i];
				}
			}
		}
		else if(content.startsWith("https://")){
			String t[] = data.getContent().split("https://");

			if (t.length > 1) {
				String t2[] = t[1].split(" ");
				try {
					JLabel img = new JLabel(
							new ImageIcon(KozossegiImageManager.download(new URL("https://" + t2[0]).toURI().toURL())
									.getScaledInstance(256, 256, Image.SCALE_FAST)));
					img.setAlignmentX(Component.CENTER_ALIGNMENT);
					add(img);
				} catch (MalformedURLException | URISyntaxException | NullPointerException e) {

				}
				content = t[0];
				for (int i=1;i<t2.length;i++) {
					content += t2[i];
				}
			}
		}
		
		

		text = new JTextArea(content, 5, 20);
		text.setLineWrap(true);
		text.setEditable(false);
		add(text);
		if (data.getComment() != null) {
			JPanel comments = new JPanel();
			comments.setLayout(new GridLayout(0, 3, 10, 5));
			for (KozossegiPostData d : data.getComment()) {
				KozossegiPost a = new KozossegiPost(feed, d);
				comments.add(Box.createRigidArea(new Dimension(10, 10)));
				comments.add(a);
				comments.add(Box.createRigidArea(new Dimension(10, 10)));
			}
			add(comments);
		}
		if (data.getParent() == 0) {
			JButton comment = new JButton(Labels.COMMENT);
			comment.setAlignmentX(Component.CENTER_ALIGNMENT);
			add(Box.createRigidArea(new Dimension(10, 10)));
			add(comment);
			comment.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					add(new KozossegiComment(KozossegiPost.this));
					KozossegiPost.this.remove(comment);
					KozossegiPost.this.revalidate();
					KozossegiPost.this.repaint();
					setMaximumSize(getPreferredSize());
				}
			});
		}
		setBorder(BorderFactory.createLineBorder(Color.BLACK));

		setMaximumSize(getPreferredSize());
	}
}
