package kozossegi.view.elements.maincontent;

import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import kozossegi.Labels;
import kozossegi.bean.KozossegiClubBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiClubMemberManagement;

public class KozossegiClubProfile extends KozossegiProfile {

	private static final long serialVersionUID = 5773153401651396607L;
	private KozossegiMainFrame mainFrame;
	private KozossegiClubBean club;
	public KozossegiClubProfile(KozossegiClubBean club)  {
		super(club);
		this.mainFrame = KozossegiMainFrame.getInstance();
		this.club = club;
		contentTabbedPane.addTab(Labels.PROFILE_INFO, infoTab);
		contentTabbedPane.addTab(Labels.PROFILE_CLUB_TAGS, new KozossegiClubMemberManagement(club));
		if(mainFrame.getProfile().getId() == club.getOwnerId()){
			contentTabbedPane.addTab(Labels.PROFILE_EDIT, editTab);
		}
		
		initInfoPanel();
		initTopPanel();
		initEditPanel();
	}

private void initEditPanel() {
	JPanel editPanel = new JPanel(new GridLayout(0, 2));
	editPanel.add(new JLabel(Labels.CLUB_DESCRIPTION));
	JTextArea description = new JTextArea(club.getDesc(),3,20);
	description.setLineWrap(true);
	editPanel.add(description);
	JButton reset = new JButton(Labels.PROFILE_RESET_DEFAULT);
	JButton ok = new JButton(Labels.PROFILE_SUBMIT_CHANGES);
	editPanel.add(reset);
	editPanel.add(ok);
	reset.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent e) {
			description.setText(club.getDesc());
		}
	});
	ok.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent e) {
			if(!description.getText().isEmpty()){
				mainFrame.getController().updateClubDesc(description.getText(),club.getId());
				JOptionPane.showMessageDialog(mainFrame, Labels.SUCCESSFUL_UPDATE, Labels.OPTION_PANE_SUCCESS, JOptionPane.INFORMATION_MESSAGE);
				mainFrame.setMainContent(new KozossegiClubProfile(mainFrame.getController().getClub(club.getId())));
			}
			else{
				JOptionPane.showMessageDialog(mainFrame, Labels.PROFILE_EMPTY_ADD, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
			}
		}
	});
	editTab.add(editPanel);
}

	private void initTopPanel() {
		topPanel.setLayout(new FlowLayout(FlowLayout.CENTER));
		JLabel name = new JLabel(profile.getName());
		topPanel.add(name);
		if(mainFrame.getProfile().getId() != club.getOwnerId()){
			boolean member = false;
			for(KozossegiProfileMiniatureBean c : club.getMembers()){
				if(c.getId() == mainFrame.getProfile().getId()){
					member = true;
				}
			}
			if(!member){
				JButton joinClub = new JButton(Labels.JOIN_CLUB_BUTTON);
				topPanel.add(joinClub);
				joinClub.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					mainFrame.getController().joinClub(mainFrame.getProfile().getId(), club.getId());
					JOptionPane.showMessageDialog(mainFrame, Labels.SUCCESSFUL_JOIN, Labels.OPTION_PANE_SUCCESS, JOptionPane.INFORMATION_MESSAGE);
					mainFrame.setMainContent(new KozossegiClubProfile(mainFrame.getController().getClub(club.getId())));		
					mainFrame.update();
				}
			});
			}
			
		}
		
	}

	private void initInfoPanel() {
		JPanel infoPanel = new JPanel(new GridLayout(0, 2));
		infoPanel.add(new JLabel(Labels.CLUB_OWNER_NAME));
		infoPanel.add(new JLabel(mainFrame.getController().getProfile(club.getOwnerId()).getName()));
		infoPanel.add(new JLabel(Labels.CLUB_DESCRIPTION));
		JTextArea description = new JTextArea(club.getDesc(),3,20);
		description.setLineWrap(true);
		description.setWrapStyleWord(true);
		infoPanel.add(description);
		infoPanel.add(new JLabel(Labels.CLUB_NUMBER_OF_TAGS));
		infoPanel.add(new JLabel(Integer.toString(club.getMembers().size()+1)));
		infoPanel.setMaximumSize(infoPanel.getPreferredSize());
		infoTab.add(infoPanel);
	}

}
