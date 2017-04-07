package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

import javax.swing.JButton;
import javax.swing.JComboBox;
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
	private JPanel birthPanel;
	private JTextField emailField;
	private JTextField nameField;
	private JPasswordField passwordField;
	private JPasswordField passwordConfirmField;
	private JComboBox<Integer> birthYear;
	private JComboBox<String> birthMonth;
	private JComboBox<Integer> birthDay;
	private JButton registerButton;
	private JButton backButton;
	
	public KozossegiRegister(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		userDataPanel = new JPanel();
		birthPanel = new JPanel();
		buttonsPanel = new JPanel();
		
		emailField = new JTextField();
		nameField = new JTextField();
		passwordField = new JPasswordField();
		passwordConfirmField = new JPasswordField();
		birthYear = new JComboBox<Integer>();
		birthMonth = new JComboBox<String>();
		birthDay = new JComboBox<Integer>();
		registerButton = new JButton(Labels.REGISTER_BUTTON);
		backButton = new JButton(Labels.REGISTER_BACK_BUTTON);
		
		userDataPanel.setLayout(new GridLayout(5, 20, 2, 20));
		userDataPanel.add(new JLabel(Labels.REGISTER_NAME));
		userDataPanel.add(nameField);
		userDataPanel.add(new JLabel(Labels.REGISTER_EMAIL));
		userDataPanel.add(emailField);		
		userDataPanel.add(new JLabel(Labels.REGISTER_PASSWORD));
		userDataPanel.add(passwordField);
		userDataPanel.add(new JLabel(Labels.REGISTER_CONFIRM_PASSWORD));
		userDataPanel.add(passwordConfirmField);
		userDataPanel.add(new JLabel(Labels.REGISTER_BIRTH_DATE));
		userDataPanel.add(birthPanel);
			
		birthPanel.setLayout(new FlowLayout());
		birthPanel.add(birthYear);
		birthPanel.add(birthMonth);
		birthPanel.add(birthDay);
		initBirthPanel();
		
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
	
	private void initBirthPanel(){
		Date date = new Date();
		LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		int currentYear  = localDate.getYear();
		for(int i = currentYear; i>1900;i--){
			birthYear.addItem(i);
		}
		for(int i = 0; i<12;i++){
			birthMonth.addItem(Labels.REGISTER_MONTH_NAMES.get(i));
		}
		
		for(int i = 1; i<=31;i++){
			birthDay.addItem(i);
		}
		birthYear.setSelectedIndex(18);
	}
	
	
	private String getBirthDate(){
		return Integer.toString((Integer)birthYear.getSelectedItem())+"-"+birthMonth.getSelectedIndex()+1 +"-"+birthDay.getSelectedIndex()+1;
	}

	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==backButton){
			System.out.println(getBirthDate());
			mainFrame.selectActivePanel(new KozossegiLogin(mainFrame));
			
		}	
		
	}
}
