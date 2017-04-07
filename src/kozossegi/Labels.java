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
		public static final String GET_FRIENDS=""; // TODO
		
		
		//MAIN_FRAME
		public static final String MAIN_FRAME_TITLE="Közösségi oldal";
		public static final String EMAIL_ADDRESS="E-mail cím:";
		public static final String PASSWORD="Jelszó:";
		public static final String OPTION_PANE_ERROR="Hiba!";
		public static final String EMPTY_NAME="A nevét meg kell adnia!";
		public static final String EMPTY_EMAIL="Az e-mail címet meg kell adni!";
		
		
		//LOGIN		
		public static final String LOGIN_BUTTON="Bejelentkezés";
		public static final String LOGIN_REGISTER_BUTTON="Regisztáció";
		
		
		//REGISTER
		public static final String NAME="Név:";
		public static final String REGISTER_CONFIRM_PASSWORD="Jelszó újra:";
		public static final String REGISTER_BUTTON = "Regisztrálj!";
		public static final String REGISTER_BACK_BUTTON = "Vissza";
		public static final String REGISTER_MALE_BUTTON = "Féfi";
		public static final String REGISTER_FEMALE_BUTTON = "Nő";
		public static final String REGISTER_GENDER = "Neme:";
		public static final String REGISTER_BIRTH_DATE = "Születési dátum:";
		public static final List<String> REGISTER_MONTH_NAMES = new ArrayList<String>(Arrays.asList("Január","Február","Március", "Április", "Május", "Június","Július","Augusztus", "Szeptember","Október","November", "December"));
		//REGISTER_ERRORS
		public static final String EXISTING_EMAIL="Ez az e-mail cím már foglalt!";
		public static final String EMPTY_PASSWORD="A jelszót meg kell adni!";
		public static final String EMPTY_CONFIRMATION_PASSWORD="A jelszót meg kell erősíteni!";
		public static final String NOT_MATCHING_PASSWORDS="A megadott jelszavak nem egyeznek!";
		public static final String NOT_VALID_DATE="Nem valós dátumot adtál meg!";
		public static final String NOT_VALID_EMAIL="Nem valós e-mail címet adtál meg!";
		public static final String PASSWORD_LENGTH_ERROR="A jelszónak legalább 5 és legfeljebb 30 karakter hosszúnak kell lennie!";
		public static final String NAME_LENGTH_ERROR="A neved legalább 5 és legfeljebb 50 karakter hosszú kell legyen!";
		public static final String NO_GENDER_SELECTED="Nem választottad k ia neved!";
		
}
