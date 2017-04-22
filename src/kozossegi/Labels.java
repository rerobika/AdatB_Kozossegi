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
	public static final String GET_MEMBERCLUBS = "SELECT DISTINCT FELHASZNALO.ID,FELHASZNALO.NEV "
			+ "FROM FELHASZNALO,KLUB,TAGJA "
			+ "WHERE TAGJA.SZEMELYID=? AND TAGJA.KLUBID=KLUB.ID AND FELHASZNALO.ID=KLUB.ID";
	public static final String GET_OWNEDCLUBS = "SELECT DISTINCT FELHASZNALO.ID,FELHASZNALO.NEV "
			+ "FROM FELHASZNALO,KLUB,TAGJA "
			+ "WHERE KLUB.TULAJDONOS=? AND TAGJA.KLUBID=KLUB.ID AND FELHASZNALO.ID=KLUB.ID";
	public static final String GET_SUGGESTEDCLUBS = "SELECT DISTINCT FELHASZNALO.ID,FELHASZNALO.NEV "
			+ "FROM FELHASZNALO,KLUB,TAGJA "
			+ "WHERE TAGJA.SZEMELYID IN (SELECT DISTINCT ISMER.KIVELID AS ISMID FROM ISMER WHERE ISMER.KIID=? UNION SELECT DISTINCT ISMER.KIID AS ISMID FROM ISMER WHERE ISMER.KIVELID=?) "
			+ "AND TAGJA.KLUBID=KLUB.ID AND FELHASZNALO.ID=KLUB.ID "
			+ "MINUS SELECT DISTINCT FELHASZNALO.ID,FELHASZNALO.NEV  "
			+ "FROM FELHASZNALO,KLUB,TAGJA WHERE TAGJA.SZEMELYID=? AND TAGJA.KLUBID=KLUB.ID AND FELHASZNALO.ID=KLUB.ID";
	public static final String GET_SUGGESTEDFRIENDS = "SELECT DISTINCT FELHASZNALO.ID,FELHASZNALO.NEV,PROFIL.PROFILKEP FROM FELHASZNALO,PROFIL,MUNKAHELY,LAKHELY "
			+ "WHERE FELHASZNALO.ID IN (((SELECT FELHASZNALO.ID FROM FELHASZNALO,PROFIL WHERE PROFIL.LAKHELYID=(SELECT PROFIL.LAKHELYID FROM PROFIL WHERE PROFIL.SZEMELYID=?)AND PROFIL.SZEMELYID=FELHASZNALO.ID) "
			+ "UNION (SELECT FELHASZNALO.ID FROM FELHASZNALO,PROFIL WHERE PROFIL.MUNKAHELYID=(SELECT PROFIL.MUNKAHELYID FROM PROFIL WHERE PROFIL.SZEMELYID=?)AND PROFIL.SZEMELYID=FELHASZNALO.ID)) "
			+ "MINUS ((SELECT DISTINCT ISMER.KIVELID AS ISMID FROM ISMER WHERE ISMER.KIID=? UNION SELECT DISTINCT ISMER.KIID AS ISMID FROM ISMER WHERE ISMER.KIVELID=?))) AND FELHASZNALO.ID=PROFIL.SZEMELYID AND FELHASZNALO.ID!=?";
	public static final String CREATE_PROFILE = "CALL REGISTER(?,?,?,?,?,?,?,?,?,?,?)";
	public static final String GET_SCHOOLBYNAME = "SELECT ISKOLA.ISKOLAID AS ID FROM ISKOLA WHERE ISKOLA.NEV=?";
	public static final String GET_WORKPLACEBYNAME = "SELECT MUNKAHELY.MUNKAHELYID AS ID FROM MUNKAHELY WHERE MUNKAHELY.NEV=?";
	public static final String GET_RESIDENCEBYNAME = "SELECT LAKHELY.LAKHELYID AS ID FROM LAKHELY WHERE LAKHELY.NEV=?";
	public static final String GET_HOBBYBYNAME = "SELECT HOBBI.HOBBIID AS ID FROM	HOBBI WHERE HOBBI.NEV=?";
	public static final String GET_SCHOOLS = "SELECT NEV FROM ISKOLA";
	public static final String GET_WORKPLACES = "SELECT NEV FROM MUNKAHELY";
	public static final String GET_RESIDENCES = "SELECT NEV FROM LAKHELY";
	public static final String GET_HOBBYS = "SELECT NEV FROM HOBBI";
	public static final String MARK_FRIEND = "INSERT INTO ISMER(KIID,KIVELID,STATUSZ,IDO) VALUES(?,?,0,?)";
	public static final String CONFIRM_FRIEND = "UPDATE ISMER SET STATUSZ=1,IDO=? WHERE KIID=? AND KIVELID=?";
	public static final String IS_VALID_INVITER_CODE = "SELECT COUNT(*) AS PCS FROM SZEMELY WHERE ID=?";
	public static final String IS_VALID_EMAIL = "SELECT COUNT(*) AS PCS FROM SZEMELY WHERE EMAIL LIKE ?";
	public static final String UPDATE_PROFIL_PICTURE = "UPDATE PROFIL SET PROFILKEP=? WHERE SZEMELYID = ?";
	public static final String CREATE_ALBUM = "INSERT INTO ALBUM(FELHASZNALOID,NEV,IDO) VALUES(?,?,?)";
	public static final String ADD_PROFILE_PICTURE_TO_ALBUM = "INSERT INTO KEPEK(ALBUMNEV, ALBUMIDO, ELERESIUT) VALUES(?,?,?)";
	public static final String GET_PICTURE_ID = "SELECT KEPEK.ID FROM KEPEK INNER JOIN ALBUM ON ALBUM.NEV = KEPEK.ALBUMNEV AND ALBUM.IDO = KEPEK.ALBUMIDO WHERE  KEPEK.ALBUMNEV = ? AND KEPEK.ALBUMIDO = ?";
	
	
	
	// MAIN_FRAME
	public static final String MAIN_FRAME_TITLE = "Közösségi oldal";
	public static final String EMAIL_ADDRESS = "E-mail cím:";
	public static final String PASSWORD = "Jelszó:";
	public static final String OPTION_PANE_ERROR = "Hiba!";
	public static final String OPTION_PANE_SUCCESS = "Sikerült!";
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
	public static final String REGISTER_INVITER_CODE = "Meghívó kód:";

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
	public static final String NOT_VALID_INVITER_CODE = "Érvénytelen meghívókód!";
	public static final String SUCCESSFUL_REGISTRATION = "Sikeres regisztráció!";

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
	public static final String PROFIL_EDIT = "Profil szerkesztése";
	public static final String PROFIL_CREATE_CLUB = "Klub létrehozás";
	public static final String PROFIL_CLUB_TAGS = "Tagok";
	public static final String PROFIL_DATE_OF_BIRTH = "Születési idő:";
	public static final String PROFIL_GENDER = "Nem:";
	public static final String PROFIL_RESIDENCE= "Lakhely:";
	public static final String PROFIL_SCHOOL= "Iskola:";
	public static final String PROFIL_HOBBY= "Hobbi:";
	public static final String PROFIL_WORK_PLACE= "Munkahely:";
	public static final String PROFIL_INVITER= "Meghívó:";
	public static final String PROFIL_INVITE_CODE= "Meghívó:";	
	public static final String PROFIL_MAN= "Férfi";
	public static final String PROFIL_WOMAN= "Nő";
	public static final String PROFIL_RESET_DEFAULT= "Visszaállítás";
	public static final String PROFIL_SUBMIT_CHANGES= "Módosítások mentése";
	public static final String PROFIL_UPLOAD_PICTURE= "Kép feltöltés";
	public static final String PROFIL_PICTURE= "Profilkép";
	public static final String PROFIL_EDIT_WRONG_SIZE= "Maximum 2 megabájt lehet a hép méret!";
	public static final String PROFIL_NOT_COMPATIBLE_EXTENSION= "Nem képet adtál meg!";
	public static final String PROFIL_PICTURE_ALBUM= "Profilképek";
	
	
	
}
