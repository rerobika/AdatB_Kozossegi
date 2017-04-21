package kozossegi.view.elements.maincontent;

import java.awt.GridLayout;

import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiBirthDayPicker;

public class KozossegiUserProfile extends KozossegiProfile {

	private static final long serialVersionUID = 5773153401651396607L;
	private JPanel createClubPanel;
	protected JPanel friendsPanel;
	private KozossegiProfileBean profile;
	
	public KozossegiUserProfile(KozossegiMainFrame mainFrame,KozossegiProfileBean profile)  {
		super(profile);
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
		editPanel.setLayout(new GridLayout(8, 5, 2, 5));
		editPanel.add(new JLabel(Labels.PROFIL_DATE_OF_BIRTH));
		editPanel.add(new KozossegiBirthDayPicker());
		editPanel.add(new JLabel(Labels.PROFIL_GENDER));
		editPanel.add(new JLabel("asd"));
		editPanel.add(new JLabel(Labels.PROFIL_RESIDENCE));
		editPanel.add(new JComboBox<String>());
		editPanel.add(new JLabel(Labels.PROFIL_SCHOOL));
		editPanel.add(new JComboBox<String>());
		editPanel.add(new JLabel(Labels.PROFIL_HOBBY));
		editPanel.add(new JComboBox<String>());
		editPanel.add(new JLabel(Labels.PROFIL_WORK_PLACE));
		editPanel.add(new JComboBox<String>());
		editPanel.add(new JLabel(Labels.PROFIL_INVITER));
		editPanel.add(new JLabel(mainFrame.getController().getProfile(profile.getInviter()).getName()));
		
		
	}
	
	

}
