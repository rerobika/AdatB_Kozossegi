CREATE OR REPLACE PROCEDURE REGISTER(V_NEV IN STRING,V_JELSZO IN STRING,V_EMAIL IN STRING,V_DOB IN DATE,
V_NEM IN INT, V_LAKHELYID IN INT,V_ISKOLAID IN INT,V_HOBBIID IN INT,V_MUNKAHELYID IN INT, V_MEGHIVO IN INT,V_PROFILKEP IN STRING) IS
 PRAGMA AUTONOMOUS_TRANSACTION;
 V_ID NUMBER;
BEGIN 
  INSERT INTO FELHASZNALO(NEV) VALUES (V_NEV);
  V_ID:= FELHASZNALO_SEQ.CURRVAl;
  INSERT INTO SZEMELY(ID,JELSZO,EMAIL) VALUES (V_ID,V_JELSZO,V_EMAIL);
  INSERT INTO ALBUM(FELHASZNALOID,NEV,IDO) VALUES (V_ID,'Profilk�pek',SYSTIMESTAMP);
  INSERT INTO KEPEK(ALBUMNEV,ALBUMIDO,ELERESIUT)VALUES((SELECT NEV FROM ALBUM WHERE FELHASZNALOID=V_ID),(SELECT IDO FROM ALBUM WHERE FELHASZNALOID=V_ID),V_PROFILKEP);
  INSERT INTO PROFIL(SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP)
  VALUES(V_ID,V_DOB,V_NEM,V_LAKHELYID,V_ISKOLAID,V_HOBBIID,V_MUNKAHELYID,V_MEGHIVO,
  (SELECT ID FROM KEPEK,ALBUM WHERE ALBUM.FELHASZNALOID=V_ID AND KEPEK.ALBUMIDO=ALBUM.IDO AND KEPEK.ALBUMNEV=ALBUM.NEV)); 
  COMMIT;
END;

