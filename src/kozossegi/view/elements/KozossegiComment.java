package kozossegi.view.elements;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import kozossegi.Labels;

public class KozossegiComment extends JPanel{
	JTextArea text;
	JButton send;
	KozossegiPost post;
	public KozossegiComment(KozossegiPost post) {
		super();
		this.post=post;
		text= new JTextArea(10,20);
		send = new JButton(Labels.MESSAGE_SEND);
		send.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				//TODO:SEND;
				
			}
		});
		add(text);
		add(send);
	}
	

}
