package kozossegi.view.elements;

import java.awt.Color;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiSearchBox extends JPanel implements ActionListener{
	private static final long serialVersionUID = 6669063033260433386L;
	private KozossegiMainFrame mainFrame;
	private JTextField searchField;
	private JButton searchButton;
	
	public KozossegiSearchBox(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		searchField = new JTextField();
		searchButton = new JButton(Labels.SEARCH_BUTON);
		
		setBorder(BorderFactory.createLineBorder(Color.black));
		setLayout(new GridLayout(1, 3));
		add(new JLabel(Labels.SEARCH_TEXT));
		add(searchField);
		add(searchButton);		
		
		searchButton.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==searchButton){
			if(!searchField.getText().isEmpty()){
			//TODO Search feature
			}
			else{
				JOptionPane.showMessageDialog(mainFrame, Labels.SEARCH_ERROR, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
			}
		}
		
		
	}

}
