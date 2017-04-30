package kozossegi.view.elements.maincontent;

import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.util.Calendar;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.Labels.KozossegiFriendState;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiRelation;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiBirthDayPicker;
import kozossegi.view.elements.KozossegiCreateClub;
import kozossegi.view.elements.KozossegiGenderPicker;
import kozossegi.view.elements.KozossegiPictureSelector;
import kozossegi.view.elements.KozossegiPictureSelector.fileScan;
import kozossegi.view.elements.KozossegiProfileAttirbuteExtender;;

public class KozossegiUserProfile extends KozossegiProfile implements ActionListener {

	private static final long serialVersionUID = 5773153401651396607L;
	private KozossegiMainFrame mainFrame;
	private JPanel createClubPanel;
	private JPanel friendsPanel;
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
	
	public KozossegiUserProfile(KozossegiProfileBean profile)  {
		super(profile);
		this.mainFrame = KozossegiMainFrame.getInstance();
		this.profile = profile;
		friendsPanel = new KozossegiFriendManagement(profile);
		createClubPanel = new KozossegiCreateClub(profile);
		contentTabbedPane.addTab(Labels.PROFIL_INFO, infoTab);
		if(profile.getId() == mainFrame.getProfile().getId()){
			contentTabbedPane.addTab(Labels.PROFIL_EDIT, editTab);
			contentTabbedPane.addTab(Labels.PROFIL_CREATE_CLUB, createClubPanel);
		}
		if(profile.getId() != mainFrame.getProfile().getId()){
			contentTabbedPane.addTab(Labels.PROFIL_FRIENDS, friendsPanel);
			
		}
		initTopPanel();
		initInfoPanel();
		initEditPanel();
}	
	
	private void initTopPanel() {
		topPanel.setLayout(new FlowLayout(FlowLayout.CENTER));
		JLabel name = new JLabel(profile.getName());
		name.setFont(new Font("Serif", Font.BOLD, 18));
		topPanel.add(name);
		if(mainFrame.getProfile().getId()!= profile.getId()){
			KozossegiRelation r= mainFrame.getController().getFriendState(mainFrame.getProfile().getId(), profile.getId());
			JButton friendButton;
			if(r.getState()==KozossegiFriendState.NON_FRIENDS)
			{
				friendButton=new JButton(Labels.PROFILE_SEND_FRIEND_REQUEST);
				topPanel.add(friendButton);
				friendButton.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent e) {
						mainFrame.getController().markAsFriend(mainFrame.getProfile().getId(), profile.getId());
						mainFrame.setMainContent(new KozossegiUserProfile(profile));
						mainFrame.update();
					}
				});
			}
			if(r.getState()==KozossegiFriendState.PENDING)
			{
				if(r.getFrom()==mainFrame.getProfile().getId())
				{
					friendButton=new JButton(Labels.PROFILE_PENDING_FRIEND_REQUEST);
					topPanel.add(friendButton);
					friendButton.addActionListener(new ActionListener() {
						public void actionPerformed(ActionEvent e) {
							mainFrame.getController().removeMark(mainFrame.getProfile().getId(), profile.getId());
							mainFrame.setMainContent(new KozossegiUserProfile(profile));
							mainFrame.update();
						}
					});
				}
				else
				{
					friendButton=new JButton(Labels.PROFILE_CONFIRM_FRIEND);
					topPanel.add(friendButton);
					friendButton.addActionListener(new ActionListener() {
						public void actionPerformed(ActionEvent e) {
							mainFrame.getController().confirmFriend(mainFrame.getProfile().getId(), profile.getId());
							mainFrame.setMainContent(new KozossegiUserProfile(profile));
							mainFrame.update();
						}
					});
				}
				
			}
		}
	}
	
	private void initInfoPanel(){
		infoTab.setLayout(new GridLayout(8, 5, 2, 5));
		infoTab.add(new JLabel(Labels.PROFIL_DATE_OF_BIRTH));
		infoTab.add(new JLabel(profile.getDob().toString()));
		infoTab.add(new JLabel(Labels.PROFIL_GENDER));
		if(profile.isGender()){
			infoTab.add(new JLabel(Labels.PROFIL_MAN));
		}
		else{
			infoTab.add(new JLabel(Labels.PROFIL_WOMAN));
		}
		infoTab.add(new JLabel(Labels.PROFIL_RESIDENCE));
		infoTab.add(new JLabel(profile.getResidence()));
		infoTab.add(new JLabel(Labels.PROFIL_SCHOOL));
		JLabel school = new JLabel(profile.getSchool());
		school.setToolTipText(profile.getSchool());
		infoTab.add(school);
		infoTab.add(new JLabel(Labels.PROFIL_HOBBY));
		infoTab.add(new JLabel(profile.getHobby()));
		infoTab.add(new JLabel(Labels.PROFIL_WORK_PLACE));
		infoTab.add(new JLabel(profile.getWorkplace()));
		infoTab.add(new JLabel(Labels.PROFIL_INVITER));
		infoTab.add(new JLabel(mainFrame.getController().getProfile(profile.getInviter()).getName()));
		infoTab.add(new JLabel(Labels.PROFIL_INVITE_CODE));
		infoTab.add(new JLabel(Integer.toString(profile.getId())));
		
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
		
		editTab.setLayout(new GridLayout(8, 5, 2, 5));
		editTab.add(new JLabel(Labels.PROFIL_PICTURE));
		editTab.add(profilePictureButton);
		editTab.add(new JLabel(Labels.PROFIL_DATE_OF_BIRTH));
		editTab.add(birthdayPicker);
		editTab.add(new JLabel(Labels.PROFIL_GENDER));
		editTab.add(genderPicker);
		editTab.add(new JLabel(Labels.PROFIL_RESIDENCE));
		editTab.add(residence);
		editTab.add(new JLabel(Labels.PROFIL_SCHOOL));
		editTab.add(school);
		editTab.add(new JLabel(Labels.PROFIL_HOBBY));
		editTab.add(hobby);
		editTab.add(new JLabel(Labels.PROFIL_WORK_PLACE));
		editTab.add(workPlace);
		editTab.add(resetDefaultButton);
		editTab.add(submitChangesButton);
		
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
		
		
		//RESIDENCE
		
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
		residence.addItem(Labels.PROFIL_ADD_NEW);
		residence.addItemListener(new ItemListener() {
			
			@Override
			public void itemStateChanged(ItemEvent e) {
				if(e.getItem().equals(Labels.PROFIL_ADD_NEW)){
					new KozossegiProfileAttirbuteExtender(mainFrame, Labels.PROFIL_RESIDENCE);
				}
				
			}
		});
		if(!match) 	residence.setSelectedIndex(-1);
		
		//SCHOOL
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
		school.addItem(Labels.PROFIL_ADD_NEW);
		school.addItemListener(new ItemListener() {
			
			@Override
			public void itemStateChanged(ItemEvent e) {
				if(e.getItem().equals(Labels.PROFIL_ADD_NEW)){
					new KozossegiProfileAttirbuteExtender(mainFrame, Labels.PROFIL_SCHOOL);
				}
				
			}
		});
		if(!match) 	school.setSelectedIndex(-1);
		
		//HOBBY
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
		hobby.addItem(Labels.PROFIL_ADD_NEW);
		hobby.addItemListener(new ItemListener() {
			
			@Override
			public void itemStateChanged(ItemEvent e) {
				if(e.getItem().equals(Labels.PROFIL_ADD_NEW)){
					new KozossegiProfileAttirbuteExtender(mainFrame, Labels.PROFIL_HOBBY);
				}
				
			}
		});
		if(!match) 	hobby.setSelectedIndex(-1);
		
		
		//WORKPLACE
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
		workPlace.addItem(Labels.PROFIL_ADD_NEW);
		workPlace.addItemListener(new ItemListener() {
			
			@Override
			public void itemStateChanged(ItemEvent e) {
				if(e.getItem().equals(Labels.PROFIL_ADD_NEW)){
					new KozossegiProfileAttirbuteExtender(mainFrame, Labels.PROFIL_WORK_PLACE);
				}
				
			}
		});
		if(!match) 	workPlace.setSelectedIndex(-1);
		
	}


	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==profilePictureButton){
			//EDIT PROFILE
			KozossegiPictureSelector pictureSelector = new KozossegiPictureSelector();
			if(pictureSelector.isValidImage().equals(fileScan.SUCCES)){
				mainFrame.getController().updateProfilePicture(mainFrame.getProfile().getId(),mainFrame.getController().uploadPicture(pictureSelector.getSelectedFile(), "Profilképek", mainFrame.getProfile().getId()));
				mainFrame.update();
			}
			else if(pictureSelector.isValidImage().equals(fileScan.WRONG_FILE_SIZE)){
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
