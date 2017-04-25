package kozossegi.view.elements;

import java.awt.BorderLayout;

import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.bean.KozossegiProfileNameBean;

public class KozossegiProfileName extends JPanel {
	KozossegiProfileNameBean data;

	public KozossegiProfileName(KozossegiProfileNameBean data) {
		super();
		this.data = data;
		add(new JLabel(data.getName()));
	}

	public KozossegiProfileNameBean getData() {
		return data;
	}

	public void setData(KozossegiProfileNameBean data) {
		this.data = data;
	}
}
