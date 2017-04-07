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

public class KozossegiLogin extends JPanel implements ActionListener {

	private static final long serialVersionUID = -1409136548592950286L;
	private KozossegiMainFrame mainFrame;
	private JPanel userDataPanel;
	private JPanel buttonsPanel;
	private JTextField emailField;
	private JPasswordField passwordField;
	private JButton loginButton;
	private JButton registerButton;

	
	public KozossegiLogin(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		userDataPanel = new JPanel();
		buttonsPanel = new JPanel();
		emailField = new JTextField();
		passwordField = new JPasswordField();
		loginButton = new JButton(Labels.LOGIN_BUTTON);
		registerButton = new JButton(Labels.LOGIN_REGISTER_BUTTON);
		
		setName("loginPanel");
		setBackground(Color.GRAY);
		setLayout(new BorderLayout());
		add(userDataPanel, BorderLayout.CENTER);
		add(buttonsPanel, BorderLayout.SOUTH);
		
		userDataPanel.setLayout(new GridLayout(2, 20, 2, 20));
		userDataPanel.add(new JLabel(Labels.LOGIN_EMAIL));
		userDataPanel.add(emailField);
		userDataPanel.add(new JLabel(Labels.LOGIN_PASSWORD));
		userDataPanel.add(passwordField);
		
		buttonsPanel.setLayout(new FlowLayout());
		buttonsPanel.add(registerButton);
		buttonsPanel.add(loginButton);		
		
		loginButton.addActionListener(this);
		registerButton.addActionListener(this);
	}


	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==registerButton){
			mainFrame.selectActivePanel(new KozossegiRegister(mainFrame));
			
		}	
	}
}
