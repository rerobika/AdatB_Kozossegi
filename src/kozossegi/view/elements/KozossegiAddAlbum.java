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
import kozossegi.dao.KozossegiImageManager;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiPictureSelector.fileScan;
import kozossegi.view.elements.maincontent.KozossegiAlbumView;

public class KozossegiAddAlbum extends JPanel {
	private static final long serialVersionUID = 304887341847941322L;

	public KozossegiAddAlbum(KozossegiAlbumView albumview) {
		super();
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
						KozossegiMainFrame.getInstance().getController().uploadPicture(pictureSelector.getSelectedFile(), text.getText(), KozossegiMainFrame.getInstance().getProfile().getId());
						albumview.update();
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
}

