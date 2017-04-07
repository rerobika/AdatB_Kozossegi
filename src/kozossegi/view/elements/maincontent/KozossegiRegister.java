package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Arrays;
import java.util.Date;

import javax.swing.ButtonGroup;
import javax.swing.ButtonModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JRadioButton;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.view.KozossegiMainFrame;

public class KozossegiRegister extends JPanel implements ActionListener {
	private static final long serialVersionUID = 2232014980699374689L;
	private KozossegiMainFrame mainFrame;
	private JPanel userDataPanel;
	private JPanel buttonsPanel;
	private JPanel birthPanel;
	private JPanel genderPanel;
	private JTextField emailField;
	private JTextField nameField;
	private JPasswordField passwordField;
	private JPasswordField passwordConfirmField;
	private JComboBox<Integer> birthYear;
	private JComboBox<String> birthMonth;
	private JComboBox<Integer> birthDay;
	private ButtonGroup genderGroup;
	private JRadioButton maleButton;
	private JRadioButton femaleButton;
	private JButton registerButton;
	private JButton backButton;
	
	public KozossegiRegister(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		userDataPanel = new JPanel();
		birthPanel = new JPanel();
		genderPanel = new JPanel();
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
		maleButton = new JRadioButton(Labels.REGISTER_MALE_BUTTON);
		femaleButton = new JRadioButton(Labels.REGISTER_FEMALE_BUTTON);
		genderGroup = new ButtonGroup();
		
		
		userDataPanel.setLayout(new GridLayout(6, 10, 2, 10));
		userDataPanel.add(new JLabel(Labels.NAME));
		userDataPanel.add(nameField);
		userDataPanel.add(new JLabel(Labels.EMAIL_ADDRESS));
		userDataPanel.add(emailField);		
		userDataPanel.add(new JLabel(Labels.PASSWORD));
		userDataPanel.add(passwordField);
		userDataPanel.add(new JLabel(Labels.REGISTER_CONFIRM_PASSWORD));
		userDataPanel.add(passwordConfirmField);
		userDataPanel.add(new JLabel(Labels.REGISTER_BIRTH_DATE));
		userDataPanel.add(birthPanel);
		userDataPanel.add(new JLabel(Labels.REGISTER_GENDER));
		userDataPanel.add(genderPanel);
			
		birthPanel.setLayout(new FlowLayout());
		birthPanel.add(birthYear);
		birthPanel.add(birthMonth);
		birthPanel.add(birthDay);
		initBirthPanel();
		
		buttonsPanel.setLayout(new FlowLayout());
		buttonsPanel.add(backButton);
		buttonsPanel.add(registerButton);
		
		genderGroup.add(maleButton);
		maleButton.setActionCommand(Labels.REGISTER_MALE_BUTTON);
		genderGroup.add(femaleButton);
		femaleButton.setActionCommand(Labels.REGISTER_FEMALE_BUTTON);
		
		genderPanel.setLayout(new FlowLayout());
		genderPanel.add(maleButton);
		genderPanel.add(femaleButton);
		
		registerButton.addActionListener(this);
		backButton.addActionListener(this);
		maleButton.addActionListener(this);
		femaleButton.addActionListener(this);
		
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
		return Integer.toString((Integer)birthYear.getSelectedItem())+"-"+(birthMonth.getSelectedIndex()+1) +"-"+(birthDay.getSelectedIndex()+1);
	}
	
	private boolean isValidDate(String s) {
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    sdf.setLenient(false);
	    return sdf.parse(s, new ParsePosition(0)) != null;
	}
	public boolean isValidEmailAddress(String email) {
        String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
        java.util.regex.Matcher m = p.matcher(email);
        return m.matches();
	}
	
	public boolean isMale(){
		if(genderGroup.getSelection().getActionCommand().equals(maleButton.getActionCommand())) return true;
		return false;
	}
	
	
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==backButton){
			mainFrame.selectActivePanel(new KozossegiLogin(mainFrame));
		}
		if(e.getSource()==registerButton){
			if(!nameField.getText().isEmpty()){
				if(nameField.getText().length()>=5 && nameField.getText().length()<=30){
					if(!emailField.getText().isEmpty()){
						if(isValidEmailAddress(emailField.getText())){
							if(mainFrame.getController().isUniqueEmail(emailField.getText())){
								if(passwordField.getPassword().length!=0){
									if(passwordField.getPassword().length>=5 && passwordField.getPassword().length<=30){
										if(passwordConfirmField.getPassword().length!=0){
											if(Arrays.equals(passwordField.getPassword(), passwordConfirmField.getPassword())){
												if(isValidDate(getBirthDate())){
													if(genderGroup.getSelection()!=null){
														System.out.println("Valid user data");
														//TODO register user with valid data
													}
													else{
														JOptionPane.showMessageDialog(mainFrame, Labels.NO_GENDER_SELECTED, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
													}
												}
												else{
													JOptionPane.showMessageDialog(mainFrame, Labels.NOT_VALID_DATE, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
												}
											}
											else{
												JOptionPane.showMessageDialog(mainFrame, Labels.NOT_MATCHING_PASSWORDS, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
											}
										}
										else{
											JOptionPane.showMessageDialog(mainFrame, Labels.EMPTY_CONFIRMATION_PASSWORD, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
										}
									}
									else{
										JOptionPane.showMessageDialog(mainFrame, Labels.PASSWORD_LENGTH_ERROR, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
									}
								}
								else{
									JOptionPane.showMessageDialog(mainFrame, Labels.EMPTY_PASSWORD, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
								}
							}
							else{
								JOptionPane.showMessageDialog(mainFrame, Labels.EXISTING_EMAIL, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
							}
						}
						else{
							JOptionPane.showMessageDialog(mainFrame, Labels.NOT_VALID_EMAIL, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
						}					
					}
					else{
						JOptionPane.showMessageDialog(mainFrame, Labels.EMPTY_EMAIL, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
					}
				}
				else{
					JOptionPane.showMessageDialog(mainFrame, Labels.NAME_LENGTH_ERROR, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
				}
			}
			else{
				JOptionPane.showMessageDialog(mainFrame, Labels.EMPTY_NAME, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
			}
		}			
	}
}
