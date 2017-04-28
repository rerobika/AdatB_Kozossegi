package kozossegi.view.elements;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
<<<<<<< HEAD
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
=======
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Date;
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
<<<<<<< HEAD
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.dao.KozossegiImageManager;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiPictureSelector.fileScan;
import kozossegi.view.elements.maincontent.KozossegiAlbumView;
=======
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;

import kozossegi.Labels;
import kozossegi.bean.KozossegiPostData;
import kozossegi.bean.KozossegiProfileBean;
import kozossegi.bean.KozossegiProfileMiniatureBean;
import kozossegi.bean.KozossegiProfileNameBean;
import kozossegi.view.KozossegiMainFrame;
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb

public class KozossegiAddAlbum extends JPanel {
	private static final long serialVersionUID = 304887341847941322L;

	public KozossegiAddAlbum(KozossegiAlbumView albumview) {
		super();
<<<<<<< HEAD
=======
		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();	
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb
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
<<<<<<< HEAD
						KozossegiMainFrame.getInstance().getController().uploadPicture(pictureSelector.getSelectedFile(), text.getText(), KozossegiMainFrame.getInstance().getProfile().getId());
=======
						mainFrame.getController().uploadPicture(pictureSelector.getSelectedFile(), text.getText(), mainFrame.getProfile().getId());
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb
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

<<<<<<< HEAD
}
=======
}
>>>>>>> 9e7b43d238024832b6fc0325d2cca208337fa1eb
