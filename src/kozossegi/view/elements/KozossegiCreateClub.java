package kozossegi.view.elements;

import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Date;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClubBean;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiCreateClub extends JPanel {
	private static final long serialVersionUID = -2226978502052293847L;
	private JTextField clubNameField;
	private JTextArea clubDescriptionArea;
	private JButton clubResetButton; 
	private JButton clubCreateButton; 
	public KozossegiCreateClub(KozossegiProfileBean profile) {
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		clubNameField = new JTextField();
		clubDescriptionArea = new JTextArea(2, 20);
		clubDescriptionArea.setLineWrap(true);
		clubDescriptionArea.setWrapStyleWord(true);
		clubResetButton = new JButton(Labels.PROFILE_CREATE_CLUB_RESET_BUTTON);
		clubCreateButton = new JButton(Labels.PROFILE_CREATE_CLUB_BUTTON);
		JPanel fields = new JPanel();
		fields.setLayout(new GridLayout(0,2,5,5));
		
		JPanel buttons = new JPanel(new FlowLayout(FlowLayout.CENTER));
		fields.add(new JLabel(Labels.PROFILE_CREATE_CLUB_NAME));
		fields.add(clubNameField);
		fields.add(new JLabel(Labels.PROFILE_CREATE_CLUB_DESCRIPTION));
		fields.add(clubDescriptionArea);
		fields.setMaximumSize(fields.getPreferredSize());
		buttons.add(clubResetButton);
		buttons.add(clubCreateButton);
		add(fields);
		add(buttons);
		setMaximumSize(getPreferredSize());
		clubCreateButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				KozossegiMainFrame.getInstance().getController().addClub(new KozossegiClubBean(clubNameField.getText(),clubDescriptionArea.getText(),profile.getId(),new Date()));
				KozossegiMainFrame.getInstance().update();
			}
		});
		clubResetButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				clubDescriptionArea.setText("");
				clubNameField.setText("");
			}
		});
	}

}
