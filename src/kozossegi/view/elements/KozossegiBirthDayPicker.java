package kozossegi.view.elements;

import java.awt.FlowLayout;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;

import javax.swing.JComboBox;
import javax.swing.JPanel;

import kozossegi.Labels;

public class KozossegiBirthDayPicker extends JPanel {
	private static final long serialVersionUID = -7070319607317992773L;
	private JComboBox<Integer> birthYear;
	private JComboBox<String> birthMonth;
	private JComboBox<Integer> birthDay;
	private int currentYear;

	public KozossegiBirthDayPicker() {
		birthYear = new JComboBox<Integer>();
		birthMonth = new JComboBox<String>();
		birthDay = new JComboBox<Integer>();
		
		setLayout(new FlowLayout());
		add(birthYear);
		add(birthMonth);
		add(birthDay);
		initBirthPanel();
	}
	
	private void initBirthPanel(){
		Date date = new Date();
		LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		currentYear  = localDate.getYear();
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
	
	public Date getBirthDate(){
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, (Integer)birthYear.getSelectedItem());
		cal.set(Calendar.MONTH, birthMonth.getSelectedIndex()+1);
		cal.set(Calendar.DAY_OF_MONTH, birthDay.getSelectedIndex()+1);
		return cal.getTime();
	}
	
	
	public String toString(){
		return Integer.toString((Integer)birthYear.getSelectedItem())+"-"+(birthMonth.getSelectedIndex()+1) +"-"+(birthDay.getSelectedIndex()+1);
	}
	
	
	public boolean isValidDate(String s) {
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    sdf.setLenient(false);
	    return sdf.parse(s, new ParsePosition(0)) != null;
	}

	public JComboBox<Integer> getBirthYear() {
		return birthYear;
	}

	public void setBirthYear(JComboBox<Integer> birthYear) {
		this.birthYear = birthYear;
	}

	public JComboBox<String> getBirthMonth() {
		return birthMonth;
	}

	public void setBirthMonth(JComboBox<String> birthMonth) {
		this.birthMonth = birthMonth;
	}

	public JComboBox<Integer> getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(JComboBox<Integer> birthDay) {
		this.birthDay = birthDay;
	}
	
	public int getCurrentYear() {
		return currentYear;
	}

	public void setCurrentYear(int currentYear) {
		this.currentYear = currentYear;
	}
	

}
