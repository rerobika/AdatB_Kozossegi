package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.net.URL;

import javax.imageio.ImageIO;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileMiniature;
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
		userDataPanel.add(new JLabel(Labels.EMAIL_ADDRESS));
		userDataPanel.add(emailField);
		userDataPanel.add(new JLabel(Labels.PASSWORD));
		userDataPanel.add(passwordField);
		
		buttonsPanel.setLayout(new FlowLayout());
		buttonsPanel.add(registerButton);
		buttonsPanel.add(loginButton);		
		
		loginButton.addActionListener(this);
		registerButton.addActionListener(this);
	}


	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==registerButton){
			mainFrame.setMainContent(new KozossegiRegister(mainFrame));
		}
		if(e.getSource()==loginButton){
		/*	if(!emailField.getText().isEmpty()){
				if(passwordField.getPassword().length!=0){
					System.out.println("Input fields are not empty!");*/
					//TODO make ProfileMiniature with real data from DB					
					
					mainFrame.initializeUserData();
					mainFrame.initializeViewElements();
					mainFrame.setMainContent(new KozossegiNewsFeed(mainFrame));
				/*}
				else{
					JOptionPane.showMessageDialog(mainFrame, Labels.EMPTY_PASSWORD, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
				}
			}
			else{
				JOptionPane.showMessageDialog(mainFrame, Labels.EMPTY_EMAIL, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
			}*/
		}
	}
}
