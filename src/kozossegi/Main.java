package kozossegi;

import kozossegi.dao.KozossegiDAO;
import kozossegi.dao.KozossegiDAOImpl;

public class Main {

	public static void main(String[] args) {
		KozossegiDAO dao = new KozossegiDAOImpl();
		dao.getFriends(1);

	}

}
