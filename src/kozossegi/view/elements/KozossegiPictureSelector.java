package kozossegi.view.elements;

import java.awt.FlowLayout;
import java.io.File;

import javax.swing.JDialog;
import javax.swing.JFileChooser;

public class KozossegiPictureSelector extends JDialog {

	private static final long serialVersionUID = 2279640417624379431L;
	private JFileChooser fileChooser;
	private int result;
	private File selectedFile;
	

	public KozossegiPictureSelector() {
		fileChooser = new JFileChooser();
		setLayout(new FlowLayout());
		add(fileChooser);
		result = fileChooser.showOpenDialog(this);
		if (result == JFileChooser.APPROVE_OPTION) {
		    selectedFile = fileChooser.getSelectedFile();
		}
		
		fileChooser.setCurrentDirectory(new File(System.getProperty("user.home")));
		
	}
	
	public String getName(){
		return selectedFile.getName();
	}

	public File getSelectedFile() {
		return selectedFile;
	}

	public void setSelectedFile(File selectedFile) {
		this.selectedFile = selectedFile;
	}
	
	public enum fileScan{
	      NOT_COMPTAIBLE_TYPE, WRONG_FILE_SIZE, SUCCES
	}
	
	public fileScan isValidImage(){
		String extension = "";
		int i = selectedFile.getAbsolutePath().lastIndexOf('.');
		int p = Math.max(selectedFile.getAbsolutePath().lastIndexOf('/'), selectedFile.getAbsolutePath().lastIndexOf('\\'));

		if (i > p) {
		    extension = selectedFile.getAbsolutePath().substring(i+1);
		}
		
		if(extension.toLowerCase().equals("jpg")||extension.toLowerCase().equals("jpeg")||extension.toLowerCase().equals("png")){
			if(selectedFile.length()!=0 && selectedFile.length()<=2048000){
				return fileScan.SUCCES;
			}
			return fileScan.WRONG_FILE_SIZE;
		}

		return fileScan.NOT_COMPTAIBLE_TYPE;
	}
	
	
}
