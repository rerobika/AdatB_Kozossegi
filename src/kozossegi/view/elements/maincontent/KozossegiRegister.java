package kozossegi.view.elements.maincontent;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Arrays;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiBirthDayPicker;
import kozossegi.view.elements.KozossegiGenderPicker;

public class KozossegiRegister extends JPanel implements ActionListener {
	private static final long serialVersionUID = 2232014980699374689L;
	private KozossegiMainFrame mainFrame;
	private JPanel userDataPanel;
	private JPanel buttonsPanel;
	private KozossegiBirthDayPicker birthPanel;
	private KozossegiGenderPicker genderPanel;
	private JTextField emailField;
	private JTextField nameField;
	private JPasswordField passwordField;
	private JPasswordField passwordConfirmField;
	private JTextField inviterField;
	private JButton registerButton;
	private JButton backButton;
	
	public KozossegiRegister(KozossegiMainFrame mainFrame) {
		this.mainFrame = mainFrame;
		userDataPanel = new JPanel();
		birthPanel = new KozossegiBirthDayPicker();
		genderPanel = new KozossegiGenderPicker();
		buttonsPanel = new JPanel();
		
		emailField = new JTextField();
		nameField = new JTextField();
		passwordField = new JPasswordField();
		passwordConfirmField = new JPasswordField();
		inviterField = new JTextField();
		registerButton = new JButton(Labels.REGISTER_BUTTON);
		backButton = new JButton(Labels.REGISTER_BACK_BUTTON);
		
		
		userDataPanel.setLayout(new GridLayout(7, 10, 2, 10));
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
		userDataPanel.add(new JLabel(Labels.REGISTER_INVITER_CODE));
		userDataPanel.add(inviterField);
		
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
	
	
	public boolean isValidEmailAddress(String email) {
        String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
        java.util.regex.Matcher m = p.matcher(email);
        return m.matches();
	}
	
	
	
	
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==backButton){
			mainFrame.setMainContent(new KozossegiLogin());
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
												if(birthPanel.isValidDate(birthPanel.toString())){
													if(genderPanel.getGenderGroup().getSelection()!=null){
														try{
															if(inviterField.getText().isEmpty() || mainFrame.getController().isValidInviterCode(Integer.parseInt(inviterField.getText()))){
																mainFrame.getController().addProfile(new KozossegiProfileBean(nameField.getText(),0,birthPanel.getBirthDate(),genderPanel.getGender(),"","","","",emailField.getText(),new String(passwordField.getPassword()),inviterField.getText().isEmpty()?0:Integer.parseInt(inviterField.getText()),Labels.FILESERVER_PATH+"kep2.jpg"));
																JOptionPane.showMessageDialog(mainFrame, Labels.SUCCESSFUL_REGISTRATION, Labels.OPTION_PANE_SUCCESS, JOptionPane.INFORMATION_MESSAGE);
																mainFrame.setMainContent(new KozossegiLogin());
															}
															else{
																JOptionPane.showMessageDialog(mainFrame, Labels.NOT_VALID_INVITER_CODE, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
															}
														}catch (NumberFormatException nfe) {
															nfe.printStackTrace();
														}
														
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
