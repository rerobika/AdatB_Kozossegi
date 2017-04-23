package kozossegi.view.elements.maincontent;

import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Calendar;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.dao.KozossegiImageUploader;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiBirthDayPicker;
import kozossegi.view.elements.KozossegiGenderPicker;
import kozossegi.view.elements.KozossegiProfilePictureSelecter;
import kozossegi.view.elements.KozossegiProfilePictureSelecter.fileScan;;

public class KozossegiUserProfile extends KozossegiProfile implements ActionListener {

	private static final long serialVersionUID = 5773153401651396607L;
	private KozossegiMainFrame mainFrame;
	private JPanel createClubPanel;
	protected JPanel friendsPanel;
	private KozossegiProfileBean profile;
	private JButton resetDefaultButton;
	private JButton submitChangesButton;
	private KozossegiBirthDayPicker birthdayPicker;
	private KozossegiGenderPicker genderPicker;
	private JButton profilePictureButton;
	private JComboBox<String> residence;
	private JComboBox<String> school;
	private JComboBox<String> hobby;
	private JComboBox<String> workPlace;
	
	public KozossegiUserProfile(KozossegiMainFrame mainFrame,KozossegiProfileBean profile)  {
		super(profile);
		this.mainFrame = mainFrame;
		this.profile = profile;
		friendsPanel = new JPanel();
		createClubPanel = new JPanel();
		contentTabbedPane.addTab(Labels.PROFIL_FRIENDS, friendsPanel);
		if(profile.getId() == mainFrame.getProfileMiniature().getId()){
			contentTabbedPane.addTab(Labels.PROFIL_EDIT, editPanel);
			contentTabbedPane.addTab(Labels.PROFIL_CREATE_CLUB, createClubPanel);
		}
		
		initInfoPanel();
		initEditPanel();
	}
	

	private void initInfoPanel(){
		infoPanel.setLayout(new GridLayout(8, 5, 2, 5));
		infoPanel.add(new JLabel(Labels.PROFIL_DATE_OF_BIRTH));
		infoPanel.add(new JLabel(profile.getDob().toString()));
		infoPanel.add(new JLabel(Labels.PROFIL_GENDER));
		if(profile.isGender()){
			infoPanel.add(new JLabel(Labels.PROFIL_MAN));
		}
		else{
			infoPanel.add(new JLabel(Labels.PROFIL_WOMAN));
		}
		infoPanel.add(new JLabel(Labels.PROFIL_RESIDENCE));
		infoPanel.add(new JLabel(profile.getResidence()));
		infoPanel.add(new JLabel(Labels.PROFIL_SCHOOL));
		JLabel school = new JLabel(profile.getSchool());
		school.setToolTipText(profile.getSchool());
		infoPanel.add(school);
		infoPanel.add(new JLabel(Labels.PROFIL_HOBBY));
		infoPanel.add(new JLabel(profile.getHobby()));
		infoPanel.add(new JLabel(Labels.PROFIL_WORK_PLACE));
		infoPanel.add(new JLabel(profile.getWorkplace()));
		infoPanel.add(new JLabel(Labels.PROFIL_INVITER));
		infoPanel.add(new JLabel(mainFrame.getController().getProfile(profile.getInviter()).getName()));
		infoPanel.add(new JLabel(Labels.PROFIL_INVITE_CODE));
		infoPanel.add(new JLabel(Integer.toString(profile.getId())));
		
	}
	
	private void initEditPanel(){
		resetDefaultButton = new JButton(Labels.PROFIL_RESET_DEFAULT);
		submitChangesButton = new JButton(Labels.PROFIL_SUBMIT_CHANGES);
		profilePictureButton = new JButton(Labels.PROFIL_UPLOAD_PICTURE);
		resetDefaultButton.addActionListener(this);
		submitChangesButton.addActionListener(this);
		profilePictureButton.addActionListener(this);
		birthdayPicker = new KozossegiBirthDayPicker();
		genderPicker = new KozossegiGenderPicker();		
		
		residence = new JComboBox<String>();
		school = new JComboBox<String>();
		hobby = new JComboBox<String>();
		workPlace = new JComboBox<String>();
			
		initEditPanelComponents();
		
		editPanel.setLayout(new GridLayout(8, 5, 2, 5));
		editPanel.add(new JLabel(Labels.PROFIL_PICTURE));
		editPanel.add(profilePictureButton);
		editPanel.add(new JLabel(Labels.PROFIL_DATE_OF_BIRTH));
		editPanel.add(birthdayPicker);
		editPanel.add(new JLabel(Labels.PROFIL_GENDER));
		editPanel.add(genderPicker);
		editPanel.add(new JLabel(Labels.PROFIL_RESIDENCE));
		editPanel.add(residence);
		editPanel.add(new JLabel(Labels.PROFIL_SCHOOL));
		editPanel.add(school);
		editPanel.add(new JLabel(Labels.PROFIL_HOBBY));
		editPanel.add(hobby);
		editPanel.add(new JLabel(Labels.PROFIL_WORK_PLACE));
		editPanel.add(workPlace);
		editPanel.add(resetDefaultButton);
		editPanel.add(submitChangesButton);
		
	}
	
	private void initEditPanelComponents()
	{
		Calendar cal = Calendar.getInstance();
	    cal.setTime(profile.getDob());    
		
	    birthdayPicker.getBirthYear().setSelectedIndex(birthdayPicker.getCurrentYear()-cal.get(Calendar.YEAR));
	    birthdayPicker.getBirthMonth().setSelectedIndex(cal.get(Calendar.MONTH));
		birthdayPicker.getBirthDay().setSelectedIndex(cal.get(Calendar.DAY_OF_MONTH)-1);
		
		if(profile.isGender()){
			genderPicker.getMaleButton().setSelected(true);
		}
		else{
			genderPicker.getFemaleButton().setSelected(true);
		}
		
		
		
		
		int i = 0;
		boolean match= false;
		for(String s : mainFrame.getController().getResidences()){
			residence.addItem(s);
			if (!match && s.equals(profile.getResidence())){
				residence.setSelectedIndex(i);
				match=true;
			}
			i++;
		}
		if(!match) 	residence.setSelectedIndex(-1);
		
		i = 0;
		match= false;
		for(String s : mainFrame.getController().getSchools()){
			school.addItem(s);
			if (!match && s.equals(profile.getSchool())){
				school.setSelectedIndex(i);
				match=true;
			}
			i++;
		}
		if(!match) 	school.setSelectedIndex(-1);
		
		i = 0;
		match= false;
		for(String s : mainFrame.getController().getHobbies()){
			hobby.addItem(s);
			if (!match && s.equals(profile.getHobby())){
				hobby.setSelectedIndex(i);
				match=true;
			}
			i++;
		}
		if(!match) 	hobby.setSelectedIndex(-1);
		
		i = 0;
		match= false;
		for(String s : mainFrame.getController().getWorkPlaces()){
			workPlace.addItem(s);
			if (!match && s.equals(profile.getWorkplace())){
				workPlace.setSelectedIndex(i);
				match=true;
			}
			i++;
		}
		if(!match) 	workPlace.setSelectedIndex(-1);
		
	}


	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==profilePictureButton){
			KozossegiProfilePictureSelecter pictureSelecter = new KozossegiProfilePictureSelecter();
			if(pictureSelecter.isValidImage().equals(fileScan.SUCCES)){
				KozossegiImageUploader.upload(pictureSelecter.getSelectedFile(), pictureSelecter.getName());
				mainFrame.getController().updateProfilePicture(KozossegiImageUploader.genName, Labels.PROFIL_PICTURE_ALBUM, profile.getId());
				JOptionPane.showMessageDialog(mainFrame, Labels.SUCCESSFUL_PROFILE_PICTURE_UPDATE, Labels.OPTION_PANE_SUCCESS, JOptionPane.INFORMATION_MESSAGE);
			}
			else if(pictureSelecter.isValidImage().equals(fileScan.WRONG_FILE_SIZE)){
				JOptionPane.showMessageDialog(mainFrame, Labels.PROFIL_EDIT_WRONG_SIZE, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
			}
			else{
				JOptionPane.showMessageDialog(mainFrame, Labels.PROFIL_NOT_COMPATIBLE_EXTENSION, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
			}
		}
		if(e.getSource()==resetDefaultButton){
			initEditPanelComponents();
			repaint();
			revalidate();
		}		
	}
	
	

}
