package kozossegi.view.elements;

import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiProfileAttirbuteExtender extends JDialog {
	private static final long serialVersionUID = -5999898736903948199L;
	private JTextField attribute;
	private JButton okButton;
	
	public KozossegiProfileAttirbuteExtender(KozossegiMainFrame mainFrame, String tableName) {
		attribute = new JTextField();
		okButton = new JButton(Labels.PROFIL_ADD_ATTRIBUTE);
		setLayout(new GridLayout(3, 5, 1, 5));
		setLocationRelativeTo(mainFrame);
		add(new JLabel("Új " + tableName+ " hozzáadása"));
		add(attribute);
		add(okButton);
		okButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(!attribute.getText().isEmpty()){
					if(true){ // TODO SELECT nev FROM tablename WHERE nev LIKE attribute.getText() ures-e?
						//TODO INSERT INTO tablename attribute.getText();
						JOptionPane.showMessageDialog(mainFrame, Labels.PROFILE_SUCCESSFUL_ADD, Labels.OPTION_PANE_SUCCESS, JOptionPane.INFORMATION_MESSAGE);
						dispose();
					}
					else{
						JOptionPane.showMessageDialog(mainFrame, Labels.EMPTY_PASSWORD, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
					}
				}
				else{
					JOptionPane.showMessageDialog(mainFrame, Labels.EMPTY_PASSWORD, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
				}
				
				
			}
		});
		setVisible(true);
		pack();
	}
}
