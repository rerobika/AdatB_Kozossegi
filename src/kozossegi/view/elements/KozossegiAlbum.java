package kozossegi.view.elements;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Date;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.bean.KozossegiAlbumBean;
import kozossegi.bean.KozossegiClubBean;
import kozossegi.bean.KozossegiImage;
import kozossegi.dao.KozossegiImageManager;
import kozossegi.view.KozossegiMainFrame;
import kozossegi.view.elements.KozossegiPictureSelector.fileScan;
import kozossegi.view.elements.maincontent.KozossegiAlbumView;

public class KozossegiAlbum extends JPanel {
	private static final long serialVersionUID = 4821206698128240413L;
	KozossegiAlbumBean data;

	public KozossegiAlbum(KozossegiAlbumView albumview,KozossegiAlbumBean data) {

		KozossegiMainFrame mainFrame = KozossegiMainFrame.getInstance();
		this.data = data;
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
		JPanel head = new JPanel();
		JPanel images = new JPanel();
		head.setLayout(new FlowLayout(FlowLayout.LEFT));
		head.add(new JLabel(data.getName()));
		head.setBorder(BorderFactory.createLineBorder(Color.black));
		images.setLayout(new GridLayout(0, 5, 2, 2));
		int size=0;
		for (KozossegiImage i : data.getImages()) {
			JLabel ilabel = new JLabel(new ImageIcon(i.getImage().getScaledInstance(64, 64, Image.SCALE_FAST)));
			images.add(ilabel);
			ilabel.setBorder(BorderFactory.createLineBorder(Color.black));
			size+=i.getSize();
		}
		head.add(new JLabel("Méret: "+Integer.toString(size)+" bytes"));
		
		if (albumview.getUser().getId()==mainFrame.getProfile().getId() || albumview.getUser() instanceof KozossegiClubBean && mainFrame.getProfile().getId() == ((KozossegiClubBean) albumview.getUser()).getOwnerId()) {
			JLabel add = new JLabel(new ImageIcon(KozossegiImageManager
					.download(Labels.FILESERVER_PATH + "add_picture.png").getScaledInstance(64, 64, Image.SCALE_FAST)));
			add.addMouseListener(new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					KozossegiPictureSelector pictureSelector = new KozossegiPictureSelector();
					if (pictureSelector.isValidImage().equals(fileScan.SUCCES)) {
						mainFrame.getController().getImageByID(mainFrame.getController().uploadPicture(
								pictureSelector.getSelectedFile(), data.getName(), mainFrame.getProfile().getId()));
						albumview.update();
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