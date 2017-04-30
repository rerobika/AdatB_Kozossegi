package kozossegi.view.elements;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Date;

import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClubBean;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileNameBean;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiComment extends JPanel{

	private static final long serialVersionUID = 3877303667279978453L;
	public KozossegiComment(KozossegiPost post) 
	{	
		super();
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		setLayout(new FlowLayout(FlowLayout.CENTER));
		JTextArea text;
		JButton send;
		text= new JTextArea(10,20);
		text.setLineWrap(true);
		send = new JButton(Labels.MESSAGE_SEND);
		send.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if(post.getFeed().getUser() instanceof KozossegiClubBean && ((KozossegiClubBean)post.getFeed().getUser()).getOwnerId() == mainFrame.getProfile().getId() ){
					
					mainFrame.getController().sendPost(new KozossegiPostData(new KozossegiProfileNameBean(((KozossegiClubBean)post.getFeed().getUser()).getId(),((KozossegiClubBean)post.getFeed().getUser()).getName()),
							null, new Date(), text.getText(),post.getData().getId()));
				}
				else{
					mainFrame.getController().sendPost(new KozossegiPostData(new KozossegiProfileNameBean(mainFrame.getProfile().getId(),mainFrame.getProfile().getName()),
						null, new Date(), text.getText(),post.getData().getId()));
				}
				
				text.setText("");
				post.getFeed().update();
			}
		});
		add(text);
		add(send);
	}
	
}
