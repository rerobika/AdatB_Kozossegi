package kozossegi.view.elements;

import java.awt.FlowLayout;

import javax.swing.ButtonGroup;
import javax.swing.JPanel;
import javax.swing.JRadioButton;

import kozossegi.Labels;

public class KozossegiGenderPicker extends JPanel{
	private static final long serialVersionUID = -3754111090518724263L;
	private ButtonGroup genderGroup;
	private JRadioButton maleButton;
	private JRadioButton femaleButton;
	
	public KozossegiGenderPicker() {
		maleButton = new JRadioButton(Labels.REGISTER_MALE_BUTTON);
		femaleButton = new JRadioButton(Labels.REGISTER_FEMALE_BUTTON);
		genderGroup = new ButtonGroup();
		genderGroup.add(maleButton);
		maleButton.setActionCommand(Labels.REGISTER_MALE_BUTTON);
		genderGroup.add(femaleButton);
		femaleButton.setActionCommand(Labels.REGISTER_FEMALE_BUTTON);
		
		setLayout(new FlowLayout());
		add(maleButton);
		add(femaleButton);
	}

	public ButtonGroup getGenderGroup() {
		return genderGroup;
	}

	public void setGenderGroup(ButtonGroup genderGroup) {
		this.genderGroup = genderGroup;
	}

	public JRadioButton getMaleButton() {
		return maleButton;
	}

	public void setMaleButton(JRadioButton maleButton) {
		this.maleButton = maleButton;
	}

	public JRadioButton getFemaleButton() {
		return femaleButton;
	}

	public void setFemaleButton(JRadioButton femaleButton) {
		this.femaleButton = femaleButton;
	}

	public boolean isMale(){
		if(genderGroup.getSelection().getActionCommand().equals(maleButton.getActionCommand())) return true;
		return false;
	}
}
