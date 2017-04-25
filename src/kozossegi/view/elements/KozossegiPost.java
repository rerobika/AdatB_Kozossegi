package kozossegi.view.elements;

import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import kozossegi.Labels;
import kozossegi.bean.KozossegiPostData;
import kozossegi.dao.KozossegiImageManager;

public class KozossegiPost extends JPanel{
	private static final long serialVersionUID = 7755087122308505879L;
	KozossegiPostData data;
	public KozossegiPostData getData() {
		return data;
	}
	public void setData(KozossegiPostData data) {
		this.data = data;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public KozossegiPost(KozossegiPostData data) {
		super();
		this.data=data;
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		JPanel head = new JPanel();
		head.setLayout(new FlowLayout(FlowLayout.LEFT));
		head.add(new KozossegiProfileName(data.getSender()));
		if(data.getReceiver()!=null)
		{
			head.add(new JLabel("->"));
			head.add(new KozossegiProfileName(data.getReceiver()));
		}
		head.add(new JLabel(data.getTime().toString()));
		head.setBorder(BorderFactory.createLineBorder(Color.BLACK));
		add(head);
		
		JTextArea text;
		String t[]=data.getContent().split("http://");
		if(t.length>1)
		{
			String t2[] =t[1].split(" ");
			
					try 
					{
						JLabel img =new JLabel(new ImageIcon(KozossegiImageManager.download(new URL("http://"+t2[0]).toURI().toURL()).getScaledInstance(256, 256, Image.SCALE_FAST)));
						img.setAlignmentX(Component.CENTER_ALIGNMENT);
						add(img);
					} 
					catch (MalformedURLException | URISyntaxException  | NullPointerException e) 
					{
						
					}
		}	
		text = new JTextArea(data.getContent());
		text.setLineWrap(true);
		text.setEditable(false);
		add(text);
		if(data.getComment()!=null)
		for(KozossegiPostData d : data.getComment())
		{
			KozossegiPost a = new KozossegiPost(d);
			a.setMaximumSize(new Dimension(200, 100));
			add(a);
		}
		if(data.getParent()==0)
		{
			JButton comment = new JButton(Labels.COMMENT);
			comment.setAlignmentX(Component.CENTER_ALIGNMENT);
			add(comment);
			comment.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					add(new KozossegiComment(KozossegiPost.this));		
					KozossegiPost.this.remove(comment);
					KozossegiPost.this.revalidate();
					KozossegiPost.this.repaint();
				}
			});
		}
		setBorder(BorderFactory.createLineBorder(Color.BLACK));
	}
	
}
