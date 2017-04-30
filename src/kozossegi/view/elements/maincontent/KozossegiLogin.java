package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileNameBean;
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

	
	public KozossegiLogin() {
		mainFrame = KozossegiMainFrame.getInstance();
		userDataPanel = new JPanel();
		buttonsPanel = new JPanel();
		emailField = new JTextField("VinczeKrisztina@teleworm.us");
		passwordField = new JPasswordField("riev5Aiwoovo");
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
			KozossegiMainFrame.getInstance().setMainContent(new KozossegiRegister(KozossegiMainFrame.getInstance()));
		}
		if(e.getSource()==loginButton){
			if(!emailField.getText().isEmpty()){
				if(passwordField.getPassword().length!=0){	
					KozossegiProfileNameBean login=KozossegiMainFrame.getInstance().getController().login(emailField.getText(), new String(passwordField.getPassword()));
					if(login!=null)
					{
						KozossegiMainFrame.getInstance().login(login.getId());
					}
					else
					{
						JOptionPane.showMessageDialog(mainFrame, Labels.INVALID_LOGIN_INFORMATION, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
					}
				}
				else
				{
					JOptionPane.showMessageDialog(mainFrame, Labels.EMPTY_PASSWORD, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
				}
			}
			else
			{
				JOptionPane.showMessageDialog(mainFrame, Labels.EMPTY_EMAIL, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
			}
		}
	}
}
