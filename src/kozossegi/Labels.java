package kozossegi;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class Labels {
	// DATABASE_CONNENTION
	public static final String DATABASE_PATH="@localhost:1521:xe";
	public static final String DATABASE_USER="rozsapeter";
	public static final String DATABASE_PASS="admin";
	
	//QUERIES
	public static final String GET_FRIENDS="SELECT "; // TODO
	
	
	//MAIN_FRAME
	public static final String MAIN_FRAME_TITLE="Közösségi oldal";
	
	//LOGIN
	public static final String LOGIN_EMAIL="E-mail cím:";
	public static final String LOGIN_PASSWORD="Jelszó:";
	public static final String LOGIN_BUTTON="Bejelentkezés";
	public static final String LOGIN_REGISTER_BUTTON="Regisztáció";
	
	//REGISTER
	public static final String REGISTER_EMAIL="E-mail cím:";
	public static final String REGISTER_NAME="Név:";
	public static final String REGISTER_PASSWORD="Jelszó:";
	public static final String REGISTER_CONFIRM_PASSWORD="Jelszó újra:";
	public static final String REGISTER_BUTTON = "Regisztrálj!";
	public static final String REGISTER_BACK_BUTTON = "Vissza";
	public static final String REGISTER_BIRTH_DATE = "Születési dátum:";
	public static final List<String> REGISTER_MONTH_NAMES = new ArrayList<String>(Arrays.asList("Január","Február","Március", "Április", "Május", "Június","Július","Augusztus", "Szeptember","Október","November", "December"));
}
