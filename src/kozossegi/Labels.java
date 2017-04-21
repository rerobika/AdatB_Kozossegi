package kozossegi;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Labels {
	// DATABASE_CONNENTION
	public static final String DATABASE_PATH = "@localhost:1521:xe";
	public static final String DATABASE_USER = "rozsapeter";
	public static final String DATABASE_PASS = "admin";

	public static final String FILESERVER_PATH = "http://localhost:80/Kozossegi/";

	// QUERIES
	public static final String GET_FRIENDS = "SELECT DISTINCT FELHASZNALO.ID,FELHASZNALO.NEV,PROFIL.PROFILKEP "
			+ "FROM ISMER,FELHASZNALO,KEPEK,PROFIL " + "WHERE FELHASZNALO.ID IN "
			+ "(SELECT DISTINCT ISMER.KIVELID AS ISMID FROM ISMER WHERE ISMER.KIID=? UNION SELECT DISTINCT ISMER.KIID AS ISMID FROM ISMER WHERE ISMER.KIVELID=?) AND FELHASZNALO.ID=PROFIL.SZEMELYID";
	public static final String GET_IMAGEBYID = "SELECT ELERESIUT FROM KEPEK WHERE ID=?";
	public static final String GET_USERBYID = "SELECT FELHASZNALO.ID,SZEMELY.JELSZO,SZEMELY.EMAIL,FELHASZNALO.NEV,PROFIL.SZUL_DATUM,PROFIL.NEM,LAKHELY.NEV AS LAKHELY,ISKOLA.NEV AS ISKOLA,HOBBI.NEV AS HOBBI,MUNKAHELY.NEV AS MUNKAHELY,PROFIL.MEGHIVO,PROFIL.PROFILKEP "
			+ "FROM PROFIL,SZEMELY,FELHASZNALO,ISKOLA,LAKHELY,MUNKAHELY,KEPEK,HOBBI "
			+ "WHERE FELHASZNALO.ID=? AND PROFIL.LAKHELYID=LAKHELY.LAKHELYID AND PROFIL.HOBBIID=HOBBI.HOBBIID AND PROFIL.MUNKAHELYID=MUNKAHELY.MUNKAHELYID AND PROFIL.ISKOLAID=ISKOLA.ISKOLAID AND SZEMELY.ID=FELHASZNALO.ID AND PROFIL.SZEMELYID=FELHASZNALO.ID";
	public static final String GET_MESSAGES = "SELECT DISTINCT * FROM UZENET WHERE (FELADO=? AND CIMZETT=?) OR (CIMZETT=? AND FELADO=?) ORDER BY IDO";
	public static final String SEND_MESSAGE = "INSERT INTO UZENET(FELADO,CIMZETT,IDO,UZENET) VALUES(?,?,?,?)";
	public static final String GET_BIRTHDAY = "SELECT DISTINCT FELHASZNALO.ID,FELHASZNALO.NEV,PROFIL.PROFILKEP "
			+ "FROM ISMER,FELHASZNALO,KEPEK,PROFIL " + "WHERE FELHASZNALO.ID IN "
			+ "(SELECT DISTINCT ISMER.KIVELID AS ISMID FROM ISMER WHERE ISMER.KIID=? UNION SELECT DISTINCT ISMER.KIID AS ISMID FROM ISMER WHERE ISMER.KIVELID=?) AND FELHASZNALO.ID=PROFIL.SZEMELYID AND TO_CHAR(PROFIL.SZUL_DATUM,'YYYY-MM-DD')=TO_CHAR(SYSDATE,'YYYY-MM-DD')";
	public static final String GET_NAMEDAY = "SELECT DISTINCT FELHASZNALO.ID,FELHASZNALO.NEV,PROFIL.PROFILKEP "
			+ "FROM ISMER,FELHASZNALO,KEPEK,PROFIL,NEVNAP "
			+ "WHERE FELHASZNALO.ID IN (SELECT DISTINCT ISMER.KIVELID AS ISMID FROM ISMER WHERE ISMER.KIID=? UNION SELECT DISTINCT ISMER.KIID AS ISMID FROM ISMER WHERE ISMER.KIVELID=?) "
			+ "AND FELHASZNALO.ID=PROFIL.SZEMELYID AND REGEXP_SUBSTR(FELHASZNALO.NEV,'[^ ]+$')=NEVNAP.NEV AND TO_CHAR(NEVNAP.HONAP,'FM00')||'-'||TO_CHAR(NEVNAP.NAP,'FM00')=TO_CHAR(SYSDATE,'MM-DD')";

	// MAIN_FRAME
	public static final String MAIN_FRAME_TITLE = "Közösségi oldal";
	public static final String EMAIL_ADDRESS = "E-mail cím:";
	public static final String PASSWORD = "Jelszó:";
	public static final String OPTION_PANE_ERROR = "Hiba!";
	public static final String EMPTY_NAME = "A nevét meg kell adnia!";
	public static final String EMPTY_EMAIL = "Az e-mail címet meg kell adni!";
	public static final String PROFILE_PICTURE_URL = "https://image.freepik.com/free-icon/profile-user_318-80283.jpg";
	public static final String PROFILE_PICTURE_ICO_URL = "https://rog.asus.com/forum/images/site_icons/profile.png";
	public static final String LOGO_URL = "http://www.utahvalleybraces.com/sesame_media/images/invisalign-pro-package/logo-twitter.png";

	// LOGIN
	public static final String LOGIN_BUTTON = "Bejelentkezés";
	public static final String LOGIN_REGISTER_BUTTON = "Regisztáció";

	// REGISTER
	public static final String NAME = "Név:";
	public static final String REGISTER_CONFIRM_PASSWORD = "Jelszó újra:";
	public static final String REGISTER_BUTTON = "Regisztrálj!";
	public static final String REGISTER_BACK_BUTTON = "Vissza";
	public static final String REGISTER_MALE_BUTTON = "Féfi";
	public static final String REGISTER_FEMALE_BUTTON = "Nő";
	public static final String REGISTER_GENDER = "Neme:";
	public static final String REGISTER_BIRTH_DATE = "Születési dátum:";
	public static final List<String> REGISTER_MONTH_NAMES = new ArrayList<String>(
			Arrays.asList("Január", "Február", "Március", "Április", "Május", "Június", "Július", "Augusztus",
					"Szeptember", "Október", "November", "December"));

	// REGISTER_ERRORS
	public static final String EXISTING_EMAIL = "Ez az e-mail cím már foglalt!";
	public static final String EMPTY_PASSWORD = "A jelszót meg kell adni!";
	public static final String EMPTY_CONFIRMATION_PASSWORD = "A jelszót meg kell erősíteni!";
	public static final String NOT_MATCHING_PASSWORDS = "A megadott jelszavak nem egyeznek!";
	public static final String NOT_VALID_DATE = "Nem valós dátumot adtál meg!";
	public static final String NOT_VALID_EMAIL = "Nem valós e-mail címet adtál meg!";
	public static final String PASSWORD_LENGTH_ERROR = "A jelszónak legalább 5 és legfeljebb 30 karakter hosszúnak kell lennie!";
	public static final String NAME_LENGTH_ERROR = "A neved legalább 5 és legfeljebb 50 karakter hosszú kell legyen!";
	public static final String NO_GENDER_SELECTED = "Nem választottad ki a neved!";

	// SEARCH
	public static final String SEARCH_TEXT = "Ismerősök keresése:";
	public static final String SEARCH_BUTON = "Keresés";
	public static final String SEARCH_ERROR = "A kereső mezőt üresen hagytad!";

	// MENU
	public static final String MENU_NEWS_FEED = "Hírek";
	public static final String MENU_PROFIL = "Profil";
	public static final String MENU_MESSAGES = "Üzenetek";
	public static final String MENU_FRIENDS = "Barátok";
	public static final String MENU_BIRTH_AND_NAME_DAY = "Születésnapok és névnapok";
	public static final String MENU_LOGOUT = "Kijelentkezés";

	// ClUB
	public static final String CLUB_OWNER = "Klubjaid";
	public static final String CLUB_TAG = "Tagságok";
	public static final String CLUB_SUGGESTION = "Ajánlott klubok";
	public static final String FRINED_SUGGESTION = "Ajánlott tagok";

	// BIRTH_AND_NAME_DAY
	public static final String BIRTHDAY = "Születésnaposok";
	public static final String NAMEDAY = "Névnaposok";

	// MESSAGE
	public static final String MESSAGE_SEND = "Küldés";

	// PROFILE
	public static final String PROFIL_WALL = "Idővonal";
	public static final String PROFIL_INFO = "Információ";
	public static final String PROFIL_ALBUMS = "Albumok";
	public static final String PROFIL_FRIENDS = "Ismerősök";
}
