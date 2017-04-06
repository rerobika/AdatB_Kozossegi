package kozossegi;

import kozossegi.controller.KozossegiController;
import kozossegi.dao.KozossegiDAO;
import kozossegi.dao.KozossegiDAOImpl;
import kozossegi.view.KozossegiMainFrame;

public class Main {

	public static void main(String[] args) {
		KozossegiController controller = new KozossegiController();
		controller.startDesktop();

	}

}
