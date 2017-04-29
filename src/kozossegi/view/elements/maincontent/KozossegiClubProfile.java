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
import kozossegi.view.elements.KozossegiClubTagManagement;

public class KozossegiClubProfile extends KozossegiProfile {

	private static final long serialVersionUID = 5773153401651396607L;
	private KozossegiMainFrame mainFrame;
	private KozossegiClubBean club;
	protected JPanel tagPanel;
	
	public KozossegiClubProfile(KozossegiClubBean club)  {
		super(club);
		this.mainFrame = KozossegiMainFrame.getInstance();
		this.club = club;
		tagPanel = new KozossegiClubTagManagement(club);
		contentTabbedPane.addTab(Labels.PROFIL_INFO, infoPanel);
		contentTabbedPane.addTab(Labels.PROFIL_CLUB_TAGS, tagPanel);
		if(mainFrame.getProfile().getId() == club.getOwnerId()){
			contentTabbedPane.addTab(Labels.PROFIL_EDIT, editPanel);
		}
		
		initInfoPanel();
		initTopPanel();
		initEditPanel();
	}

private void initEditPanel() {
	JPanel res = new JPanel(new GridLayout(0, 2));
	
	res.add(new JLabel(Labels.CLUB_DESCRIPTION));
	JTextArea desc = new JTextArea(club.getDesc());
	desc.setLineWrap(true);
	res.add(desc);
	JButton reset = new JButton(Labels.PROFIL_RESET_DEFAULT);
	JButton ok = new JButton(Labels.PROFIL_SUBMIT_CHANGES);
	res.add(reset);
	res.add(ok);
	reset.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent e) {
			desc.setText(club.getDesc());
			editPanel.revalidate();
			editPanel.repaint();
		}
	});
	ok.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent e) {
			if(!desc.getText().isEmpty()){
				mainFrame.getController().updateClubDesc(desc.getText(),club.getId());
				JOptionPane.showMessageDialog(mainFrame, Labels.SUCCESSFUL_UPDATE, Labels.OPTION_PANE_SUCCESS, JOptionPane.INFORMATION_MESSAGE);
				mainFrame.setClub(mainFrame.getController().getClub(club.getId()));
				mainFrame.setMainContent(new KozossegiClubProfile(mainFrame.getClub()));
			}
			else{
				JOptionPane.showMessageDialog(mainFrame, Labels.PROFILE_EMPTY_ADD, Labels.OPTION_PANE_ERROR, JOptionPane.ERROR_MESSAGE);
			}
		}
	});
	
	editPanel.add(res);
		
	
}

	private void initTopPanel() {
		topPanel.setLayout(new FlowLayout(FlowLayout.CENTER));
		JLabel name = new JLabel(profile.getName());
		topPanel.add(name);
		if(mainFrame.getProfile().getId() != club.getOwnerId()){
			boolean tag = false;
			for(KozossegiProfileMiniatureBean c : club.getMembers()){
				if(c.getId() == mainFrame.getProfile().getId()){
					tag = true;
				}
			}
			
			
			if(!tag){
				JButton joinClub = new JButton(Labels.JOIN_CLUB_BUTTON);
				topPanel.add(joinClub);
				joinClub.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					mainFrame.getController().joinClub(mainFrame.getProfile().getId(), club.getId());
					JOptionPane.showMessageDialog(mainFrame, Labels.SUCCESSFUL_JOIN, Labels.OPTION_PANE_SUCCESS, JOptionPane.INFORMATION_MESSAGE);
					mainFrame.setMainContent(new KozossegiClubProfile(club));					
				}
			});
			}
			
		}
		
	}

	private void initInfoPanel() {
		infoPanel.setLayout(new GridLayout(3, 2));
		infoPanel.add(new JLabel(Labels.CLUB_OWNER_NAME));
		infoPanel.add(new JLabel(mainFrame.getController().getProfile(club.getOwnerId()).getName()));
		infoPanel.add(new JLabel(Labels.CLUB_DESCRIPTION));
		JTextArea description = new JTextArea(club.getDesc());
		description.setLineWrap(true);
		infoPanel.add(description);
		infoPanel.add(new JLabel(Labels.CLUB_NUMBER_OF_TAGS));
		infoPanel.add(new JLabel(Integer.toString(club.getMembers().size()+1)));
	}

}
