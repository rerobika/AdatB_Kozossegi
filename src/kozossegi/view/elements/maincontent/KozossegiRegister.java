package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiRegister extends JPanel implements ActionListener {
	private static final long serialVersionUID = 2232014980699374689L;
	private KozossegiMainFrame mainFrame;
	private JPanel userDataPanel;
	private JPanel buttonsPanel;
	private JTextField emailField;
	private JTextField nameField;
	private JPasswordField passwordField;
	private JPasswordField passwordConfirmField;
	private JButton registerButton;
	private JButton backButton;
	
	public KozossegiRegister(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		userDataPanel = new JPanel();
		buttonsPanel = new JPanel();
		emailField = new JTextField();
		nameField = new JTextField();
		passwordField = new JPasswordField();
		passwordConfirmField = new JPasswordField();
		registerButton = new JButton(Labels.REGISTER_BUTTON);
		backButton = new JButton(Labels.REGISTER_BACK_BUTTON);
		
		userDataPanel.setLayout(new GridLayout(4, 20, 2, 20));
		userDataPanel.add(new JLabel(Labels.REGISTER_NAME));
		userDataPanel.add(nameField);
		userDataPanel.add(new JLabel(Labels.REGISTER_EMAIL));
		userDataPanel.add(emailField);		
		userDataPanel.add(new JLabel(Labels.REGISTER_PASSWORD));
		userDataPanel.add(passwordField);
		userDataPanel.add(new JLabel(Labels.REGISTER_CONFIRM_PASSWORD));
		userDataPanel.add(passwordConfirmField);
			
		buttonsPanel.setLayout(new FlowLayout());
		buttonsPanel.add(backButton);
		buttonsPanel.add(registerButton);
		
		
		registerButton.addActionListener(this);
		backButton.addActionListener(this);
		
		setName("registerPanel");
		setBackground(Color.GRAY);
		setLayout(new BorderLayout());
		add(userDataPanel, BorderLayout.CENTER);
		add(buttonsPanel, BorderLayout.SOUTH);
	}

	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==backButton){
			mainFrame.selectActivePanel(new KozossegiLogin(mainFrame));
			
		}	
		
	}
}
