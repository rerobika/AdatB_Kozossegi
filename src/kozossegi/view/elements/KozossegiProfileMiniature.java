package kozossegi.view.elements;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Image;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.bean.KozossegiProfileMiniatureBean;

public class KozossegiProfileMiniature extends JPanel{
	
	private static final long serialVersionUID = 1L;
	KozossegiProfileMiniatureBean data;
	JLabel label;
	JLabel image;
	
	public KozossegiProfileMiniatureBean getData() {
		return data;
	}
	public void setData(KozossegiProfileMiniatureBean data) {
		this.data = data;
	}
	public JLabel getLabel() {
		return label;
	}
	public void setLabel(JLabel label) {
		this.label = label;
	}
	
	
	public KozossegiProfileMiniature(KozossegiProfileMiniatureBean data) {
		super();
		this.data = data;
		Dimension size = new Dimension(160, 40);
		label = new JLabel("<html>"+data.getName()+"</html>");
		setLayout(new FlowLayout(FlowLayout.LEFT));	
		
		if(data.getPic()!=null)
		{
			image = new JLabel(new ImageIcon(data.getPic()));
			image.setPreferredSize(new Dimension(32, 32));
			add(image);
		}
		add(label);
		setSize(size);
		setMinimumSize(size);
		setMaximumSize(size);
		setBorder(BorderFactory.createLineBorder(Color.BLACK));
	}
	
}
