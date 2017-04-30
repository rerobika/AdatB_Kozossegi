package kozossegi.view.elements;

import java.awt.Dimension;

import javax.swing.JPanel;
import javax.swing.JTextArea;

import kozossegi.bean.KozossegiMessageBean;

public class KozossegiMessage extends JPanel{
	private static final long serialVersionUID = 9164775319943964055L;
	KozossegiMessageBean data;
	JTextArea text;
	public KozossegiMessageBean getData() {
		return data;
	}
	public void setData(KozossegiMessageBean data) {
		this.data = data;
	}
	public JTextArea getLabel() {
		return text;
	}
	public void JTextArea(JTextArea text) {
		this.text = text;
	}

	public KozossegiMessage(KozossegiMessageBean data) {
		super();
		this.data = data;
		Dimension minSize = new Dimension(500, 40);
		Dimension textSize = new Dimension(200, 40);
		text = new JTextArea(data.getContent());
		text.setSize(textSize);
		text.setEditable(false);
		text.setLineWrap(true);
		add(text);
		setSize(minSize);
		setMinimumSize(minSize);
	}
	
}
