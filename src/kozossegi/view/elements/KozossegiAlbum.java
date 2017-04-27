package kozossegi.view.elements;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.bean.KozossegiAlbumBean;
import kozossegi.dao.KozossegiImageManager;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiPictureSelector.fileScan;
import kozossegi.view.elements.maincontent.KozossegiProfile;

public class KozossegiAlbum extends JPanel {
	private static final long serialVersionUID = 4821206698128240413L;
	KozossegiAlbumBean data;
	public KozossegiAlbum() {
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();	
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		JPanel head = new JPanel();
		JPanel images = new JPanel();
		JTextField text = new JTextField(20);
		JLabel add = new JLabel(new ImageIcon(KozossegiImageManager.download(Labels.FILESERVER_PATH+"add_picture.png").getScaledInstance(64, 64, Image.SCALE_FAST)));
		add.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				if(!text.getText().equals(""))
				{
					KozossegiPictureSelector pictureSelector = new KozossegiPictureSelector();
					if(pictureSelector.isValidImage().equals(fileScan.SUCCES)){
						mainFrame.getController().uploadPicture(pictureSelector.getSelectedFile(), text.getText(), mainFrame.getProfile().getId());
					}
				}
			}
		});
		head.setLayout(new FlowLayout(FlowLayout.LEFT));
		head.add(new JLabel(Labels.PROFIL_ADD_NEW));
		head.add(text);
		head.add(add);
		head.setBorder(BorderFactory.createLineBorder(Color.black));
		images.setLayout(new GridLayout(0, 5,2,2));		
		images.add(add);
		add.setBorder(BorderFactory.createLineBorder(Color.black));
		add(head);
		add(images);
		setMaximumSize(getPreferredSize());
	}
	public KozossegiAlbum(KozossegiAlbumBean data,boolean editable)
	{
		
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		this.data=data;
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		JPanel head = new JPanel();
		JPanel images = new JPanel();
		head.setLayout(new FlowLayout(FlowLayout.LEFT));
		head.add(new JLabel(data.getName()));
		//head.setPreferredSize(new Dimension(mainFrame.getMainContentPanel().getWidth()-15, 40));
		head.setBorder(BorderFactory.createLineBorder(Color.black));
		images.setLayout(new GridLayout(0, 5,2,2));	
		for(Image i : data.getImages())
		{
			JLabel ilabel = new JLabel(new ImageIcon(i.getScaledInstance(64, 64, Image.SCALE_FAST)));
			images.add(ilabel);
			ilabel.setBorder(BorderFactory.createLineBorder(Color.black));
		}
		if(editable)
		{
			JLabel add = new JLabel(new ImageIcon(KozossegiImageManager
					.download(Labels.FILESERVER_PATH + "add_picture.png").getScaledInstance(64, 64, Image.SCALE_FAST)));
			add.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					KozossegiPictureSelector pictureSelector = new KozossegiPictureSelector();
					if (pictureSelector.isValidImage().equals(fileScan.SUCCES)) {
						mainFrame.getController().getImageByID(mainFrame.getController().uploadPicture(
								pictureSelector.getSelectedFile(), data.getName(), mainFrame.getProfile().getId()));
					}
				}
			});
			images.add(add);
		}

		add(head);
		add(images);
		setMaximumSize(getPreferredSize());
	}

}
