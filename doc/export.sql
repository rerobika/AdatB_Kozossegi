--------------------------------------------------------
--  File created - p�ntek-�prilis-28-2017   
--------------------------------------------------------
DROP TABLE "ALBUM" cascade constraints;
DROP TABLE "ERTESITES" cascade constraints;
DROP TABLE "FELHASZNALO" cascade constraints;
DROP TABLE "HOBBI" cascade constraints;
DROP TABLE "ISKOLA" cascade constraints;
DROP TABLE "ISMER" cascade constraints;
DROP TABLE "KEPEK" cascade constraints;
DROP TABLE "KLUB" cascade constraints;
DROP TABLE "LAKHELY" cascade constraints;
DROP TABLE "MUNKAHELY" cascade constraints;
DROP TABLE "NEVNAP" cascade constraints;
DROP TABLE "POSZT" cascade constraints;
DROP TABLE "PROFIL" cascade constraints;
DROP TABLE "SZEMELY" cascade constraints;
DROP TABLE "TAGJA" cascade constraints;
DROP TABLE "UZENET" cascade constraints;
DROP SEQUENCE "ALBUM_SEQ";
DROP SEQUENCE "FELHASZNALO_SEQ";
DROP SEQUENCE "HOBBI_SEQ";
DROP SEQUENCE "ISKOLA_SEQ";
DROP SEQUENCE "KEPEK_SEQ";
DROP SEQUENCE "LAKHELY_SEQ";
DROP SEQUENCE "MUNKAHELY_SEQ";
DROP SEQUENCE "POSZT_SEQ";
DROP PROCEDURE "REGISTER";
DROP PROCEDURE "SZEMELYHOZZAAD";
DROP FUNCTION "ADDIMAGE";
--------------------------------------------------------
--  DDL for Table ALBUM
--------------------------------------------------------

  CREATE TABLE "ALBUM" 
   (	"FELHASZNALOID" NUMBER, 
	"NEV" VARCHAR2(20 BYTE), 
	"IDO" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ERTESITES
--------------------------------------------------------

  CREATE TABLE "ERTESITES" 
   (	"KINEK" NUMBER, 
	"IDO" TIMESTAMP (6), 
	"SZOVEG" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FELHASZNALO
--------------------------------------------------------

  CREATE TABLE "FELHASZNALO" 
   (	"ID" NUMBER(*,0), 
	"NEV" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOBBI
--------------------------------------------------------

  CREATE TABLE "HOBBI" 
   (	"HOBBIID" NUMBER, 
	"NEV" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ISKOLA
--------------------------------------------------------

  CREATE TABLE "ISKOLA" 
   (	"ISKOLAID" NUMBER, 
	"NEV" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ISMER
--------------------------------------------------------

  CREATE TABLE "ISMER" 
   (	"KIID" NUMBER, 
	"KIVELID" NUMBER, 
	"STATUSZ" NUMBER, 
	"IDO" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KEPEK
--------------------------------------------------------

  CREATE TABLE "KEPEK" 
   (	"ALBUMNEV" VARCHAR2(20 BYTE), 
	"ALBUMIDO" TIMESTAMP (6), 
	"ELERESIUT" VARCHAR2(255 BYTE), 
	"ID" NUMBER, 
	"POSZTID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KLUB
--------------------------------------------------------

  CREATE TABLE "KLUB" 
   (	"ID" NUMBER(*,0), 
	"TULAJDONOS" NUMBER(*,0), 
	"KEZDET" DATE, 
	"LEIRAS" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LAKHELY
--------------------------------------------------------

  CREATE TABLE "LAKHELY" 
   (	"LAKHELYID" NUMBER, 
	"NEV" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MUNKAHELY
--------------------------------------------------------

  CREATE TABLE "MUNKAHELY" 
   (	"MUNKAHELYID" NUMBER, 
	"NEV" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NEVNAP
--------------------------------------------------------

  CREATE TABLE "NEVNAP" 
   (	"NEV" VARCHAR2(20 BYTE), 
	"HONAP" NUMBER, 
	"NAP" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table POSZT
--------------------------------------------------------

  CREATE TABLE "POSZT" 
   (	"FELADO" NUMBER, 
	"ID" NUMBER, 
	"CIMZETT" NUMBER, 
	"IDO" TIMESTAMP (6), 
	"TARTALOM" VARCHAR2(255 BYTE), 
	"SZULO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROFIL
--------------------------------------------------------

  CREATE TABLE "PROFIL" 
   (	"SZEMELYID" NUMBER, 
	"SZUL_DATUM" DATE, 
	"NEM" CHAR(1 BYTE), 
	"LAKHELYID" NUMBER, 
	"ISKOLAID" NUMBER, 
	"HOBBIID" NUMBER, 
	"MUNKAHELYID" NUMBER, 
	"MEGHIVO" NUMBER, 
	"PROFILKEP" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SZEMELY
--------------------------------------------------------

  CREATE TABLE "SZEMELY" 
   (	"ID" NUMBER(*,0), 
	"JELSZO" VARCHAR2(30 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TAGJA
--------------------------------------------------------

  CREATE TABLE "TAGJA" 
   (	"SZEMELYID" NUMBER, 
	"KLUBID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UZENET
--------------------------------------------------------

  CREATE TABLE "UZENET" 
   (	"FELADO" NUMBER, 
	"CIMZETT" NUMBER, 
	"IDO" TIMESTAMP (6), 
	"UZENET" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence ALBUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ALBUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FELHASZNALO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FELHASZNALO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1063 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HOBBI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HOBBI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ISKOLA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ISKOLA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 391 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KEPEK_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KEPEK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LAKHELY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAKHELY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MUNKAHELY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MUNKAHELY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence POSZT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "POSZT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 124 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into ALBUM
SET DEFINE OFF;
Insert into ALBUM (FELHASZNALOID,NEV,IDO) values ('1044','Profilk�pek',to_timestamp('17-�PR.  -28 11.25.05,188000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ALBUM (FELHASZNALOID,NEV,IDO) values ('670','neha',to_timestamp('17-�PR.  -28 11.30.06,479000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ALBUM (FELHASZNALOID,NEV,IDO) values ('1045','Profilk�pek',to_timestamp('17-�PR.  -28 11.36.43,087000000','RR-MON-DD HH24.MI.SSXFF'));
REM INSERTING into ERTESITES
SET DEFINE OFF;
Insert into ERTESITES (KINEK,IDO,SZOVEG) values ('725',to_timestamp('17-M�RC. -31 16.01.58,826000000','RR-MON-DD HH24.MI.SSXFF'),'ASDFASDF');
REM INSERTING into FELHASZNALO
SET DEFINE OFF;
Insert into FELHASZNALO (ID,NEV) values ('768','Lantos Gisella');
Insert into FELHASZNALO (ID,NEV) values ('769','Thury Ny�k');
Insert into FELHASZNALO (ID,NEV) values ('770','R�v�sz L?rinc');
Insert into FELHASZNALO (ID,NEV) values ('771','Pethe� Zolt�n');
Insert into FELHASZNALO (ID,NEV) values ('772','Magyar Sebo');
Insert into FELHASZNALO (ID,NEV) values ('773','L�rinc Boldizsar');
Insert into FELHASZNALO (ID,NEV) values ('774','Sz�ll�ssy Bora');
Insert into FELHASZNALO (ID,NEV) values ('775','Gy�rffy Tabor');
Insert into FELHASZNALO (ID,NEV) values ('776','Heged�s Neci');
Insert into FELHASZNALO (ID,NEV) values ('777','Szepes Alexandra');
Insert into FELHASZNALO (ID,NEV) values ('778','V�r�ss Gr�ta');
Insert into FELHASZNALO (ID,NEV) values ('779','Simko Jucika');
Insert into FELHASZNALO (ID,NEV) values ('780','Bodo Sasa');
Insert into FELHASZNALO (ID,NEV) values ('781','Sz�cs Erzsi');
Insert into FELHASZNALO (ID,NEV) values ('782','Szak�l Merc�desz');
Insert into FELHASZNALO (ID,NEV) values ('783','M�th� Pista');
Insert into FELHASZNALO (ID,NEV) values ('784','Erdey Kamilla');
Insert into FELHASZNALO (ID,NEV) values ('785','Ors�s Dacso');
Insert into FELHASZNALO (ID,NEV) values ('786','R�cz Csombor');
Insert into FELHASZNALO (ID,NEV) values ('787','S�ghi Erssike');
Insert into FELHASZNALO (ID,NEV) values ('788','Pet� Belle');
Insert into FELHASZNALO (ID,NEV) values ('789','F�ldes Ugod');
Insert into FELHASZNALO (ID,NEV) values ('790','Koll�r Erik');
Insert into FELHASZNALO (ID,NEV) values ('791','Koll�r Kartal');
Insert into FELHASZNALO (ID,NEV) values ('792','Erdei Izabella');
Insert into FELHASZNALO (ID,NEV) values ('793','Kov�ts Lantos');
Insert into FELHASZNALO (ID,NEV) values ('794','Ujv�ry Kopp�ny');
Insert into FELHASZNALO (ID,NEV) values ('795','L�z�r Marton');
Insert into FELHASZNALO (ID,NEV) values ('796','Smit Barnab�s');
Insert into FELHASZNALO (ID,NEV) values ('797','Danko Kitti');
Insert into FELHASZNALO (ID,NEV) values ('798','Smid Dalma');
Insert into FELHASZNALO (ID,NEV) values ('799','L�rincz Markos');
Insert into FELHASZNALO (ID,NEV) values ('800','Maier J�nos');
Insert into FELHASZNALO (ID,NEV) values ('801','Sz�ts Dorika');
Insert into FELHASZNALO (ID,NEV) values ('802','Schmid Lukacs');
Insert into FELHASZNALO (ID,NEV) values ('803','L�vai Emese');
Insert into FELHASZNALO (ID,NEV) values ('804','F�ldi R�kus');
Insert into FELHASZNALO (ID,NEV) values ('805','So�s Odon');
Insert into FELHASZNALO (ID,NEV) values ('806','Sinka Endre');
Insert into FELHASZNALO (ID,NEV) values ('807','Gy�rfi Ugor');
Insert into FELHASZNALO (ID,NEV) values ('808','Kults�r Sebes');
Insert into FELHASZNALO (ID,NEV) values ('809','Sz�ll�si Katalin');
Insert into FELHASZNALO (ID,NEV) values ('810','Donka No�mi');
Insert into FELHASZNALO (ID,NEV) values ('811','Bencze Virag');
Insert into FELHASZNALO (ID,NEV) values ('812','Szil�gyi Neci');
Insert into FELHASZNALO (ID,NEV) values ('813','S�r�ss Kinga');
Insert into FELHASZNALO (ID,NEV) values ('814','Ujv�ri P�zm�n');
Insert into FELHASZNALO (ID,NEV) values ('815','Kulcs�r Kemenes');
Insert into FELHASZNALO (ID,NEV) values ('816','P�link�s Jenci');
Insert into FELHASZNALO (ID,NEV) values ('817','Szepessi Gazsi');
Insert into FELHASZNALO (ID,NEV) values ('818','Major D�ra');
Insert into FELHASZNALO (ID,NEV) values ('819','Pataki Veronika');
Insert into FELHASZNALO (ID,NEV) values ('820','Magyar Dalma');
Insert into FELHASZNALO (ID,NEV) values ('821','Ill�s Orsolya');
Insert into FELHASZNALO (ID,NEV) values ('822','Gy�rfi Gabriella');
Insert into FELHASZNALO (ID,NEV) values ('823','Gyarmathy Kat');
Insert into FELHASZNALO (ID,NEV) values ('824','Meyer Adojan');
Insert into FELHASZNALO (ID,NEV) values ('825','K�sa L�rinc');
Insert into FELHASZNALO (ID,NEV) values ('826','Herman Gyurka');
Insert into FELHASZNALO (ID,NEV) values ('827','Ors�s Bettina');
Insert into FELHASZNALO (ID,NEV) values ('828','G�r�ncs�r Ram�na');
Insert into FELHASZNALO (ID,NEV) values ('829','Balla Ilona');
Insert into FELHASZNALO (ID,NEV) values ('830','M�ty�s Rebeka');
Insert into FELHASZNALO (ID,NEV) values ('831','Tury Zsanett');
Insert into FELHASZNALO (ID,NEV) values ('832','R�v�sz Virag');
Insert into FELHASZNALO (ID,NEV) values ('833','Sz�nt� Adri�n');
Insert into FELHASZNALO (ID,NEV) values ('834','Gergely Uzor');
Insert into FELHASZNALO (ID,NEV) values ('835','Hofman Beatrix');
Insert into FELHASZNALO (ID,NEV) values ('836','Sz�ll�si Jolan');
Insert into FELHASZNALO (ID,NEV) values ('837','�ts M�ty�s');
Insert into FELHASZNALO (ID,NEV) values ('838','Gyarmati Melinda');
Insert into FELHASZNALO (ID,NEV) values ('839','Szatm�ry Zsofia');
Insert into FELHASZNALO (ID,NEV) values ('840','Barab�s Cili');
Insert into FELHASZNALO (ID,NEV) values ('841','Peth� �gnes');
Insert into FELHASZNALO (ID,NEV) values ('842','Sz�cs Franciska');
Insert into FELHASZNALO (ID,NEV) values ('843','Herczeg Borsala');
Insert into FELHASZNALO (ID,NEV) values ('844','Sz�l�si Csilla');
Insert into FELHASZNALO (ID,NEV) values ('845','So�s Deli');
Insert into FELHASZNALO (ID,NEV) values ('846','Csik�s Frici');
Insert into FELHASZNALO (ID,NEV) values ('847','K�sa Frici');
Insert into FELHASZNALO (ID,NEV) values ('848','G�l Karsa');
Insert into FELHASZNALO (ID,NEV) values ('849','B�r�cz Hanna');
Insert into FELHASZNALO (ID,NEV) values ('850','Sultisz Ugor');
Insert into FELHASZNALO (ID,NEV) values ('851','Lengyel Bertuska');
Insert into FELHASZNALO (ID,NEV) values ('852','M�rkus Vicuska');
Insert into FELHASZNALO (ID,NEV) values ('853','K�lm�n Hont');
Insert into FELHASZNALO (ID,NEV) values ('854','L�z�r Bettina');
Insert into FELHASZNALO (ID,NEV) values ('855','Csik�s Orzsebet');
Insert into FELHASZNALO (ID,NEV) values ('856','Sz�ll�ssi Karola');
Insert into FELHASZNALO (ID,NEV) values ('857','Csizmazia Zerind');
Insert into FELHASZNALO (ID,NEV) values ('858','B�nyai Juci');
Insert into FELHASZNALO (ID,NEV) values ('859','Szak�ly Tzigane');
Insert into FELHASZNALO (ID,NEV) values ('860','Dud�s Szal�k');
Insert into FELHASZNALO (ID,NEV) values ('861','Veress Franciska');
Insert into FELHASZNALO (ID,NEV) values ('862','Sz�l�si Zombor');
Insert into FELHASZNALO (ID,NEV) values ('863','S�ghi Vit�z');
Insert into FELHASZNALO (ID,NEV) values ('864','Seres Rezs�');
Insert into FELHASZNALO (ID,NEV) values ('865','Seress Karole');
Insert into FELHASZNALO (ID,NEV) values ('866','Sinko Zsanett');
Insert into FELHASZNALO (ID,NEV) values ('867','Lakatos Dorika');
Insert into FELHASZNALO (ID,NEV) values ('868','Seb�k Kriszti�n');
Insert into FELHASZNALO (ID,NEV) values ('869','Sz�ts Patr�cia');
Insert into FELHASZNALO (ID,NEV) values ('870','Smit Ibolya');
Insert into FELHASZNALO (ID,NEV) values ('871','K�llai Ferenc');
Insert into FELHASZNALO (ID,NEV) values ('872','Somogyi Di�na');
Insert into FELHASZNALO (ID,NEV) values ('873','Kov�ts Szil�rd');
Insert into FELHASZNALO (ID,NEV) values ('766','M�t� Myricoorish');
Insert into FELHASZNALO (ID,NEV) values ('767','Szak�ly Virag');
Insert into FELHASZNALO (ID,NEV) values ('874','Vagner Domokos');
Insert into FELHASZNALO (ID,NEV) values ('875','Benk� Roland');
Insert into FELHASZNALO (ID,NEV) values ('876','Bagy Di�na');
Insert into FELHASZNALO (ID,NEV) values ('877','Szepesy Lilla');
Insert into FELHASZNALO (ID,NEV) values ('878','Sz�ts Tarj�n');
Insert into FELHASZNALO (ID,NEV) values ('879','Moln�r Teca');
Insert into FELHASZNALO (ID,NEV) values ('880','So�s Zerind');
Insert into FELHASZNALO (ID,NEV) values ('881','Danka Katarina');
Insert into FELHASZNALO (ID,NEV) values ('882','Torma Armand');
Insert into FELHASZNALO (ID,NEV) values ('883','Sz�ll�ssy Radom�r');
Insert into FELHASZNALO (ID,NEV) values ('884','Forg�ts �gnes');
Insert into FELHASZNALO (ID,NEV) values ('885','Sz�ke Kati');
Insert into FELHASZNALO (ID,NEV) values ('886','Forg�ts N�ra');
Insert into FELHASZNALO (ID,NEV) values ('887','L�rinc Viva');
Insert into FELHASZNALO (ID,NEV) values ('888','Sz�ts Bence');
Insert into FELHASZNALO (ID,NEV) values ('889','M�ty�s Zo�rd');
Insert into FELHASZNALO (ID,NEV) values ('890','F�ldy Pongor');
Insert into FELHASZNALO (ID,NEV) values ('891','T�th Adony');
Insert into FELHASZNALO (ID,NEV) values ('892','Sz�cs Nat�lia');
Insert into FELHASZNALO (ID,NEV) values ('893','B�nyay Szemere');
Insert into FELHASZNALO (ID,NEV) values ('894','Forg�ch Blanka');
Insert into FELHASZNALO (ID,NEV) values ('895','Gy�r�skaja �rkommand�');
Insert into FELHASZNALO (ID,NEV) values ('896','Gy�r�skaja �rkommand�');
Insert into FELHASZNALO (ID,NEV) values ('897','Nyer� Tippmix/Tippek');
Insert into FELHASZNALO (ID,NEV) values ('898','Szegedi kispalyas foci');
Insert into FELHASZNALO (ID,NEV) values ('899','Fitness, eg�szs�g, sport');
Insert into FELHASZNALO (ID,NEV) values ('900','Fut�felszerel�s, sporteszk�z');
Insert into FELHASZNALO (ID,NEV) values ('901','N�meth S�ndor P�sztor tan�tasai');
Insert into FELHASZNALO (ID,NEV) values ('902','Test - l�lek - szellem');
Insert into FELHASZNALO (ID,NEV) values ('903','Univerzum K�nyvt�ra');
Insert into FELHASZNALO (ID,NEV) values ('904','Szem�ttelep');
Insert into FELHASZNALO (ID,NEV) values ('905','Leesett? Ez v�resen komoly!');
Insert into FELHASZNALO (ID,NEV) values ('462','Gy�rfy N�ndor');
Insert into FELHASZNALO (ID,NEV) values ('463','Sipos Zsuzsi');
Insert into FELHASZNALO (ID,NEV) values ('464','Sz�l�si Bars');
Insert into FELHASZNALO (ID,NEV) values ('465','Illy�s Benedek');
Insert into FELHASZNALO (ID,NEV) values ('466','Bal�zs Gedeon');
Insert into FELHASZNALO (ID,NEV) values ('467','Gyarmaty Firenze');
Insert into FELHASZNALO (ID,NEV) values ('468','Kun Fredek');
Insert into FELHASZNALO (ID,NEV) values ('469','Szalai Solt');
Insert into FELHASZNALO (ID,NEV) values ('470','Sz�l�sy Bernadett');
Insert into FELHASZNALO (ID,NEV) values ('471','Kozma Gerzson');
Insert into FELHASZNALO (ID,NEV) values ('472','Gy�ri Szabolcs');
Insert into FELHASZNALO (ID,NEV) values ('473','B�nyai N�ra');
Insert into FELHASZNALO (ID,NEV) values ('474','Tar Kartal');
Insert into FELHASZNALO (ID,NEV) values ('475','Ber�nyi Asztrik');
Insert into FELHASZNALO (ID,NEV) values ('476','Tak�cz Farkas');
Insert into FELHASZNALO (ID,NEV) values ('477','Kov�ts Szebaszti�n');
Insert into FELHASZNALO (ID,NEV) values ('478','Hars�nyi Vayk');
Insert into FELHASZNALO (ID,NEV) values ('479','De�k Georgina');
Insert into FELHASZNALO (ID,NEV) values ('480','Mikl�s Marianna');
Insert into FELHASZNALO (ID,NEV) values ('481','Csizmazia Korn�l');
Insert into FELHASZNALO (ID,NEV) values ('482','Sz�ts Frigyes');
Insert into FELHASZNALO (ID,NEV) values ('483','Makai Klaudia');
Insert into FELHASZNALO (ID,NEV) values ('484','S�ghy Treszka');
Insert into FELHASZNALO (ID,NEV) values ('485','Simon Fl�ra');
Insert into FELHASZNALO (ID,NEV) values ('486','Fekete Alexa');
Insert into FELHASZNALO (ID,NEV) values ('487','Gy�rffy Liza');
Insert into FELHASZNALO (ID,NEV) values ('488','Sz�p Kende');
Insert into FELHASZNALO (ID,NEV) values ('489','D�m�t�r Karolina');
Insert into FELHASZNALO (ID,NEV) values ('490','Zsinka Viva');
Insert into FELHASZNALO (ID,NEV) values ('491','S�ghy Radom�r');
Insert into FELHASZNALO (ID,NEV) values ('492','Sz�ll Julcsa');
Insert into FELHASZNALO (ID,NEV) values ('493','Majer Hajnalka');
Insert into FELHASZNALO (ID,NEV) values ('494','Mark� Vanda');
Insert into FELHASZNALO (ID,NEV) values ('495','Szegedi Janka');
Insert into FELHASZNALO (ID,NEV) values ('496','Kiss Zsuzsanna');
Insert into FELHASZNALO (ID,NEV) values ('497','Benedek Gitta');
Insert into FELHASZNALO (ID,NEV) values ('498','Tot Zsombor');
Insert into FELHASZNALO (ID,NEV) values ('499','Bence Fanni');
Insert into FELHASZNALO (ID,NEV) values ('500','B�res Georgina');
Insert into FELHASZNALO (ID,NEV) values ('501','De�k Kadosa');
Insert into FELHASZNALO (ID,NEV) values ('502','Sa�gi Alberta');
Insert into FELHASZNALO (ID,NEV) values ('503','Nemes Nikoletta');
Insert into FELHASZNALO (ID,NEV) values ('504','Sebesty�n Lip�t');
Insert into FELHASZNALO (ID,NEV) values ('505','M�sz�ros Menyh�rt');
Insert into FELHASZNALO (ID,NEV) values ('506','Gy�rffi Keleman');
Insert into FELHASZNALO (ID,NEV) values ('507','Urb�n Csombor');
Insert into FELHASZNALO (ID,NEV) values ('508','Albert Viva');
Insert into FELHASZNALO (ID,NEV) values ('509','Hajnal Eszter');
Insert into FELHASZNALO (ID,NEV) values ('510','Jakab Gara');
Insert into FELHASZNALO (ID,NEV) values ('511','Luk�ts D�ra');
Insert into FELHASZNALO (ID,NEV) values ('512','Lang Ad�l');
Insert into FELHASZNALO (ID,NEV) values ('513','Er�s Roland');
Insert into FELHASZNALO (ID,NEV) values ('514','Mayer Kolos');
Insert into FELHASZNALO (ID,NEV) values ('515','Sz�l�s Dominik');
Insert into FELHASZNALO (ID,NEV) values ('516','Seb�k Liza');
Insert into FELHASZNALO (ID,NEV) values ('517','Pataki Beatrix');
Insert into FELHASZNALO (ID,NEV) values ('518','Bence Elizabet');
Insert into FELHASZNALO (ID,NEV) values ('519','Pataky Moricz');
Insert into FELHASZNALO (ID,NEV) values ('520','Sult�s Darda');
Insert into FELHASZNALO (ID,NEV) values ('521','Vig Agoti');
Insert into FELHASZNALO (ID,NEV) values ('522','Lov�sz Zal�n');
Insert into FELHASZNALO (ID,NEV) values ('523','F�l�p Jenci');
Insert into FELHASZNALO (ID,NEV) values ('524','Sz�ll�ssi Tivadar');
Insert into FELHASZNALO (ID,NEV) values ('525','Szathm�ri Hajnalka');
Insert into FELHASZNALO (ID,NEV) values ('526','Bern�th Liza');
Insert into FELHASZNALO (ID,NEV) values ('527','Lendvay Fredek');
Insert into FELHASZNALO (ID,NEV) values ('528','Sz�l�s Ny�k');
Insert into FELHASZNALO (ID,NEV) values ('529','Berta Vit�z');
Insert into FELHASZNALO (ID,NEV) values ('530','Sebesty�n Blanka');
Insert into FELHASZNALO (ID,NEV) values ('531','Sz�ll Hajnalka');
Insert into FELHASZNALO (ID,NEV) values ('532','V�g Bogl�rka');
Insert into FELHASZNALO (ID,NEV) values ('533','B�n Mar�t');
Insert into FELHASZNALO (ID,NEV) values ('534','Laczk� Enik�');
Insert into FELHASZNALO (ID,NEV) values ('535','Rig� Alex');
Insert into FELHASZNALO (ID,NEV) values ('536','M�ty�s Ivett');
Insert into FELHASZNALO (ID,NEV) values ('537','Bakos Juci');
Insert into FELHASZNALO (ID,NEV) values ('538','Seb�k Rez');
Insert into FELHASZNALO (ID,NEV) values ('539','Kom�romi Bertuska');
Insert into FELHASZNALO (ID,NEV) values ('540','S�ghi Oszl�r');
Insert into FELHASZNALO (ID,NEV) values ('541','Seres Ren�t�');
Insert into FELHASZNALO (ID,NEV) values ('542','Bagi Cintia');
Insert into FELHASZNALO (ID,NEV) values ('543','P�sztor R�ka');
Insert into FELHASZNALO (ID,NEV) values ('544','Kurutz Borb�la');
Insert into FELHASZNALO (ID,NEV) values ('545','Szil�gyi Gyuszi');
Insert into FELHASZNALO (ID,NEV) values ('546','Sult�s Szev�r');
Insert into FELHASZNALO (ID,NEV) values ('547','K�llay Dalma');
Insert into FELHASZNALO (ID,NEV) values ('548','F�ldesi Kata');
Insert into FELHASZNALO (ID,NEV) values ('549','Kuncz Ormos');
Insert into FELHASZNALO (ID,NEV) values ('550','Szepesi Oliv�r');
Insert into FELHASZNALO (ID,NEV) values ('551','Demeter Krisztofer');
Insert into FELHASZNALO (ID,NEV) values ('552','Erd�lyi Izsak');
Insert into FELHASZNALO (ID,NEV) values ('553','Ill�s Hunor');
Insert into FELHASZNALO (ID,NEV) values ('554','Vir�g Viktor');
Insert into FELHASZNALO (ID,NEV) values ('555','K�v�ri Tardos');
Insert into FELHASZNALO (ID,NEV) values ('556','Benk� Ilona');
Insert into FELHASZNALO (ID,NEV) values ('557','Bern�th J�zmin');
Insert into FELHASZNALO (ID,NEV) values ('558','Albert D�niel');
Insert into FELHASZNALO (ID,NEV) values ('559','Nagy N�ra');
Insert into FELHASZNALO (ID,NEV) values ('560','Bolla Menyh�rt');
Insert into FELHASZNALO (ID,NEV) values ('561','B�lint Juci');
Insert into FELHASZNALO (ID,NEV) values ('562','Mezey Kemenes');
Insert into FELHASZNALO (ID,NEV) values ('563','Farkas �gnes');
Insert into FELHASZNALO (ID,NEV) values ('564','V�radi Vanda');
Insert into FELHASZNALO (ID,NEV) values ('565','Heged?s Marianna');
Insert into FELHASZNALO (ID,NEV) values ('566','Torma Linka');
Insert into FELHASZNALO (ID,NEV) values ('567','Szalai Kartal');
Insert into FELHASZNALO (ID,NEV) values ('568','M�lner Lajos');
Insert into FELHASZNALO (ID,NEV) values ('569','Csizmadia Marika');
Insert into FELHASZNALO (ID,NEV) values ('570','R�tz G�za');
Insert into FELHASZNALO (ID,NEV) values ('571','Szak�ts Edina');
Insert into FELHASZNALO (ID,NEV) values ('572','R�zsa Zerind');
Insert into FELHASZNALO (ID,NEV) values ('573','Kov�ts Kinga');
Insert into FELHASZNALO (ID,NEV) values ('574','Balogh Beatrix');
Insert into FELHASZNALO (ID,NEV) values ('575','Bodo M�ria');
Insert into FELHASZNALO (ID,NEV) values ('576','Szatm�ry Nusi');
Insert into FELHASZNALO (ID,NEV) values ('577','Bogd�n B�lint');
Insert into FELHASZNALO (ID,NEV) values ('578','Balla Paliki');
Insert into FELHASZNALO (ID,NEV) values ('579','Hoffmann Franciska');
Insert into FELHASZNALO (ID,NEV) values ('580','Szabados Csan�d');
Insert into FELHASZNALO (ID,NEV) values ('581','L�szl� Annam�ria');
Insert into FELHASZNALO (ID,NEV) values ('582','M�lner Laborc');
Insert into FELHASZNALO (ID,NEV) values ('583','Bence Martuska');
Insert into FELHASZNALO (ID,NEV) values ('584','Fenyvesi Deli');
Insert into FELHASZNALO (ID,NEV) values ('585','Ga�l Marika');
Insert into FELHASZNALO (ID,NEV) values ('586','Fazakas M�ty�s');
Insert into FELHASZNALO (ID,NEV) values ('587','F�ldy Rebeka');
Insert into FELHASZNALO (ID,NEV) values ('588','Keresztes Regina');
Insert into FELHASZNALO (ID,NEV) values ('589','Pint�r Szonja');
Insert into FELHASZNALO (ID,NEV) values ('590','Lengyel Kamilla');
Insert into FELHASZNALO (ID,NEV) values ('591','K�v�ry Korn�l');
Insert into FELHASZNALO (ID,NEV) values ('592','M�rton Rezs�');
Insert into FELHASZNALO (ID,NEV) values ('593','Simko Viva');
Insert into FELHASZNALO (ID,NEV) values ('594','Thury Csenge');
Insert into FELHASZNALO (ID,NEV) values ('595','Ill�s Karole');
Insert into FELHASZNALO (ID,NEV) values ('596','Vig Katakin');
Insert into FELHASZNALO (ID,NEV) values ('597','Urb�n Zsa Zsa');
Insert into FELHASZNALO (ID,NEV) values ('598','K�v�ry Moricz');
Insert into FELHASZNALO (ID,NEV) values ('599','Kov�ts Marianna');
Insert into FELHASZNALO (ID,NEV) values ('600','M�lner Zsolt');
Insert into FELHASZNALO (ID,NEV) values ('601','Sz�cs Ibolya');
Insert into FELHASZNALO (ID,NEV) values ('602','Kalm�r Ferko');
Insert into FELHASZNALO (ID,NEV) values ('603','Lantos Uzor');
Insert into FELHASZNALO (ID,NEV) values ('604','Sallay Kamilla');
Insert into FELHASZNALO (ID,NEV) values ('605','Pusk�s Uros');
Insert into FELHASZNALO (ID,NEV) values ('606','Mark� Laura');
Insert into FELHASZNALO (ID,NEV) values ('607','L�rincz Boriska');
Insert into FELHASZNALO (ID,NEV) values ('608','P�sztor Jozsef');
Insert into FELHASZNALO (ID,NEV) values ('609','Czak� Enik�');
Insert into FELHASZNALO (ID,NEV) values ('610','Lengyel Lili�na');
Insert into FELHASZNALO (ID,NEV) values ('611','Herczegh Janka');
Insert into FELHASZNALO (ID,NEV) values ('612','Gy�rffy Ond');
Insert into FELHASZNALO (ID,NEV) values ('613','Demeter T�t�ny');
Insert into FELHASZNALO (ID,NEV) values ('614','S�gi Hajnalka');
Insert into FELHASZNALO (ID,NEV) values ('615','F�ldi Zsa Zsa');
Insert into FELHASZNALO (ID,NEV) values ('616','Sz�kely Ambrus');
Insert into FELHASZNALO (ID,NEV) values ('617','Orosz Titusz');
Insert into FELHASZNALO (ID,NEV) values ('618','Kuncz M�ty�s');
Insert into FELHASZNALO (ID,NEV) values ('619','Lov�sz Emese');
Insert into FELHASZNALO (ID,NEV) values ('620','Sebe�k Fruzsina');
Insert into FELHASZNALO (ID,NEV) values ('621','Sz�ll�sy Antal');
Insert into FELHASZNALO (ID,NEV) values ('622','Szak�ts Barbara');
Insert into FELHASZNALO (ID,NEV) values ('623','Simko Vince');
Insert into FELHASZNALO (ID,NEV) values ('624','Sipos Samuka');
Insert into FELHASZNALO (ID,NEV) values ('625','Gy�ry Margo');
Insert into FELHASZNALO (ID,NEV) values ('626','S�ghi Orb�n');
Insert into FELHASZNALO (ID,NEV) values ('627','Szak�ly �va');
Insert into FELHASZNALO (ID,NEV) values ('628','Sebesty�n Vince');
Insert into FELHASZNALO (ID,NEV) values ('629','Kert�sz Etilka');
Insert into FELHASZNALO (ID,NEV) values ('630','Szegedy Alex');
Insert into FELHASZNALO (ID,NEV) values ('631','Szathm�ry Gergo');
Insert into FELHASZNALO (ID,NEV) values ('632','R�v�sz Aurelia');
Insert into FELHASZNALO (ID,NEV) values ('633','J�zsa Tarcal');
Insert into FELHASZNALO (ID,NEV) values ('634','Danka Ladom�r');
Insert into FELHASZNALO (ID,NEV) values ('635','Salay Klaudia');
Insert into FELHASZNALO (ID,NEV) values ('636','Tak�ch Mil�n');
Insert into FELHASZNALO (ID,NEV) values ('637','Kov�cs Endre');
Insert into FELHASZNALO (ID,NEV) values ('638','M�t� Gy�rgy');
Insert into FELHASZNALO (ID,NEV) values ('639','Polg�r Reg?');
Insert into FELHASZNALO (ID,NEV) values ('640','Fenyvessy Erzsi');
Insert into FELHASZNALO (ID,NEV) values ('641','Csizmazia Brigitta');
Insert into FELHASZNALO (ID,NEV) values ('642','Bogd�n Angyalka');
Insert into FELHASZNALO (ID,NEV) values ('643','Fodor Mikl�s');
Insert into FELHASZNALO (ID,NEV) values ('644','Vir�gh Gy�rgy');
Insert into FELHASZNALO (ID,NEV) values ('645','Csizmazia Gisella');
Insert into FELHASZNALO (ID,NEV) values ('646','Szepessy Evike');
Insert into FELHASZNALO (ID,NEV) values ('647','J�sa Hajna');
Insert into FELHASZNALO (ID,NEV) values ('648','V�rady Benj�min');
Insert into FELHASZNALO (ID,NEV) values ('649','N�met Ktisztina');
Insert into FELHASZNALO (ID,NEV) values ('650','Vince Kartal');
Insert into FELHASZNALO (ID,NEV) values ('651','Donka Ozor');
Insert into FELHASZNALO (ID,NEV) values ('652','Mark� Gizi');
Insert into FELHASZNALO (ID,NEV) values ('653','Kecsk�s Bogl�rka');
Insert into FELHASZNALO (ID,NEV) values ('654','Mezei Klaudia');
Insert into FELHASZNALO (ID,NEV) values ('655','K�v�ry Bartalan');
Insert into FELHASZNALO (ID,NEV) values ('656','Csizmadia Darda');
Insert into FELHASZNALO (ID,NEV) values ('657','Kalm�r Cseke');
Insert into FELHASZNALO (ID,NEV) values ('658','Ujv�ri Solt');
Insert into FELHASZNALO (ID,NEV) values ('659','P�ter Ork�ny');
Insert into FELHASZNALO (ID,NEV) values ('660','G�l Kende');
Insert into FELHASZNALO (ID,NEV) values ('661','G�sp�r Mil�n');
Insert into FELHASZNALO (ID,NEV) values ('662','Keresztes R�ka');
Insert into FELHASZNALO (ID,NEV) values ('663','Borb�s Roza');
Insert into FELHASZNALO (ID,NEV) values ('664','Schmidt Aliz');
Insert into FELHASZNALO (ID,NEV) values ('665','Pete Teca');
Insert into FELHASZNALO (ID,NEV) values ('666','Madar�sz Zsolt');
Insert into FELHASZNALO (ID,NEV) values ('667','K�d�r Szabolcs');
Insert into FELHASZNALO (ID,NEV) values ('668','Feh�r Zsanett');
Insert into FELHASZNALO (ID,NEV) values ('669','F�ldi Ktisztina');
Insert into FELHASZNALO (ID,NEV) values ('670','Vincze Krisztina');
Insert into FELHASZNALO (ID,NEV) values ('671','Schulteisz Rezs�');
Insert into FELHASZNALO (ID,NEV) values ('672','Papp Klaudia');
Insert into FELHASZNALO (ID,NEV) values ('673','F�l�p Gyula');
Insert into FELHASZNALO (ID,NEV) values ('674','Sz�ll�s Patony');
Insert into FELHASZNALO (ID,NEV) values ('675','Toth Zsombor');
Insert into FELHASZNALO (ID,NEV) values ('676','Pet� Bodi');
Insert into FELHASZNALO (ID,NEV) values ('677','Guly�s Erssike');
Insert into FELHASZNALO (ID,NEV) values ('678','Vargha Paliki');
Insert into FELHASZNALO (ID,NEV) values ('679','Czak� M�ty�s');
Insert into FELHASZNALO (ID,NEV) values ('680','Ga�l Samuka');
Insert into FELHASZNALO (ID,NEV) values ('681','Ga�l Emese');
Insert into FELHASZNALO (ID,NEV) values ('682','Zsinka Szabolcs');
Insert into FELHASZNALO (ID,NEV) values ('683','Sz�l�si Csongor');
Insert into FELHASZNALO (ID,NEV) values ('684','Polak Bal�zs');
Insert into FELHASZNALO (ID,NEV) values ('685','Horv�t Ormos');
Insert into FELHASZNALO (ID,NEV) values ('686','Bertha D�niel');
Insert into FELHASZNALO (ID,NEV) values ('687','Bencze S�lyom');
Insert into FELHASZNALO (ID,NEV) values ('688','Herceg Marcell');
Insert into FELHASZNALO (ID,NEV) values ('689','Gera Bettina');
Insert into FELHASZNALO (ID,NEV) values ('690','R�v�sz Bartalan');
Insert into FELHASZNALO (ID,NEV) values ('691','Kelemen Zo�rd');
Insert into FELHASZNALO (ID,NEV) values ('692','F�ldi Bianka');
Insert into FELHASZNALO (ID,NEV) values ('693','Pethe Gisella');
Insert into FELHASZNALO (ID,NEV) values ('694','Szak�ts Ozsv�t');
Insert into FELHASZNALO (ID,NEV) values ('695','Kulcs�r Lehel');
Insert into FELHASZNALO (ID,NEV) values ('696','S�gi Barnab�s');
Insert into FELHASZNALO (ID,NEV) values ('697','Guly�s Szalyk');
Insert into FELHASZNALO (ID,NEV) values ('698','Smitt Laura');
Insert into FELHASZNALO (ID,NEV) values ('699','M�llner Eszti');
Insert into FELHASZNALO (ID,NEV) values ('700','Szegedi Hajna');
Insert into FELHASZNALO (ID,NEV) values ('701','Borb�s Sasa');
Insert into FELHASZNALO (ID,NEV) values ('702','V�g Florka');
Insert into FELHASZNALO (ID,NEV) values ('703','Vad�sz Evelin');
Insert into FELHASZNALO (ID,NEV) values ('704','Kuncz �gnes');
Insert into FELHASZNALO (ID,NEV) values ('705','Borsos Ren�t�');
Insert into FELHASZNALO (ID,NEV) values ('706','R�cz Keve');
Insert into FELHASZNALO (ID,NEV) values ('707','V�gh Atilla');
Insert into FELHASZNALO (ID,NEV) values ('708','M�lner Malcsi');
Insert into FELHASZNALO (ID,NEV) values ('709','Szalay Hajnalka');
Insert into FELHASZNALO (ID,NEV) values ('710','Havass Izabella');
Insert into FELHASZNALO (ID,NEV) values ('711','Moln�r Kriszti�n');
Insert into FELHASZNALO (ID,NEV) values ('712','Csontos Folkus');
Insert into FELHASZNALO (ID,NEV) values ('713','Herczeg Lip�t');
Insert into FELHASZNALO (ID,NEV) values ('714','Vass Robi');
Insert into FELHASZNALO (ID,NEV) values ('715','K�rp�thy Bettina');
Insert into FELHASZNALO (ID,NEV) values ('716','Erd�lyi Anci');
Insert into FELHASZNALO (ID,NEV) values ('717','Kocsis M�ria');
Insert into FELHASZNALO (ID,NEV) values ('718','Schmid Angyalka');
Insert into FELHASZNALO (ID,NEV) values ('719','Feh�r Szilveszter');
Insert into FELHASZNALO (ID,NEV) values ('720','Kun Kat');
Insert into FELHASZNALO (ID,NEV) values ('721','Mester Andr�s');
Insert into FELHASZNALO (ID,NEV) values ('722','Benedek Taksony');
Insert into FELHASZNALO (ID,NEV) values ('723','Polg�r Tomaj');
Insert into FELHASZNALO (ID,NEV) values ('724','Radics Kardos');
Insert into FELHASZNALO (ID,NEV) values ('725','Papp �kos');
Insert into FELHASZNALO (ID,NEV) values ('726','Barna P�ter');
Insert into FELHASZNALO (ID,NEV) values ('727','Szalay Franciska');
Insert into FELHASZNALO (ID,NEV) values ('728','Sinko Ambrus');
Insert into FELHASZNALO (ID,NEV) values ('729','Weress Neci');
Insert into FELHASZNALO (ID,NEV) values ('730','Fenyvessy Erzsok');
Insert into FELHASZNALO (ID,NEV) values ('731','Meyer L�rinc');
Insert into FELHASZNALO (ID,NEV) values ('732','Vagner Rykus');
Insert into FELHASZNALO (ID,NEV) values ('733','Luk�ts Treszka');
Insert into FELHASZNALO (ID,NEV) values ('734','Mayer Krisztina');
Insert into FELHASZNALO (ID,NEV) values ('735','Kontz Rozalia');
Insert into FELHASZNALO (ID,NEV) values ('736','Ill�s Adojan');
Insert into FELHASZNALO (ID,NEV) values ('737','Vas Tarcal');
Insert into FELHASZNALO (ID,NEV) values ('738','Sz�ll�ssy Gara');
Insert into FELHASZNALO (ID,NEV) values ('739','Kerekes Piusz');
Insert into FELHASZNALO (ID,NEV) values ('740','S�gy Gizi');
Insert into FELHASZNALO (ID,NEV) values ('741','Havassy Roland');
Insert into FELHASZNALO (ID,NEV) values ('742','J�zsa Patony');
Insert into FELHASZNALO (ID,NEV) values ('743','Polach Lenci');
Insert into FELHASZNALO (ID,NEV) values ('744','Bolla Soma');
Insert into FELHASZNALO (ID,NEV) values ('745','Czak� Etilka');
Insert into FELHASZNALO (ID,NEV) values ('746','Sz�ke G�za');
Insert into FELHASZNALO (ID,NEV) values ('747','Szigethy Ilona');
Insert into FELHASZNALO (ID,NEV) values ('748','Sz�ll�si J�zmin');
Insert into FELHASZNALO (ID,NEV) values ('749','Mester Aranka');
Insert into FELHASZNALO (ID,NEV) values ('750','B�n Lilla');
Insert into FELHASZNALO (ID,NEV) values ('751','Baranyay Alexa');
Insert into FELHASZNALO (ID,NEV) values ('752','Sz�ll�ssi Melinda');
Insert into FELHASZNALO (ID,NEV) values ('753','Tar Csenger');
Insert into FELHASZNALO (ID,NEV) values ('754','Szak�l Evelin');
Insert into FELHASZNALO (ID,NEV) values ('755','L�rinc Zal�n');
Insert into FELHASZNALO (ID,NEV) values ('756','Fenyves T�nde');
Insert into FELHASZNALO (ID,NEV) values ('757','Smit Martuska');
Insert into FELHASZNALO (ID,NEV) values ('758','Sz�ll Laura');
Insert into FELHASZNALO (ID,NEV) values ('759','S�s Paliki');
Insert into FELHASZNALO (ID,NEV) values ('760','Pap Julcsa');
Insert into FELHASZNALO (ID,NEV) values ('761','Gy�rfi Gyuszi');
Insert into FELHASZNALO (ID,NEV) values ('762','Poly�k Nusi');
Insert into FELHASZNALO (ID,NEV) values ('763','Majoros Tas');
Insert into FELHASZNALO (ID,NEV) values ('764','Fekete Jolan');
Insert into FELHASZNALO (ID,NEV) values ('765','Sz�l�si Patr�cia');
Insert into FELHASZNALO (ID,NEV) values ('461','Kardos T�nde');
Insert into FELHASZNALO (ID,NEV) values ('1','asdf asdf');
Insert into FELHASZNALO (ID,NEV) values ('2','VALAKI');
Insert into FELHASZNALO (ID,NEV) values ('1010','Kovacs Imre');
Insert into FELHASZNALO (ID,NEV) values ('1026','jozsef ur');
Insert into FELHASZNALO (ID,NEV) values ('1044','Valaki Valaki');
Insert into FELHASZNALO (ID,NEV) values ('1023','asdfa');
Insert into FELHASZNALO (ID,NEV) values ('1024','asdfasdf');
Insert into FELHASZNALO (ID,NEV) values ('1025','asdqwe');
Insert into FELHASZNALO (ID,NEV) values ('1020','Kovacs Jozsef');
Insert into FELHASZNALO (ID,NEV) values ('1045','Valaki2');
REM INSERTING into HOBBI
SET DEFINE OFF;
Insert into HOBBI (HOBBIID,NEV) values ('1','Agyagoz�s');
Insert into HOBBI (HOBBIID,NEV) values ('2','�llatgondoz�s');
Insert into HOBBI (HOBBIID,NEV) values ('3','�llatidom�t�s');
Insert into HOBBI (HOBBIID,NEV) values ('4','Amat�r r�di�z�s');
Insert into HOBBI (HOBBIID,NEV) values ('5','Amerikai futball');
Insert into HOBBI (HOBBIID,NEV) values ('6','Asztaliteniszez�s');
Insert into HOBBI (HOBBIID,NEV) values ('7','Atl�tika');
Insert into HOBBI (HOBBIID,NEV) values ('8','Aut�versenyz�s');
Insert into HOBBI (HOBBIID,NEV) values ('9','Barlang�szat');
Insert into HOBBI (HOBBIID,NEV) values ('10','Baseball');
Insert into HOBBI (HOBBIID,NEV) values ('11','B�lyeggy�jt�s');
Insert into HOBBI (HOBBIID,NEV) values ('12','Bicikliz�s');
Insert into HOBBI (HOBBIID,NEV) values ('13','Bili�rdoz�s');
Insert into HOBBI (HOBBIID,NEV) values ('14','Biogazd�lkod�s');
Insert into HOBBI (HOBBIID,NEV) values ('15','Blogol�s');
Insert into HOBBI (HOBBIID,NEV) values ('16','Bork�stol�s');
Insert into HOBBI (HOBBIID,NEV) values ('17','Bungee Jumping');
Insert into HOBBI (HOBBIID,NEV) values ('18','B�v�rkod�s');
Insert into HOBBI (HOBBIID,NEV) values ('19','B�v�szked�s');
Insert into HOBBI (HOBBIID,NEV) values ('20','Cosplayez�s');
Insert into HOBBI (HOBBIID,NEV) values ('21','Cukr�szkod�s');
Insert into HOBBI (HOBBIID,NEV) values ('22','Csillag�szat');
Insert into HOBBI (HOBBIID,NEV) values ('23','Dalszerz�s');
Insert into HOBBI (HOBBIID,NEV) values ('24','Dartsoz�s');
Insert into HOBBI (HOBBIID,NEV) values ('25','�kszerk�sz�t�s');
Insert into HOBBI (HOBBIID,NEV) values ('26','H�ll�figyel�s');
Insert into HOBBI (HOBBIID,NEV) values ('27','�j�szat');
Insert into HOBBI (HOBBIID,NEV) values ('28','�r�s');
Insert into HOBBI (HOBBIID,NEV) values ('29','J�gkorcsoly�z�s');
Insert into HOBBI (HOBBIID,NEV) values ('30','J�gszobr�szat');
Insert into HOBBI (HOBBIID,NEV) values ('31','J�ga');
Insert into HOBBI (HOBBIID,NEV) values ('32','Kagyl�gy�jt�s');
Insert into HOBBI (HOBBIID,NEV) values ('33','Kajakoz�s');
Insert into HOBBI (HOBBIID,NEV) values ('34','K�rty�z�s');
Insert into HOBBI (HOBBIID,NEV) values ('35','Kempingel�s');
Insert into HOBBI (HOBBIID,NEV) values ('36','Kenuz�s');
Insert into HOBBI (HOBBIID,NEV) values ('37','K�peslapgy�jt�s');
Insert into HOBBI (HOBBIID,NEV) values ('38','K�preg�nygy�jt�s');
Insert into HOBBI (HOBBIID,NEV) values ('39','K�zilabda');
Insert into HOBBI (HOBBIID,NEV) values ('40','Kincskeres�s');
Insert into HOBBI (HOBBIID,NEV) values ('41','Komposzt�l�s');
Insert into HOBBI (HOBBIID,NEV) values ('42','�jrahasznos�t�s');
Insert into HOBBI (HOBBIID,NEV) values ('43','Sz�nt�s');
Insert into HOBBI (HOBBIID,NEV) values ('61','Nincs');
REM INSERTING into ISKOLA
SET DEFINE OFF;
Insert into ISKOLA (ISKOLAID,NEV) values ('92','Schola Europa Akad�mia Szakk�pz� Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('93','Kenderf�ld-Som�gi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('94','Kod�ly Zolt�n �nek-Zenei Katolikus �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('95','Szilv�si �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('96','Szilv�si �ltal�nos Iskola Fels�szilv�si �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('97','Boldog Gizella Katolikus �voda �s �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('98','Szent Imre Katolikus �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('99','Szent Imre Katolikus Iskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('100','Szt�rai Mih�ly Reform�tus �ltal�nos Iskola �s �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('101','Budai V�roskapu �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('102','Budai-V�roskapu �ltal�nos Iskola B�rtfa Utcai �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('103','L�nycs�ki �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('104','Lipp�i G�rdonyi G�za �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('105','Frey J�nos �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('106','Olaszi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('107','Sombereki �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('108','Sombereki �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Dunaszekcs�i Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('109','Szederk�nyi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('110','Szederk�nyi �ltal�nos Iskola Babarci Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('111','Szederk�nyi �ltal�nos Iskola Borj�di Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('112','Szederk�nyi �ltal�nos Iskola Szajki Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('113','V�m�ndi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('114','Berkesdi Fekete Istv�n �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('115','Bog�di Dr. Berze Nagy J�nos �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('116','Koz�rmislenyi Janikovszky �va �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('117','Pell�rdi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('118','Pell�rdi �ltal�nos Iskola Gy�di Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('119','Pell�rdi �ltal�nos Iskola G�rcs�nyi �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('120','Beremendi �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('121','Dr�vaszabolcsi K�rzeti �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('122','Dr�vaszt�rai �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('123','Egyh�zasharaszti K�rzeti �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('124','Egyh�zasharaszti K�rzeti �ltal�nos Iskola Sikl�snagyfalui Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('125','Kitaibel P�l �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('126','Kitaibel P�l �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Dr�vaszabolcsi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('127','Munk�csy Albert �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('128','Munk�csy Albert �ltal�nos Iskola Belev�ry Ferenc Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('129','Magyarb�lyi Nyelvoktat� Nemzetis�gi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('130','Magyarmecskei �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('131','Kiss G�za �ltal�nos Iskola �s Zenei Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('132','Kiss G�za �ltal�nos Iskola �s Zenei Alapfok� M�v�szeti Iskola Cs�nyoszr�i Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('133','Szal�ntai �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('134','Szal�ntai �ltal�nos Iskola Arany J�nos �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('135','�jpetrei �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('136','Vajszl�i Kodol�nyi J�nos Szakk�z�piskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('137','P�csi Ap�czai Csere J�nos �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('138','P�csi Ap�czai Csere J�nos �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('139','Moh�csi Kisfaludy K�roly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('140','Sikl�si T�ncsics Mih�ly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('141','Sikl�si T�ncsics Mih�ly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('142','Sikl�si T�ncsics Mih�ly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('143','Sikl�si T�ncsics Mih�ly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('144','Sikl�si T�ncsics Mih�ly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('145','Sikl�si T�ncsics Mih�ly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('146','Sikl�si T�ncsics Mih�ly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('147','Sikl�si T�ncsics Mih�ly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('148','Sikl�si T�ncsics Mih�ly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('149','Sikl�si T�ncsics Mih�ly Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('150','D�l-Zselic �ltal�nos Iskola Istv�nffy Mikl�s �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('151','D�l-Zselic Tin�di Lantos Sebesty�n �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('152','D�l-Zselic �ltal�nos Iskola K�t�jfalui Konr�d Ign�c �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('153','D�l-Zselic �ltal�nos Iskola Nagydobszai �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('154','D�l-Zselic �ltal�nos Iskola Nagypeterd-R�zsafai �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('155','D�l-Zselic �ltal�nos Iskola Nagypeterd-R�zsafai �ltal�nos Iskol�ja  Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('156','D�l-Zselic �ltal�nos Iskola Somogyap�ti �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('157','D�l-Zselic �ltal�nos Iskola Somogyap�ti �ltal�nos Iskol�ja Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('158','D�l-Zselic �ltal�nos Iskola Szentl�szl�i �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('159','D�l-Zselic �ltal�nos Iskola Mozsg�i Lengyelt�ti J�nos �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('160','P�csi Tudom�nyegyetem Gyakorl� �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('161','Pte Gyakorl� �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('162','Pte Gyakorl� �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('163','P�csi Janus Pannonius Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('164','P�csi Reform�tus Koll�gium Gimn�ziuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('165','P�csi Reform�tus Koll�gium "E" �p�let');
Insert into ISKOLA (ISKOLAID,NEV) values ('166','P�csi Reform�tus Koll�gium Sportcsarnoka');
Insert into ISKOLA (ISKOLAID,NEV) values ('167','P�csi Reform�tus Koll�gium Csikesz S�ndor �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('168','P�csi Reform�tus Koll�gium Nagyhars�nyi �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('169','Gandhi Gimn�zium �s Koll�gium');
Insert into ISKOLA (ISKOLAID,NEV) values ('170','Gandhi Gimn�zium �s Koll�gium Komj�t Utcai Telephely');
Insert into ISKOLA (ISKOLAID,NEV) values ('171','Baptista Szeretetszolg�lat Ejsz Sz�chenyi Istv�n Gimn�ziuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('172','Baptista Szeretetszolg�lat Ejsz Sz�chenyi Istv�n Gimn�ziuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('173','Baptista Szeretetszolg�lat Ejsz Sz�chenyi Istv�n Gimn�ziuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('174','P�csi M�v�szeti Gimn�zium �s Szakk�z�piskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('175','Moh�csi Radn�ti Mikl�s Koll�gium');
Insert into ISKOLA (ISKOLAID,NEV) values ('176','Pte Szoci�lis �s Eg�szs�g�gyi Szakk�pz� Iskola Szent-Gy�rgyi Albert Tagint�zm�nye');
Insert into ISKOLA (ISKOLAID,NEV) values ('177','P�csi Tudom�nyegyetem Szoci�lis �s Eg�szs�g�gyi Szakk�pz� Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('178','Szabadsz�ll�si Pet�fi S�ndor �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('179','Szabadsz�ll�si Pet�fi S�ndor �ltal�nos Iskola R�k�czi T�ri Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('180','Bajai E�tv�s J�zsef �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('181','Bajai E�tv�s J�zsef �ltal�nos Iskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('182','Bajai Szentistv�ni �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('183','Bajai Szentistv�ni �ltal�nos Iskola Arany J�nos Tagint�zm�nye');
Insert into ISKOLA (ISKOLAID,NEV) values ('184','Bajai Szentistv�ni �ltal�nos Iskola Cs�volyi Tagint�zm�nye');
Insert into ISKOLA (ISKOLAID,NEV) values ('185','�jv�rosi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('186','�jv�rosi �ltal�nos Iskola Fels�v�rosi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('187','Nagyasszonyunk Katolikus �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('188','Emberi Er�forr�sok Miniszt�riuma Kalocsai Gyermekotthon');
Insert into ISKOLA (ISKOLAID,NEV) values ('189','Kecskem�ti F�iskola Pet�fi S�ndor Gyakorl� �ltal�nos Iskola �s Gyakorl� �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('190','Kecskem�ti Reform�tus �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('191','Szent J�zsef Katolikus �ltal�nos Iskola �s �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('192','Kiskunhalasi Fazekas Mih�ly �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('193','Kiskunhalasi Fazekas Mih�ly �ltal�nos Iskola Zsanai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('194','Kiskunhalasi Fazekas Mih�ly �ltal�nos Iskola Balotasz�ll�si Tagint�zm�nye');
Insert into ISKOLA (ISKOLAID,NEV) values ('195','Kiskunhalasi Fels�v�rosi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('196','Kiskunhalasi Fels�v�rosi �ltal�nos Iskola Pirt�i Tagint�zm�nye');
Insert into ISKOLA (ISKOLAID,NEV) values ('197','Kiskunhalasi Reform�tus Koll�gium K�zponti �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('198','Kiskunhalasi Reform�tus Koll�gium K�zponti �ltal�nos Iskola Gy. Szab� B�la Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('199','Kiskunhalasi Kertv�rosi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('200','Tiszak�cskei Reform�tus �ltal�nos Iskola �s Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('201','Szent Gell�rt Katolikus �ltal�nos Iskola �s �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('202','Varga Domokos �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('203','Varga Domokos �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Alapfok� M�v�szeti Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('204','Varga Domokos �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Tassi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('205','Varga Domokos �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Kunpesz�ri Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('206','Varga Domokos �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Szabadsz�ll�si Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('207','Varga Domokos �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Dunaegyh�zi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('208','Varga Domokos �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Apostagi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('209','Szent Anna Katolikus �voda �s �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('210','Szent Anna Katolikus �voda �s �ltal�nos Iskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('211','Garai Nemzetis�gi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('212','Hercegsz�nt�i Horv�t Tan�t�si Nyelv� �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('213','Hercegsz�nt�i Horv�t Tan�t�si Nyelv� �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('214','Hercegsz�nt�i Horv�t Tan�t�si Nyelv� �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('215','S�k�sdi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('216','Szeremle-Dunafalva �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('217','Szeremle-Dunafalva �ltal�nos Iskola Dunafalvai Tagint�zm�nye');
Insert into ISKOLA (ISKOLAID,NEV) values ('218','Vask�ti N�met Nemzetis�gi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('219','Vask�ti N�met Nemzetis�gi �ltal�nos Iskola Becsei T�tt�s Tagint�zm�nye');
Insert into ISKOLA (ISKOLAID,NEV) values ('220','Haj�si Szent Imre �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('221','Haj�si Szent Imre �ltal�nos Iskola Miskei T�th Menyh�rt �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('222','Hartai R�day P�l �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('223','Solti V�csey K�roly �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Zsolt Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('224','Dunavecsei Pet�fi S�ndor �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('225','Dunavecsei Pet�fi S�ndor �ltal�nos Iskola H�s�k Terei Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('226','Dunavecsei Pet�fi S�ndor �ltal�nos Iskola Zr�nyi Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('227','Dunavecsei Reform�tus Koll�gium Gr�f Teleki J�zsef �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('228','Dunavecsei Reform�tus Koll�gium Gr�f Teleki J�zsef �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('229','Dunavecsei Reform�tus Koll�gium Mez�gazdas�gi Gazda- �s Gazdasszonyk�pz� Szakiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('230','Dunavecsei Reform�tus Koll�gium Gr�f Teleki J�zsef �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('231','Izs�ki T�ncsics Mih�ly �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('232','Kecskem�ti Bolyai J�nos Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('233','Kecskem�ti Bolyai J�nos Gimn�zium N�meth L�szl� Gimn�ziuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('234','Kiskunf�legyh�zi M�ra Ferenc Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('235','Kiskunf�legyh�zi M�ra Ferenc Gimn�zium Veszpr�mi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('236','Kiskunf�legyh�zi M�ra Ferenc Gimn�zium Szegedi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('237','Kiskunf�legyh�zi M�ra Ferenc Gimn�zium Sz�kesfeh�rv�r Budai �ti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('238','Kiskunf�legyh�zi M�ra Ferenc Gimn�zium Cegl�di Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('239','Kiskunf�legyh�zi M�ra Ferenc Gimn�zium Kecskem�ti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('240','Kiskunf�legyh�zi M�ra Ferenc Gimn�zium Sz�kesfeh�rv�r Sereg�lyesi Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('241','Kiskunf�legyh�zi M�ra Ferenc Gimn�zium Kalocsai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('242','Kiskunf�legyh�zi M�ra Ferenc Gimn�zium Kistarcsai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('243','Baksay S�ndor Reform�tus Gimn�zium �s �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('244','Baksay S�ndor Reform�tus Gimn�zium �s �ltal�nos Iskola Endr�dy Istv�n Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('245','Piarista Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('246','Piarista Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('247','Kiskunhalasi Bib� Istv�n Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('248','Kecskem�ti Reform�tus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('249','M�ricz Zsigmond �ltal�nos Iskola Als�-Tagozat');
Insert into ISKOLA (ISKOLAID,NEV) values ('250','M�ricz Zsigmond �ltal�nos Iskola �s Gimn�zium Tiszab�gi Tagiskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('251','M�ricz �ltal�nos Iskola �s Gimn�zium Koll�giuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('252','Tiszak�cskei M�ricz Zsigmond �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('253','M�ricz Zsigmond �ltal�nos Iskola �s Gimn�zium Elt�r� Tanterv� Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('254','M�ricz Zsigmond �ltal�nos Iskola �s Gimn�zium Alapfok� M�v�szeti Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('255','M�ricz Zsigmond �ltal�nos Iskola �s Gimn�zium Tiszab�gi Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('256','M�ricz Zsigmond �ltal�nos Iskola Tornaterme');
Insert into ISKOLA (ISKOLAID,NEV) values ('257','Kiskunhalasi Reform�tus Koll�gium Szil�dy �ron Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('258','Kiskunhalasi Reform�tus Koll�gium Szil�dy �ron Gimn�zium 002 Telephely');
Insert into ISKOLA (ISKOLAID,NEV) values ('259','Szent L�szl� �ltal�nos M�vel�d�si K�zpont');
Insert into ISKOLA (ISKOLAID,NEV) values ('260','Szent L�szl� �ltal�nos M�vel�d�si K�zpont �ltal�nos Iskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('261','B�k�si Kist�rs�gi �voda �s B�lcs�de G�lyaf�szek B�lcs�de');
Insert into ISKOLA (ISKOLAID,NEV) values ('262','Napk�ziotthonos �voda �s B�lcs�de Szeghalom Kossuth Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('263','Mez�ber�ny V�ros �vodai Int�zm�nye �vodai Tornaterem');
Insert into ISKOLA (ISKOLAID,NEV) values ('264','K�z�s Igazgat�s� �vodai �s B�lcs�dei Int�zm�ny B�lcs�dei Tagint�zm�ny');
Insert into ISKOLA (ISKOLAID,NEV) values ('265','B�k�scsabai Kazinczy Ferenc �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('266','B�k�scsabai Kazinczy Ferenc �ltal�nos Iskola Csaba Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('267','B�k�scsabai Szent L�szl� Utcai �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('268','Jankay Tibor K�t Tan�t�si Nyelv� �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('269','Jankay Tibor K�t Tan�t�si Nyelv� �ltal�nos Iskola Thurz� Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('270','Jankay Tibor K�t Tan�t�si Nyelv� �ltal�nos Iskola Dedinszky Gyula Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('271','Lencs�si �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('272','Lencs�si �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('273','Gerlai �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('274','Savio Szent Domonkos Katolikus �ltal�nos Iskola �s �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('275','Savio Szent Domonkos Katolikus �ltal�nos Iskola �s �voda Telekgerend�si Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('276','Savio Szent Domonkos Katolikus �ltal�nos Iskola �s �voda Gerend�s F�rd� Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('277','Savio Szent Domonkos Katolikus �ltal�nos Iskola �s �voda Kamut Pet�fi Utcai Iskolai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('278','Savio Szent Domonkos Katolikus �ltal�nos Iskola �s �voda Nagyb�nhegyes Kossuth Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('279','Csorv�si Guly�s Mih�ly �ltal�nos �s Alapfok� M�v�szeti Iskola Z�lds�geskert Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('280','Csorv�si Guly�s Mih�ly �ltal�nos �s Alapfok� M�v�szeti Iskola F�v�szkert Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('281','Csorv�si Guly�s Mih�ly �ltal�nos �s Alapfok� M�v�szeti Iskola K�s�rleti Kert Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('282','Dobozi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('283','Kondorosi Pet�fi Istv�n �ltal�nos �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('284','Kondorosi Pet�fi Istv�n �ltal�nos �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('285','K�r�starcsai Arany Guszt�v �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('286','Gyulai R�mai Katolikus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('287','Gyulai R�mai Katolikus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('288','Gyulai R�mai Katolikus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('289','Gyulai R�mai Katolikus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('290','Gyulai R�mai Katolikus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('291','Tisza K�lm�n Szakk�pz� Iskola B�k�s');
Insert into ISKOLA (ISKOLAID,NEV) values ('292','B�k�scsabai Belv�rosi �ltal�nos Iskola �s Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('293','Szeber�nyi Guszt�v Adolf Evang�likus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('294','Szeber�nyi Guszt�v Adolf Evang�likus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('295','Szeber�nyi Guszt�v Adolf Evang�likus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('296','Jank� J�nos �ltal�nos Iskola �s Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('297','B�k�scsabai Bart�k B�la M�v�szeti Szakk�z�piskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('298','Sz�kely Mih�ly �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('299','E�tv�s J�zsef Iskolaalap�tv�ny Szakk�z�piskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('300','G�nd�cs Benedek K�z�piskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('301','G�nd�cs Benedek K�z�piskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('302','G�nd�cs Benedek K�z�piskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('303','G�nd�cs Benedek K�z�piskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('304','G�nd�cs Benedek K�z�piskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('305','Ils K�z�s Igazgat�s� K�znevel�si Int�zm�ny Szakk�z�piskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('306','Tessedik S�muel Szakiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('307','Tessedik S�muel Szakiskola Tanm�helye');
Insert into ISKOLA (ISKOLAID,NEV) values ('308','Es�ly Pedag�giai K�zpont �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('309','Es�ly Pedag�giai K�zpont �voda');
Insert into ISKOLA (ISKOLAID,NEV) values ('310','Szegedi Kis Istv�n Reform�tus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('311','Szegedi Kis Istv�n Reform�tus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('312','Szegedi Kis Istv�n Reform�tus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('313','Szegedi Kis Istv�n Reform�tus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('314','Szegedi Kis Istv�n Reform�tus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('315','Szegedi Kis Istv�n Reform�tus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('316','Szegedi Kis Istv�n Reform�tus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('317','Szegedi Kis Istv�n Reform�tus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('318','Szegedi Kis Istv�n Reform�tus Gimn�zium');
Insert into ISKOLA (ISKOLAID,NEV) values ('319','Sch�ner Mih�ly �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('320','Sch�ner Mih�ly �ltal�nos Iskola J�kai Utca 5. Sz�m Alatti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('321','Sch�ner Mih�ly �ltal�nos Iskola Szent Istv�n Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('322','Sch�ner Mih�ly �ltal�nos Iskola J�kai Utca 3. Sz�m Alatti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('323','Mez�k�vesdi �voda �s B�lcs�de De�k Ferenc �ti B�lcs�d�je');
Insert into ISKOLA (ISKOLAID,NEV) values ('324','�j Es�ly Oktat�si K�zpont 002-Es Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('325','�j Es�ly Oktat�si K�zpont 007-Es Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('326','�j Es�ly Oktat�si K�zpont 008-As Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('327','�j Es�ly Oktat�si K�zpont 011-Es Telephely');
Insert into ISKOLA (ISKOLAID,NEV) values ('328','�j Es�ly Oktat�si K�zpont 012-Es Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('329','Konyha �s �tkezde');
Insert into ISKOLA (ISKOLAID,NEV) values ('330','Encsi Zr�nyi Ilona �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('331','Encsi Zr�nyi Ilona �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Bem J�zsef Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('332','Encsi Zr�nyi Ilona �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola Csob�di Tagint�zm�nye');
Insert into ISKOLA (ISKOLAID,NEV) values ('333','Encsi Zr�nyi Ilona �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola F�g�di Tagint�zm�nye');
Insert into ISKOLA (ISKOLAID,NEV) values ('334','Kazincbarcikai Pollack Mih�ly �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('335','Kazincbarcikai Pollack Mih�ly �ltal�nos Iskola �rp�d Fejedelem Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('336','Kazincbarcikai Pollack Mih�ly �ltal�nos Iskola Kazinczy Ferenc Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('337','Kazincbarcikai Pollack Mih�ly �ltal�nos Iskola �d�m Jen� Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('338','Kazincbarcikai Pollack Mih�ly �ltal�nos Iskola D�zsa Gy�rgy Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('339','Kazincbarcikai Pollack Mih�ly �ltal�nos Iskola G�rdonyi G�za Tagiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('340','Tisza�jv�rosi �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('341','Tisza�jv�rosi �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola De�k T�ri Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('342','Tisza�jv�rosi �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola R�zsa �ti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('343','Tisza�jv�rosi �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola V�ndor S�ndor Zeneiskol�ja');
Insert into ISKOLA (ISKOLAID,NEV) values ('344','Szent Istv�n Katolikus �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('345','Szent Istv�n Katolikus �ltal�nos Iskola Kossuth Lajos �ti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('346','�zdi �rp�d Vez�r �ltal�nos Iskola Domah�zi Tagint�zm�nye');
Insert into ISKOLA (ISKOLAID,NEV) values ('347','�zdi �rp�d Vez�r �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('348','Cs�p�nyi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('349','Cs�p�nyi �ltal�nos Iskola �zd');
Insert into ISKOLA (ISKOLAID,NEV) values ('350','�zdi Ap�czai Csere J�nos �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('351','�zdi Ap�czai Csere J�nos �ltal�nos Iskola �zd');
Insert into ISKOLA (ISKOLAID,NEV) values ('352','Farkaslyuki �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('353','�zdi Pet�fi S�ndor �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('354','Saj�v�rkonyi �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('355','Saj�v�rkonyi �ltal�nos Iskola Mekcsey Istv�n �t 118.Sz Alatti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('356','Saj�v�rkonyi �ltal�nos Iskola Mekcsey Istv�n �t 211. Sz. Alatti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('357','�jv�ros T�ri �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('358','Vasv�r �ti �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('359','Vasv�r �ti �ltal�nos Iskola Tehets�ggondoz� K�zpont');
Insert into ISKOLA (ISKOLAID,NEV) values ('360','Bolyky Tam�s �ltal�nos Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('361','P�czeli J�zsef �ltal�nos Iskola �s Alapfok� M�v�szeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('371','ISKOLA');
Insert into ISKOLA (ISKOLAID,NEV) values ('372','ISKOLA2');
Insert into ISKOLA (ISKOLAID,NEV) values ('373','ISKOLA3');
Insert into ISKOLA (ISKOLAID,NEV) values ('374','ISKOLA4');
Insert into ISKOLA (ISKOLAID,NEV) values ('375','Nincs');
REM INSERTING into ISMER
SET DEFINE OFF;
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('730','714','1',to_timestamp('17-�PR.  -01 11.34.07,067000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('650','740','1',to_timestamp('17-FEBR. -03 11.34.21,889000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('674','675','1',to_timestamp('17-�PR.  -01 11.34.42,417000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('670','675','1',to_timestamp('17-�PR.  -20 15.48.00,404000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('1026','1020','1',to_timestamp('17-�PR.  -23 19.14.08,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('678','670','1',to_timestamp('17-�PR.  -20 19.10.30,813000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('670','679','1',to_timestamp('17-�PR.  -20 19.26.21,061000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('675','679','1',to_timestamp('17-�PR.  -20 22.35.38,439000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('675','740','1',to_timestamp('17-�PR.  -20 22.35.55,559000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('1020','670','1',to_timestamp('17-�PR.  -24 23.32.01,000000000','RR-MON-DD HH24.MI.SSXFF'));
REM INSERTING into KEPEK
SET DEFINE OFF;
Insert into KEPEK (ALBUMNEV,ALBUMIDO,ELERESIUT,ID,POSZTID) values ('neha',to_timestamp('17-�PR.  -28 11.30.06,479000000','RR-MON-DD HH24.MI.SSXFF'),'http://localhost:80/Kozossegi/upload/149337180613453854_1368875973127497_1069609054_n.jpg','144','109');
Insert into KEPEK (ALBUMNEV,ALBUMIDO,ELERESIUT,ID,POSZTID) values ('Profilk�pek',to_timestamp('17-�PR.  -28 11.36.43,087000000','RR-MON-DD HH24.MI.SSXFF'),'http://localhost:80/Kozossegi/kep2.jpg','145',null);
REM INSERTING into KLUB
SET DEFINE OFF;
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('897','752',to_date('17-M�RC. -29','RR-MON-DD'),'Sportfogad�ssal foglalkoz� csoport. Ha hirdetni, rekl�mozni szeretn�l �rj egy Nyer� Tippmix/Tippek adminnak');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('898','780',to_date('17-M�RC. -29','RR-MON-DD'),'Azert hoztam letre ezt a csoportot,hogy konnyebben tudjunk szervezni mindenfele kispalyas focit itt Szegeden. Igy mindenki egy helyen ertesulhet az epp aktualis focirol, talan igy kevesebb embert kell felhivnunk telefonon es sms-t irni.');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('896','750',to_date('17-M�RC. -29','RR-MON-DD'),'Akci�s csirkemell? Olcs� marhah�s? Fill�rek�rt l�tt�l rizst? Ha b�rmi kaja akci�t l�tsz, ami meg�r egy megoszt�st, told be nyugodtan!');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('899','749',to_date('17-M�RC. -29','RR-MON-DD'),'Fitness! Eg�szs�g tudatoss�g! Sport! T�pl�lkoz�studom�ny �s Biogenikus �letvitel. - k�z�ss�g, ahol j� helyen vagy!');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('900','782',to_date('17-M�RC. -29','RR-MON-DD'),'Minden sporttal kapcsolatos eszk�z, s�lyz�, fut�felszerel�s,t�pl�l�k kieg�szt�, cip�, ruh�zat, haszn�lt �s �j egyar�nt, ad�s-v�tel �s csere lehet�s�gekkel');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('901','745',to_date('17-M�RC. -29','RR-MON-DD'),'Ez egy kereszt?ny csoport melyben N�meth S�ndor p�sztor tan�t�sai �sszegy�jtve tal�lhat�ak.A Csoportot nem N�meth S�ndor kezeli.');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('902','670',to_date('17-M�RC. -29','RR-MON-DD'),'Besz�lgethettek, elmondhatj�tok a v�lem�nyeteket az al�bbi t�mak�r�kben.');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('903','790',to_date('17-M�RC. -29','RR-MON-DD'),'Az oldalon tobb kulfoldi iras is elofordul az utobbi hetekben, ez annak is koszonheto, hogy vannak koztunk kulfoldi tagok is, masreszt sajnos ido hianyaban nem tudom oket magyarra leforditani. megerteseteket koszonom.');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('904','787',to_date('17-M�RC. -29','RR-MON-DD'),'�dv�z�llek a Szem�ttelep csoportban, egy oldalon, mely TAGJAI sz�rakoztat�s�nak c�lj�b�l j�tt l�tre!');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('905','786',to_date('17-M�RC. -29','RR-MON-DD'),'Ez egy humoros csoport, csal�dias l�gk�rrel, b�rkit sz�vesen fogadunk. A kultur�lt viccel�d�sig minden megengedett.');
REM INSERTING into LAKHELY
SET DEFINE OFF;
Insert into LAKHELY (LAKHELYID,NEV) values ('1','Szeged');
Insert into LAKHELY (LAKHELYID,NEV) values ('2','Budapest');
Insert into LAKHELY (LAKHELYID,NEV) values ('21','Nincs');
REM INSERTING into MUNKAHELY
SET DEFINE OFF;
Insert into MUNKAHELY (MUNKAHELYID,NEV) values ('1','Wombat Industries');
Insert into MUNKAHELY (MUNKAHELYID,NEV) values ('2','Red Slip Factory');
Insert into MUNKAHELY (MUNKAHELYID,NEV) values ('3','Red Oliver Inc');
Insert into MUNKAHELY (MUNKAHELYID,NEV) values ('4','Ipanema Systems');
Insert into MUNKAHELY (MUNKAHELYID,NEV) values ('5','Town Square Inc');
Insert into MUNKAHELY (MUNKAHELYID,NEV) values ('21','Nincs');
REM INSERTING into NEVNAP
SET DEFINE OFF;
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hug�','4','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Humbert','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('H�m�r','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hunor','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ibolya','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ibr�ny','10','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ida','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iduna','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ifig�nia','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ign�c','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ign�cia','7','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Igor','9','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ila','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Il�rion','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ildefonz','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ildik�','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ili�n','10','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ilka','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ill�s','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ilma','4','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ilm�r','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ilona','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imbert','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imelda','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Immakul�ta','12','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imm�nuel','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imog�n','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imola','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imre','11','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ince','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Indira','4','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Inez','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Inge','7','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ingrid','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Innocencia','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ipoly','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ir�n','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ir�neusz','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Irina','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iring�','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�risz','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Irma','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Istv�n','8','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Itala','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iv�n','6','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iv�na','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ivett','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ivetta','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iv�','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ivonn','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ivor','9','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ixion','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iza','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izabel','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izabella','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izai�s','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izi�s','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izidor','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izid�ra','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izmael','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izm�ne','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izolda','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izor','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iz�ra','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izrael','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izs�k','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izs�','8','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�cint','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�cinta','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jagell�','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jakab','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�k�','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�kob','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jakobina','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jakus','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Janina','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Janka','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�nos','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Janu�r','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�rf�s','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jarmila','3','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�vorka','9','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�zmin','2','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�zon','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jella','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jen�','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jeremi�s','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jerm�k','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jerne','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jeromos','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jetta','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Joakim','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�b','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Joel','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Johanna','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jol�n','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jol�nta','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�n�s','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jonat�n','8','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jord�n','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jozaf�t','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jozefa','2','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jozefina','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�zsa','3','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�zsef','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�zsi�s','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�zsua','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Judit','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jukundusz','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�lia','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Julianna','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Juli�nusz','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Julietta','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Julitta','5','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('J�n�','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jusztin','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jusztina','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jusztus','8','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jusztusz','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jutas','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jutta','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Juven�l','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kabos','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kada','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kadosa','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kajet�n','8','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�jusz','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�l','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�ldor','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kalliop�','6','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kalliszta','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�lm�n','10','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�mea','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kam�lia','8','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kamil','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kamill','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kamilla','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kamill�','7','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�n','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kandid','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kandida','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kanut','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kapisztr�n','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kaplony','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kapolcs','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kar�cson','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kar�csony','12','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kar�d','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kardos','1','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karina','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karion','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�rm�n','8','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karm�la','7','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karmelina','7','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�rmen','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karola','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karolina','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�roly','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karsa','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kartal','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kasszi�n','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�szon','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kasztor','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kata','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Katalin','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Katap�n','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Katinka','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kat�','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kazimir','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�zm�r','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Keled','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kelemen','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kelen','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kemenes','8','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kende','9','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kenese','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ken�z','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kerecsen','12','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ker�ny','3','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kereszt�ly','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kerubina','6','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kesz�','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Keve','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kil�ny','11','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kili�n','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kili�na','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kincs�','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kinga','7','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kira','8','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kirill','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kisanna','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kitti','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kl�ra','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klarissza','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klaudetta','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klaudia','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klemencia','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klementina','10','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kleof�s','8','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kleon','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kleop�tra','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kl�tus','4','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kli�','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klotild','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kocs�rd','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Koletta','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kolombina','10','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kolombusz','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kolos','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kolumb�n','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kolumbusz','12','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Konkordia','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Konr�d','2','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Konstancia','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Konstantin','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Konstantina','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kont','7','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kopp�ny','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kord�lia','10','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Koridon','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Korinna','10','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Koriol�n','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Korn�l','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Korn�lia','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Korvin','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�sa','9','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�t�ny','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kozima','9','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kozma','9','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kreszcencia','4','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Krist�f','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kriszta','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kriszti�n','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Krisztina','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Krizanta','10','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Krizosztom','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kund','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kunigunda','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kun�','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kursz�n','11','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('K�rt','2','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Laborc','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ladiszla','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ladom�r','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lajos','8','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lambert','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lamberta','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lantos','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Larina','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Larion','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�szl�','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Laura','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Laurencia','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lav�nia','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�z�r','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lea','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leander','2','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�da','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lehel','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leila','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�l','3','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lelle','4','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�na','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�n�rd','10','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lenke','7','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Le�','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leon','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leona','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leon�rd','11','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leonarda','11','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leonid�sz','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leon�ra','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leontina','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leopold','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leopoldina','11','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lest�r','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Let�cia','8','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Levendula','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Levente','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lia','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Li�na','6','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Liander','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Liber�tusz','8','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lib�riusz','9','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Libor','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�dia','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lili','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lilian','8','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lili�na','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Liliom','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lilla','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lina','9','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Linda','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lionel','6','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lip�t','4','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�via','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�viusz','9','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Liza','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lizander','11','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lizandra','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lola','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lolita','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lor�nd','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�r�nt','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lor�na','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Loretta','12','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�rinc','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lot�r','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lotti','11','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Luca','7','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('L�cia','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Luci�n','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Luciusz','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ludmilla','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ludovika','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lujza','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Luk�cs','2','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lukr�cia','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mabella','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Madl�na','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Magda','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Magdal�na','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Magdolna','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Magnusz','9','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mah�lia','4','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maja','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Majl�t','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Makabeus','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mak�r','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Malaki�s','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Malvin','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�lyva','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manass�','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manda','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manfr�d','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manfr�da','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manna','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Man�','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manon','8','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manszv�t','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�nuel','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manu�la','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mara','6','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marcell','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marcella','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marcellina','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marci�n','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Margar�ta','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Margit','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Margitta','10','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marg�','2','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�ria','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mari�n','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mariann','8','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marianna','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marica','7','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marietta','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marina','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marinella','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marinetta','8','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�ri�','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marion','9','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mari�ra','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marita','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�riusz','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�rk','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mark�','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�rkus','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marl�ne','7','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mar�t','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�rta','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Martin','11','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Martina','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�rton','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Martos','11','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Masa','8','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�t�','9','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Matild','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�tka','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�ty�s','2','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maura','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maur�cia','9','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maxim','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maxima','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maximili�n','3','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maximilla','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Med�rd','6','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Med�rda','6','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�dea','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Megyer','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mel�nia','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Melina','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Melinda','10','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Meli�ra','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Melissza','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Meliton','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Melitta','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Meluzina','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�n�s','10','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mendel','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Menod�ra','9','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�nr�t','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Menta','8','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Menyh�rt','1','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Merc�desz','9','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Merse','8','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Metella','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Met�d','2','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Metta','3','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mia','8','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mietta','7','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Miha�la','6','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mih�ly','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mike','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mike�s','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mikes','5','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mikl�s','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mikolt','9','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Miksa','3','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mil�n','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milda','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milemon','11','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mil�na','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Miletta','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milica','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milla','7','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milos','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mim�za','8','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�na','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�nea','12','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Minerva','5','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Minna','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�ra','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirabella','7','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirandella','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirandola','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirandolina','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirella','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirjam','8','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirk�','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Miron','8','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirtill','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Modeszta','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Modesztusz','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�nika','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Montika','8','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�r','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Morella','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Morgan','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�ric','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�zes','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Muriel','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('M�zsa','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nadinka','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('N�dja','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('N�ndor','5','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nanett','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nanetta','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nap�leon','5','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Napsug�r','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Narcisszusz','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('N�rcisz','10','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('N�rciusz','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('N�sfa','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nat�lia','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('N�t�n','8','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Natasa','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nauzika','7','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nedda','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nefelejcs','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nelli','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nemere','12','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nepomuk','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nerina','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Neszta','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nesztor','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Netta','6','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('N�tus','2','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikander','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nik�','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nik�t�s','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikod�m','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikod�mia','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikod�musz','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikola','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikolett','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nilla','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nimfa','11','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nimr�d','8','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nina','11','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ninett','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ninetta','7','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ninon','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Niob�','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('No�','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Noel','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('No�mi','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('N�na','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('N�nusz','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('N�ra','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Norbert','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Norberta','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Norina','10','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Norma','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Norman','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ny�k','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nyeste','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oberon','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Odett','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Od�lia','10','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Odil�','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Odisszeusz','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Od�','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�d�n','10','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Of�lia','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oguz','11','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Okt�via','4','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Okt�vi�n','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Olaf','7','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Olga','6','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Olimpia','12','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Olinda','7','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oliv�r','3','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ol�via','3','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Om�r','9','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ompoly','5','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ond','6','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Opika','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Or�lia','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orb�n','4','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orb�','6','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orchidea','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oreszt�sz','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orfeusz','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orgona','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ori�na','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orion','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�rk�ny','7','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ormos','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oros','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�rs','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�rsi','6','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orsika','10','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orsolya','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�rzse','11','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Osszi�n','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�szike','9','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oszk�r','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oszl�r','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oszvald','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oszvalda','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Otell�','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ot�lia','12','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Otm�r','11','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ott�','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ottok�r','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ovidiusz','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ox�na','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�zike','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ozmin','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�zs�b','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ozsv�t','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('P�l','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('P�lma','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pal�ma','9','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pam�la','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pamfil','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pamina','8','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Panna','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pantaleon','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('P�ris','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Paszk�l','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pasztorella','5','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Patony','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Patr�cia','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Patr�cius','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Patrik','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Paula','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Paulina','2','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('P�zm�n','8','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pel�gia','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pel�giusz','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pelb�rt','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pellegrin','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('P�nelop�','6','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pentele','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pe�nia','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Peregrina','4','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Perenna','6','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Perikl�sz','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Perj�mos','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Perp�tua','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('P�ter','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pet�','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petra','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petronella','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petr�nia','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petr�niusz','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pet�nia','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petur','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pil�d�sz','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pinty�ke','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Piramusz','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Piroska','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Piusz','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Placid','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Placida','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polett','2','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polidor','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('P�lika','3','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polik�rp','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polina','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polix�na','7','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polla','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pompilla','7','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pomp�nia','9','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pongor','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pongr�c','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Poppea','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Porfir','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Primusz','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Priszcilla','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rab�n','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radamesz','4','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radiszl�','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rad�','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radom�r','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rados','11','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radov�n','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radv�ny','11','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rafael','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rafaella','1','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�fis','10','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�hel','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rajmund','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rajmunda','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rajnald','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ram�n','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ram�na','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�polt','11','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�told','11','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Raul','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Razmus','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�zsony','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rea','9','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rebeka','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Regina','9','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Reginald','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Reg�','6','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�ka','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Relinda','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rella','10','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rem�nyke','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Remig','10','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�musz','10','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ren�ta','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ren�t�','9','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ren�','10','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�ta','7','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rezeda','5','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�zm�n','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rezs�','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ria','7','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rich�rd','2','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rikarda','9','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rita','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Riza','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�bert','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Roberta','4','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Robertina','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Robin','4','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rodelinda','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rodion','9','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rodrig�','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�kus','8','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Roland','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rolf','11','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rom�n','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rom�na','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�me�','2','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Romola','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Romuald','2','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Romulusz','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rov�na','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rox�na','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�za','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Roz�lia','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozalinda','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozamunda','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozanna','9','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozina','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozita','8','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozmarin','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('R�zsa','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozvita','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ruben','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rubina','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rudolf','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rudolfina','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rufina','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rufusz','11','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rupert','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ruperta','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ruszalka','9','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ruszl�n','7','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ruszl�na','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rusztem','10','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('S�ba','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Salamon','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('S�mson','6','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Samu','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('S�muel','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Samuella','8','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('S�ndor','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('S�ra','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sarolt','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sarolta','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Saul','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sebes','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sebesty�n','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Seb�','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Seherez�d�','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sejla','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Semj�n','10','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Simeon','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Simon','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Skolasztika','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Solt','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('S�lyom','9','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Soma','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Stef�nia','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Stella','5','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sud�rka','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sug�rka','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sur�ny','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szabella','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szabin','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szabina','8','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szabolcs','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szal�rd','7','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szal�z','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szal�k','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szal�me','6','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szalv�tor','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szalvia','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szalviusz','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szandra','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szaniszl�','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szav�ta','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szeb�ld','8','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szecs�','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szederke','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szegf�','7','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szelem�r','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szelim','9','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szelina','10','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szell�ke','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szemere','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szemir�misz','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szem�ke','7','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szendike','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sz�nia','7','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szer�f','10','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szerafina','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szer�na','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szer�nusz','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szergiusz','9','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szerv�c','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szev�r','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szever�d','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szeverin','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szibilla','3','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szid�nia','6','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szidor','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szigfrid','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilam�r','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szil�rd','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szil�rda','9','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilas','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilv�na','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilv�nusz','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilveszter','11','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilvia','11','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilvi�','11','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilviusz','4','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szim�na','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szimonetta','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szir�n','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sz�riusz','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szironka','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szixtusz','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sz�fia','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szofron','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szofr�nia','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sz�krat�sz','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sz�l�t','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szol�n','5','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szonja','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szon�ra','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sz�r�d','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sz�r�nke','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sz�r�ny','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szorina','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szov�t','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szulamit','6','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szult�na','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szvetlana','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�bita','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�cia','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tacitusz','2','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Taddeus','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�d�','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Taksony','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Talabor','7','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Talam�r','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�lia','5','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tamara','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tam�s','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tan�zia','8','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tankr�d','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tar�z','2','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tarcal','2','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tardos','9','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tarj�n','5','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�rk�ny','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tarz�cia','8','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tarziciusz','8','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tas','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Taszil�','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tatj�na','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tavaszka','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tea','8','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tekla','8','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Telma','9','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�misz','12','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�nia','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Te�','9','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teobald','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teobalda','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teodolinda','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teodor','8','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teod�ra','2','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teod�zia','4','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teof�nia','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teofil','3','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teofila','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Te�nia','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tercia','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teresty�n','11','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ter�z','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ter�zia','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tertullia','4','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tessza','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�t�ny','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�tisz','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�zeusz','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tib�d','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tib�riusz','8','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tibold','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tibor','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tiborc','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�cia','8','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tici�na','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tiham�r','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tilda','3','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tilla','3','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�mea','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Timon','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tim�t','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tim�tea','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Timur','7','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tina','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�ria','8','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tirzusz','10','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tit�n','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tit�nia','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Titanilla','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Titusz','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tivadar','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�bia','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�bi�s','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�dor','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�h�t�m','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tomaj','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tom�zia','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tomor','7','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�m�r','10','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tonuz�ba','12','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�rtel','8','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Toszka','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Traj�nusz','8','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Triszt�n','2','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tulip�n','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tullia','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('T�nde','4','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tuzson','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ubul','3','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�dv�ske','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ugod','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ugor','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ugron','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ul�szl�','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulisszesz','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulj�na','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulla','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulpi�n','4','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulrik','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulrika','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Upor','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ur�nia','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Urb�n','4','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Urb�na','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uri�s','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uriel','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uros','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Urzula','10','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Urzulina','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uzonka','7','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uzor','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vajk','8','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Valdem�r','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Valentin','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Valentina','2','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Val�r','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Val�ria','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Valter','4','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vanda','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vanessza','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('V�rkony','7','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vars�ny','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vaszilia','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('V�szoly','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('V�zsony','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vazul','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Velmira','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vencel','9','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vendel','6','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vendelina','10','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('V�nusz','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vera','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Verb�na','7','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ver�na','7','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Verita','9','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Verner','4','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Veron','7','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Veronika','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vers�ny','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Veszta','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('V�ta','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Veturia','7','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vi�tor','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vid','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vida','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vidor','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vidos','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viktor','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vikt�ria','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viktorina','9','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vilhelmina','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vilibald','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vilja','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vill�','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vilma','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vilmos','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vince','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vincencia','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viola','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Violetta','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viorika','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vir�g','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Virgil','3','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Virg�lia','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Virg�nia','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vita','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vit�lia','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vit�lis','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vit�z','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vitold','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vitolda','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vitus','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vivi�na','12','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vivien','12','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vladimir','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Volfram','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vulfia','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vulk�n','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Xav�r','12','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Xav�ria','12','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('X�nia','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Z�dor','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Z�gon','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zajzon','12','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zak�ria','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zakari�s','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zakeus','8','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zal�n','3','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zamfira','8','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Z�mor','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zar�nd','6','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zdenka','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zdenk�','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zebulon','8','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zek�','4','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zelinda','9','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zella','9','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zelma','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zelmira','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zenina','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Z�n�','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zen�bia','10','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zerind','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Z�ta','12','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Z�t�ny','2','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zia','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zilia','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zina','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zinajda','10','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zita','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zo�rd','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zobor','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zo�','5','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Z�ja','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Z�ldike','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zolna','6','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zolt�n','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zolt�na','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zombor','8','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zomilla','7','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Z�ra','6','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zor�n','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zotmund','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsad�ny','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsaklin','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsanett','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsanna','5','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zselyke','4','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zseni','12','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zseraldin','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zseraldina','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsigmond','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsinett','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zs�fia','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zs�ka','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsolt','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsombor','4','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zs�liet','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsuzsa','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsuzsanna','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zulejka','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aba','11','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ab�d','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abb�s','8','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abdi�s','11','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�bel','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abel�rd','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ab�lia','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abi�ta','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abig�l','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abod','11','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abony','7','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�brah�m','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�bris','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Absa','9','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Absolon','3','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Achilles','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Acic�t','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Acs�d','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ada','7','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adalbert','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adalberta','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�d�m','9','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ad�l','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adelaida','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adelgunda','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ad�lia','12','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adelina','7','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adelinda','8','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adelm�r','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adeod�t','6','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adina','7','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adol�r','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adolf','2','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adony','6','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adorj�n','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adri�n','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adri�na','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adrienn','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Afrodit�','8','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ag�d','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agapion','4','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ag�ta','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agaton','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agen�r','8','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aggeus','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agl�ja','2','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agm�nd','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agnella','12','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�gnes','1','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agn�ta','1','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�gost','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�gosta','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�goston','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�gota','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�him','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ahmed','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aida','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aj�d','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aj�nd�k','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ajna','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ajn�cska','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ajtony','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ak�cs','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�kos','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alad�r','2','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aladin','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alajos','6','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Al�n','9','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Al�rd','9','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alba','12','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Albert','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alberta','5','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Albertina','4','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Albin','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Albina','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alda','4','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ald�n','8','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�ld�ska','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ald�','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�ldor','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Al�na','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aletta','12','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alex','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alexa','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alexandra','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alexia','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alfonz','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alfonza','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alfonzina','8','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alfr�d','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alfr�da','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Algernon','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ali','8','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Al�cia','5','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alida','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alina','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alinda','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alinka','12','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aliz','6','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alma','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Almir�na','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�lmos','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alojzia','6','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Al�ma','6','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alp�r','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alvi�n','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alvina','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Am�bel','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amad�','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amadea','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amadil','9','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Am�lia','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amand','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amanda','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amaranta','11','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amarilla','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amarillisz','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Am�ta','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Am�zia','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ambos','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ambr�','12','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ambr�zia','12','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ambrus','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Am�lia','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amelita','8','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ametiszt','10','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amina','8','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aminta','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�mon','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�mos','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amrita','12','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anaszt�z','1','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anaszt�zia','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anatol','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ancilla','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anda','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Andor','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Andos','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Andr�s','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Andrea','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anett','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anetta','6','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ang�la','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Angelika','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Angelina','7','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Angelus','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Angyalka','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aniella','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anik�','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anilla','7','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anina','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anita','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aniziusz','12','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anna','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Annabella','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Annam�ria','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Annunci�ta','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antal','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antigon','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antigon�','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anton','6','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antonella','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ant�nia','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antonietta','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antos','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�nyos','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anzelm','4','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anzelma','4','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apolka','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apollin�r','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apollin�ria','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apoll�','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apoll�nia','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apor','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apostol','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Appia','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apr�d','12','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arabella','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aranka','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arany','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Archib�ld','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ar�t�sz','10','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ariadn�','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ari�n','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arianna','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ariel','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ariella','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arika','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arik�n','8','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arion','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arisztid','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arita','10','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ark�d','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�rkos','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Armand','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Armanda','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Armandina','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Armida','9','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Armilla','9','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�rmin','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arn�','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arnold','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arnolda','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arn�t','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�ron','4','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�rp�d','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arszl�n','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Artemisz','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Artem�szia','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Artemon','10','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Art�r','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�rv�cska','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arvid','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arz�n','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Asszunta','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aszp�zia','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aszter','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Asztrid','11','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('At�d','11','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atala','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atalanta','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('At�lia','12','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atan�z','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atan�zia','8','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('At�n�','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atilla','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atlasz','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atos','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Attila','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Auguszta','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Augusztina','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aura','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aur�l','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aur�lia','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aur�li�n','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aur�ra','10','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Avarka','11','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aven�r','7','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Axel','9','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Az�lea','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Az�r','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Azucs�na','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Azurea','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Babett','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�cs','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bagam�r','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baj�n','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bajnok','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baksa','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balab�n','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balamb�r','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bal�r','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bal�zs','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balbina','3','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balda','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bald�','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baldvin','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�lint','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ball�','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baltaz�r','1','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�n','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Band�','7','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�nk','3','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�nos','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barab�s','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baracs','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barakony','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barbara','12','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bard�','6','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barl�m','11','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barna','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barnab�s','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bar�t','7','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bars','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�rsonyka','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bartal','8','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bart�','8','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bartos','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bat�','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�tony','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�tor','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bazil','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bazs�','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bea','7','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Be�ta','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Beatrix','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Becse','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bed�','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Beg�nia','9','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�ke','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bek�ny','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bek�','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�la','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Beli�n','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Belinda','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Beliz�r','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bella','8','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ben�ta','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bence','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bende','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bendeg�z','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bene','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benedek','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benedetta','8','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benedikta','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�ni','3','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benigna','5','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benignusz','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benj�min','1','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benjamina','3','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benke','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benk�','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benn�','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ben�','3','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bercel','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bere','8','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bereng�r','5','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Berenik�','7','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ber�ny','10','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Berill','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Beriszl�','12','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bernadett','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bernarda','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bern�t','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Berta','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bertalan','8','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bertilla','11','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bertina','9','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bertold','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bertolda','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bertram','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bese','6','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Betta','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Betti','11','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bettina','8','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bianka','8','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bibi�na','12','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�bor','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�bora','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�borka','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Blandina','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Blanka','8','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bo�z','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bocs�rd','6','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bod','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bod�','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�dog','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bodom�r','12','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bodony','8','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bodor','8','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bog�rka','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bog�t','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bog�ta','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bogd�n','9','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bogl�r','8','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bogl�rka','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Boj�na','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�k�ny','12','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bolda','7','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Boldizs�r','1','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Boliv�r','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bonavent�ra','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�ng�r','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bonif�c','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('B�nis','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Borb�la','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Borb�s','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Boriska','12','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Borisz','5','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bor�ka','12','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bors','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Borsa','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Borsika','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bot�r','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Botond','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Botty�n','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bozsid�r','11','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bozs�ka','7','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Brigitta','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Britta','10','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Br�n�','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Br�tusz','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Buda','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bulcs�','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Buz�d','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Buz�s','12','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cec�lia','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cec�li�n','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Celerina','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Celeszta','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Celesztin','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Celesztina','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('C�lia','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Celina','7','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('C�z�r','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cezarina','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cicelle','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cicer�','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cikl�men','11','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cinnia','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cintia','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cipri�n','9','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cipri�na','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cirill','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cirilla','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cirj�k','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('C�rus','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csaba','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cs�k','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csan�d','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cs�t','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csat�d','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csat�r','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csat�','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cseg�','4','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cseke','8','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csendike','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csenge','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csenger','11','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cs�p�n','8','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csepel','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cseperke','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cserj�n','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cserne','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csilla','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csillag','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csinszka','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csob�d','12','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csob�n','8','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csombor','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csongor','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cs�rsz','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dagobert','12','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dagom�r','9','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�lia','10','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dalibor','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dalida','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dalma','5','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dam�z','12','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Damj�n','9','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Damos','9','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�niel','1','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Daniella','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Danil�','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�nos','11','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Darinka','2','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�rius','10','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�vid','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dea','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Deb�ra','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dejte','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Deli','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�lia','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�lib�b','8','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Delila','12','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Delinke','11','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dem�ny','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Demeter','9','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Demetria','6','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Demj�n','9','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�nes','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Deod�t','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ders','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Detre','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�vald','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dezdem�na','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�zi','5','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dezider�ta','5','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dezs�r','12','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dezs�','2','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Di�na','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dina','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Diom�d','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dion�zia','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ditm�r','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ditta','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�kus','12','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dolli','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dol�resz','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dolor�za','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dom�n','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�me','4','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domici�n','5','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dominika','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domitilla','5','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domokos','5','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domonkos','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domos','10','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�m�s','10','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�m�t�r','4','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Donald','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Don�t','2','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Don�ta','7','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Donatella','7','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�niz','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('D�ra','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dori�n','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dorina','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dorisz','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dorka','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dorm�n','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dorottya','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Duk�sz','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dulcinea','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dus�n','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�da','12','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edda','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ede','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edg�r','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edina','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edit','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edmond','11','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edna','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ed�m�r','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�dua','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edv�rd','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edvarda','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edvin','10','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edvina','10','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Efraim','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Egbert','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Egberta','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Egmont','3','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Egon','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Egyed','2','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elek','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elektra','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elem�r','2','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eleon�ra','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�letke','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elfrida','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eli�na','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�li�s','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eligiusz','12','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elina','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eliz','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eliza','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elizeus','6','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ella','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ell�k','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ellina','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elma','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elm�r','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elmira','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elm�','7','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('El�d','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elvira','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elza','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Em�nuel','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emanu�la','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emerencia','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emerita','9','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emese','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emil','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Em�lia','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emili�n','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emili�na','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emma','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emmi','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Em�d','2','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Em�ke','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Enci�na','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Endre','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('En�','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�ne�s','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Engelbert','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Engelhard','3','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Enid','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Enik�','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Enna','9','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�nok','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eperke','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erazmus','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erhard','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erik','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erika','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erina','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ermelinda','10','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erna','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ern�k','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ernella','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erneszta','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ernesztina','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ern�','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ernye','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ervin','4','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ervina','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erzs�bet','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Estilla','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eszmeralda','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Esztella','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eszter','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eta','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ete','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Etel','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Etele','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Etelka','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eudoxia','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Euf�mia','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eufrozina','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eug�n','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eug�nia','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eul�lia','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eunik�','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Euridik�','8','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Euszt�k','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eutim','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eut�mia','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Euz�bia','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�va','7','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�vald','10','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Evariszt','10','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Evelin','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Evelina','5','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Evetke','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ez�kiel','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('�zsai�s','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('F�bi�n','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fabi�na','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fabi�la','12','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('F�biusz','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fab�','5','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fabr�cius','3','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fanni','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Farkas','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('F�ta','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fatima','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fatime','6','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fausztina','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fausztusz','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fedor','7','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fed�ra','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('F�dra','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Feh�rke','5','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fel�cia','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Felici�n','6','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Felici�na','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('F�lix','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ferdin�nd','5','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ferenc','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fernanda','5','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fiametta','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fid�l','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fid�lia','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filemon','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filibert','8','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filippa','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filom�la','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filom�n','8','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filom�na','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filotea','11','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fiorella','7','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fl�via','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Flavi�n','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fl�ra','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Florencia','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Florentin','9','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Florentina','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fl�ri�n','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Florina','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fl�ris','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fodor','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Folkus','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('F�ris','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fortuna','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fortun�t','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Franciska','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Frida','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Friderika','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fridolin','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Frigyes','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fruzsina','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('F�l�p','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fulvia','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('F�rtike','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('F�zike','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('G�bor','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('G�briel','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gabriella','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gaj�na','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('G�l','7','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Galamb','5','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Galatea','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Galina','10','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('G�los','10','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gara','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gard�nia','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('G�sp�r','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gaszton','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gazs�','8','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gedeon','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ged�','9','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gejza','2','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gell�n','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gell�rt','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gemella','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gemini�n','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gemma','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('G�nia','12','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Genov�va','1','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Georgina','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Geraszim','3','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerda','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ger�b','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gergely','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerg�','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerj�n','10','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerle','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Germ�n','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ger�','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerold','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gertr�d','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerzson','2','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('G�za','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gib�rt','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gida','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gilbert','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gilberta','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gilda','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gilgames','10','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gina','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gir�t','10','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Giszmunda','9','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gitta','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gizella','5','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gl�ria','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gobert','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Godiva','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('God�','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Godvin','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gordon','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gorgi�s','9','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gotfrid','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Goth�rd','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gotlib','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gr�cia','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Graci�n','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Graci�na','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Graciella','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gr�ta','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Grizelda','9','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Grizeldisz','9','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gujd�','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gunda','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('G�nter','10','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Guszt�v','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gy�rf�s','6','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyenes','12','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyoma','10','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gy�ngy','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gy�ngyi','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gy�ngyv�r','1','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gy�ngyvir�g','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyop�rka','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gy�re','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gy�rgy','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gy�rgyi','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gy�rk','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gy�z�','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyula','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('H�g�r','8','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hajna','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hajnal','10','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hajnalka','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hamilk�r','11','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hanga','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hanna','5','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hannib�l','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hann�','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Harald','6','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hargitta','6','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hark�ny','9','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Harl�m','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Harmatka','8','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Harri','3','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hartvig','8','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hassz�n','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Havaska','8','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hedda','2','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('H�di','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hedvig','2','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hektor','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('H�la','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hel�n','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hel�na','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Helga','6','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Heliodor','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('H�liosz','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Helka','9','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hella','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Henriett','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Henrietta','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Henrik','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('H�ra','6','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herbert','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herkules','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herman','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herm�sz','8','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hermia','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hermi�s','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hermina','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hermiusz','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herold','10','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herta','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Het�ny','8','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hiador','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hieronima','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hil�ria','8','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hil�riusz','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hilda','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hilm�r','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hippia','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hippolit','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hippolita','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('H�dos','11','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('H�feh�rke','5','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Holda','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Holl�','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Honor�ta','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Honor�tusz','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hon�ria','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hon�riusz','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hont','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hor�c','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hor�cia','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hortenzia','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('H�vir�g','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Huba','8','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hubert','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Huberta','3','20');
REM INSERTING into POSZT
SET DEFINE OFF;
Insert into POSZT (FELADO,ID,CIMZETT,IDO,TARTALOM,SZULO) values ('670','109',null,to_timestamp('17-�PR.  -28 11.30.06,481000000','RR-MON-DD HH24.MI.SSXFF'),'A felhaszn�l� felt�lt�tt egy k�pet a(z) neha albumba.http://localhost:80/Kozossegi/upload/149337180613453854_1368875973127497_1069609054_n.jpg',null);
Insert into POSZT (FELADO,ID,CIMZETT,IDO,TARTALOM,SZULO) values ('670','106',null,to_timestamp('17-�PR.  -28 11.29.46,000000000','RR-MON-DD HH24.MI.SSXFF'),'asd',null);
Insert into POSZT (FELADO,ID,CIMZETT,IDO,TARTALOM,SZULO) values ('670','107','675',to_timestamp('17-�PR.  -28 11.29.49,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdasd',null);
Insert into POSZT (FELADO,ID,CIMZETT,IDO,TARTALOM,SZULO) values ('670','108',null,to_timestamp('17-�PR.  -28 11.29.52,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasd','107');
Insert into POSZT (FELADO,ID,CIMZETT,IDO,TARTALOM,SZULO) values ('1044','110',null,to_timestamp('17-�PR.  -28 11.36.13,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf',null);
REM INSERTING into PROFIL
SET DEFINE OFF;
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('670',to_date('97-�PR.  -11','RR-MON-DD'),'1','1','125','14','3',null,'141');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('671',to_date('18-�PR.  -14','RR-MON-DD'),'1','1','325','25','1',null,'1');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1023',to_date('99-FEBR. -03','RR-MON-DD'),'1','21','325','61','21','670','85');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('675',to_date('17-�PR.  -20','RR-MON-DD'),'1','2','152','23','4',null,'2');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('678',to_date('17-�PR.  -26','RR-MON-DD'),'1','1','121','31','3',null,'3');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('679',to_date('17-�PR.  -20','RR-MON-DD'),'1','1','121','21','3',null,null);
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('674',to_date('17-�PR.  -20','RR-MON-DD'),'1','1','125','25','2',null,'2');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1044',to_date('99-FEBR. -01','RR-MON-DD'),'1','21','375','61','21','670','143');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1010',to_date('11-DEC.  -21','RR-MON-DD'),'1','1','125','25','1','670','22');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1024',to_date('99-FEBR. -01','RR-MON-DD'),'1','21','325','61','21','1023','86');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1026',to_date('73-FEBR. -01','RR-MON-DD'),'1','21','375','61','21','0','89');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1025',to_date('99-M�RC. -13','RR-MON-DD'),'1','21','325','61','21','1010','87');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1020',to_date('17-�PR.  -22','RR-MON-DD'),'1','1','371','43','1','670','28');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1045',to_date('99-FEBR. -01','RR-MON-DD'),'1','21','375','61','21','0','145');
REM INSERTING into SZEMELY
SET DEFINE OFF;
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('623','Shah9IChoh','SimkoVince@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('624','dah9sahGiez','SiposSamuka@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('625','soo2muBee','GyoryMargo@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('626','pheshahR7i','SaghiOrban@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('627','suBie8Heeth','SzakalyEva@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('628','Maefee8OChie','SebestyenVince@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('629','Vahvi7koow','KerteszEtilka@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('630','Aey2ahQu','SzegedyAlex@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('631','xoa0shaeZ','SzathmaryGergo@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('632','iel5ahHa6ae','ReveszAurelia@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('633','nec5Moo3ee','JozsaTarcal@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('634','koeShee0ah','DankaLadomer@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('635','Oi3theich7','SalayKlaudia@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('636','Uichiob6ou','TakachMilan@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('637','AepheNuk3oo','KovacsEndre@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('638','aiboh1as4V','MateGyorgy@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('639','Aefae4too','PolgarRego@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('640','Queigh9ch','FenyvessyErzsi@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('641','uo1bo2OiR','CsizmaziaBrigitta@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('642','aiKoh1thuz','BogdanAngyalka@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('643','Zeinai0nai','FodorMiklos@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('644','raexoh0AeGh','ViraghGyorgy@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('645','ui6Uph8Vamie','CsizmaziaGisella@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('646','Eeshi5eiv','SzepessyEvike@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('647','eu9siQu2','JosaHajna@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('648','iedae7Iifae','VaradyBenjamin@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('649','Ahzai9ch','NemetKtisztina@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('650','coh6Zei7rich','VinceKartal@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('651','Aw5Zeiz9O','DonkaOzor@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('652','eureeX4oo','MarkoGizi@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('653','meu9ieJohdae','KecskesBoglarka@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('654','yieRieGah9','MezeiKlaudia@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('655','yaxohshe8Woo','KovaryBartalan@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('656','aoTei3ruj','CsizmadiaDarda@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('657','Zoo1Quiesh','KalmarCseke@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('658','Zesh5phei','UjvariSolt@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('659','eiT2puiK','PeterOrkeny@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('660','Xae4rohg','GalKende@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('661','EiW0hai1','GasparMilan@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('662','Ahv8aeku','KeresztesReka@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('663','reib5eShei','BorbasRoza@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('664','ieM0ooMee','SchmidtAliz@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('665','roo8ohSho','PeteTeca@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('666','Utie3ailiyoh','MadaraszZsolt@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('667','ee1ohD3b','KadarSzabolcs@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('668','OhCh9phah','FeherZsanett@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('669','Yoguhoith9e','FoldiKtisztina@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('670','riev5Aiwoovo','VinczeKrisztina@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('671','ju8Aivoo8ie','SchulteiszRezso@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('672','XooQu7AiH','PappKlaudia@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('673','Thii3feeQu0','FulopGyula@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('674','ai5Aighath','SzollosPatony@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('675','oseeVo7ph','TotthLorant@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('676','Eree1eigie','PetoBodi@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('677','Boo3eeciesh','GulyasErssike@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('678','oeroh3Oo','VarghaPaliki@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('679','Saeloh2fie','CzakoMatyas@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('680','cakuH8pha','GaalSamuka@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('681','Jabai1ohquu','GaalEmese@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('682','CieSh7jaes','ZsinkaSzabolcs@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('683','Ahsee6em2v','SzolosiCsongor@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('684','LiiN0aejah','PolakBalazs@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('685','ohQu4dahph9','HorvatOrmos@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('686','VooBeeg8','BerthaDaniel@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('687','Aic6ohci1u','BenczeSolyom@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('688','jaL8ohra','HercegMarcell@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('689','aido6Ahv','GeraBettina@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('690','ahxaiHoL3iy','ReveszBartalan@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('691','oC7kuNg9c','KelemenZoard@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('692','Veebiu1quie','FoldiBianka@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('693','Uoweroo6','PetheGisella@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('694','aisaiZugh2','SzakatsOzsvat@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('695','Yohwei8uu','KulcsarLehel@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('696','eeg2XeiCah','SagiBarnabas@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('697','phae7Phoh','GulyasSzalyk@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('698','phu7Eike','SmittLaura@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('699','Eephoth1','MullnerEszti@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('700','aivi6VeeD','SzegediHajna@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('701','xohhu7Iibei','BorbasSasa@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('702','aetheet6Da6','VegFlorka@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('703','zah1ohcheNg','VadaszEvelin@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('704','seo7ooN3eeTo','KunczAgnes@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('705','Fieb4af2','BorsosRenato@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('706','Engai1xo4oo','RaczKeve@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('707','Beid8aip','VeghAtilla@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('708','aicua6KieGee','MulnerMalcsi@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('709','Daimeit7E','SzalayHajnalka@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('710','eth9peoWai','HavassIzabella@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('711','bohto9eeW','MolnarKrisztian@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('712','eiDuw0xeuyee','CsontosFolkus@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('713','ied8AimieRie','HerczegLipot@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('714','Tu4aeR4u','VassRobi@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('715','uop4Eipih','KarpathyBettina@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('716','yooPoo4mai0','ErdelyiAnci@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('717','Boo5faeCie','KocsisMaria@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('718','Eix5gohso8','SchmidAngyalka@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('719','Od6zu9ch','FeherSzilveszter@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('720','ied4Au8Ohw','KunKat@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('721','Doo4tie1oh','MesterAndras@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('722','Ohqu6iz1oo','BenedekTaksony@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('723','hauXoh9ieph','PolgarTomaj@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('724','Reingiex7ie','RadicsKardos@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('725','Een2Hiowee','PappAkos@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('726','hohyo1Pap','BarnaPeter@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('727','Op1AiY9deik','SzalayFranciska@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('728','aes1Ujahsi8','SinkoAmbrus@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('729','ahp5Icheu','WeressNeci@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('730','CohPhaiH0pe','FenyvessyErzsok@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('731','jeey7Bai1v','MeyerLorinc@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('732','eejoh4uf5P','VagnerRykus@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('733','ohYohsh1ra','LukatsTreszka@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('734','eefeo9Oos2sie','MayerKrisztina@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('735','Tah4li4Quah','KontzRozalia@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('736','yohn4Eu5nie','IllesAdojan@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('737','eJ7lohnae','VasTarcal@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('738','eB3his8queu','SzollossyGara@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('739','Oot0eengo0','KerekesPiusz@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('740','eesh1Ieng','SagyGizi@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('741','rah9EekohB','HavassyRoland@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('742','to6ieJene','JozsaPatony@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('743','koh2Aesh','PolachLenci@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('744','No2uimeech2','BollaSoma@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('745','xunaJ2rae','CzakoEtilka@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('746','Hagh5aad','SzokeGeza@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('747','uaPai5kah','SzigethyIlona@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('748','Gei0ohchah','SzollosiJazmin@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('749','emie0ageeRah','MesterAranka@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('750','ar9ooThaegh','BanLilla@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('751','Puoch6Eph','BaranyayAlexa@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('752','aebemohc0Hae','SzollossiMelinda@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('753','uu4uGoo3sh','TarCsenger@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('754','oY7eeghohr','SzakalEvelin@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('755','uChu3ohg7','LorincZalan@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('756','Ahv9kibe3ya','FenyvesTunde@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('757','aX0uc5oh','SmitMartuska@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('758','AiTheVeiP5ee','SzellLaura@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('759','Ti1ahbeeRaesh','SosPaliki@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('760','Thosh7phuax','PapJulcsa@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('761','othuiyu1Ph','GyorfiGyuszi@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('762','EeS3dohf','PolyakNusi@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('763','Eiphah5Qu','MajorosTas@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('764','waequ0OngohSh','FeketeJolan@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('765','soeTh9phae','SzolosiPatricia@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('766','uxae5sheW1doh','MateMyricoorish@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('767','aiSh4ve6Ee','SzakalyVirag@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('768','aiKei8vohph','LantosGisella@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('769','mathieli0Kee','ThuryNyek@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('770','Fi8saikiedie','ReveszLorinc@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('771','Aey0ohchae','PetheoZoltan@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('772','Ore5ohghee','MagyarSebo@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('773','ooph7ungieTah','LorincBoldizsar@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('774','miek5Chi1','SzollossyBora@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('775','ou8win7Vu','GyorffyTabor@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('776','ailoociu7Oh','HegedusNeci@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('777','Meegh6Jaed5','SzepesAlexandra@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('778','veeL9hoong5','VorossGreta@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('779','aeda3Aequ','SimkoJucika@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('780','muSaeD1ei','BodoSasa@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('781','xeVoo0el0','SzucsErzsi@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('782','chahMae2th','SzakalMercedesz@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('783','Shi3foh3icah','MathePista@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('784','nozeF1Oothie','ErdeyKamilla@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('787','Ci8iefu2iesh','SaghiErssike@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('788','UCh1Eujoo4ie','PetoBelle@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('789','fieMat6ahGh','FoldesUgod@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('790','uRae4OhHua9','KollarErik@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('791','Miese9aenoh','KollarKartal@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('792','Wu0quoroh','ErdeiIzabella@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('793','aizapae1R','KovatsLantos@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('794','Eijie7saph','UjvaryKoppany@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('795','zu5OhZ1Eeph','LazarMarton@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('796','yaiC6ohtei','SmitBarnabas@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('797','EeF0XaiJie','DankoKitti@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('798','ahBeGei9Sai','SmidDalma@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('799','Gai1Liez','LorinczMarkos@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('800','Itholied4i','MaierJanos@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('801','Aeziek4gaik','SzotsDorika@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('802','oi7quo1eeQua','SchmidLukacs@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('803','vaeCie8ah','LevaiEmese@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('804','Eix7kai8Yae','FoldiRokus@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('805','xohF8Az2iech','SoosOdon@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('806','iemai0Nai','SinkaEndre@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('807','OowuoD1O','GyorfiUgor@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('808','zoith9Eo8a','KultsarSebes@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('809','OKoigh7ohS','SzollosiKatalin@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('810','aishiYafoL4','DonkaNoemi@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('811','Aiquee7aesh','BenczeVirag@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('812','ied5ath7E','SzilagyiNeci@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('813','Aeth0uqu','SorossKinga@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('814','aemooph7Kai','UjvariPazman@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('815','oX3Veithei','KulcsarKemenes@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('816','vubuiG2Xai','PalinkasJenci@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('817','Gehaeph2aemae','SzepessiGazsi@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('818','aix9uphe4O','MajorDora@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('819','Shoo2iesh','PatakiVeronika@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('820','mae2ien6Aj','MagyarDalma@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('821','Aemah8uPae','IllesOrsolya@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('822','eibola0aor6Xee','GyorfiGabriella@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('823','mokifi5Eo9','GyarmathyKat@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('824','teiHu6ui','MeyerAdojan@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('825','ayee8Ji1ah','KosaLorinc@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('826','Ahfahr6oech','HermanGyurka@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('827','kah1ahliB3j','OrsosBettina@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('828','mah7kie1J','GoroncserRamona@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('829','eK5Aawe7Shae','BallaIlona@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('830','ooN6Oid9Yu','MatyasRebeka@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('831','ooKi7zah','TuryZsanett@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('832','ieghaiTh1th','ReveszVirag@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('833','XiX5Ooguuf','SzantoAdrian@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('834','Vai9vahg6vie','GergelyUzor@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('835','pie9me4Eech','HofmanBeatrix@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('836','Phienihej2s','SzollosiJolan@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('837','Iuj0UJaeS','AtsMatyas@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('838','ahn9us0A','GyarmatiMelinda@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('839','Yeep6veegh','SzatmaryZsofia@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('840','ieh6si6Ai','BarabasCili@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('841','oaSha2aix7wae','PethoAgnes@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('842','eiTohngah8','SzocsFranciska@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('843','Hoc8urae','HerczegBorsala@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('844','eifai4QuooNgah','SzolosiCsilla@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('845','quaeJ1osh','SoosDeli@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('846','phae7wuChai','CsikosFrici@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('847','AeNu7rie9','KosaFrici@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('848','ci5Iebah','GalKarsa@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('849','eishaeh5aTh','BoroczHanna@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('850','xeiy2jieYah','SultiszUgor@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('851','paoma7ceoW','LengyelBertuska@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('852','aith2Kie0r','MarkusVicuska@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('853','saeF3eev','KalmanHont@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('854','KuiT8acai','LazarBettina@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('855','uuMoovai1','CsikosOrzsebet@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('856','moN4meequ','SzollossiKarola@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('857','ea3su4meiR','CsizmaziaZerind@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('858','iu0egh6OHei','BanyaiJuci@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('859','topuqu4Eo8','SzakalyTzigane@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('860','ooFoo5eeJ3','DudasSzalok@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('861','fire9oob1V','VeressFranciska@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('862','oMoov1Ohg','SzolosiZombor@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('863','aK2uangoo','SaghiVitez@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('864','Xoh8thesh','SeresRezso@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('785','Xa8eis1oh','OrsosDacso@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('786','Yohch8woh6l','RaczCsombor@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('865','ac8Eegh1','SeressKarole@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('866','ahw9TheVaig','SinkoZsanett@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('867','Hahv7yie5a','LakatosDorika@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('868','reetai4toSh','SebokKrisztian@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('869','gahp0ahChie','SzotsPatricia@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('870','IngeiZoo7j','SmitIbolya@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('871','aipei5Joh7Ah','KallaiFerenc@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('872','eek6Xee1Pai','SomogyiDiana@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('873','xe3hai7Atai','KovatsSzilard@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('874','Ikei4eekohgh','VagnerDomokos@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('875','ohNgiegh9ee','BenkoRoland@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('876','Xohxahghee2','BagyDiana@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('877','aik7Yout6ie','SzepesyLilla@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('878','ahMi4ooyohlui','SzotsTarjan@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('879','eeYohde6ibee','MolnarTeca@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('880','aoquie2Ei','SoosZerind@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('881','ahquiuVoh2ai','DankaKatarina@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('882','Aen2mea7Ee','TormaArmand@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('883','mie6shahPh','SzollossyRadomer@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('884','WoojeinooJ3','ForgatsAgnes@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('885','ohx7Oori9','SzokeKati@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('886','HohGeis9yi','ForgatsNora@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('887','shee4ieKa','LorincViva@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('888','Mu3Ooza1A','SzutsBence@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('889','olaa1Xeimi','MatyasZoard@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('890','eihohh7Ah','FoldyPongor@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('891','ea6ohGhai','TothAdony@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('892','inaiG6aP4aif','SzocsNatalia@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('893','LaeMuvae8g','BanyaySzemere@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('894','ohvee3Bei','ForgachBlanka@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('461','oMi0soh0','KardosTunde@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('462','bi3Pheu8m','GyorfyNandor@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('463','Meiz5uuy','SiposZsuzsi@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('464','Chaireex0oh','SzolosiBars@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('465','foiLope2','IllyesBenedek@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('466','eeN1voxu','BalazsGedeon@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('467','phiC1tiesh','GyarmatyFirenze@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('468','aeYe0gaex','KunFredek@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('469','safeo0Airee','SzalaiSolt@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('470','toeth0ooQu7','SzolosyBernadett@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('471','Hai7mao6a','KozmaGerzson@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('472','uChi4taeN1Qu','GyoriSzabolcs@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('473','deijohf2K','BanyaiNora@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('474','ieX7otee','TarKartal@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('475','looNajie4ca','BerenyiAsztrik@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('476','ue5phaiyahD','TakaczFarkas@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('477','aeniev9oa3L','KovatsSzebasztian@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('478','choog5Gae','HarsanyiVayk@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('479','Teijo8oon6ah','DeakGeorgina@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('480','aLa3Eewai','MiklosMarianna@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('481','Sheev4Mi','CsizmaziaKornel@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('482','KahCha3ool','SzutsFrigyes@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('483','tiel4Thahku','MakaiKlaudia@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('484','cah8uh6oYu','SaghyTreszka@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('485','nai7uusha9Ei','SimonFlora@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('486','ooth6ieZai','FeketeAlexa@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('487','ohtaeK9l','GyorffyLiza@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('488','wooz1Tied','SzepKende@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('489','Zohngai2x','DomotorKarolina@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('490','egohbei9U','ZsinkaViva@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('491','puHoox8oweo','SaghyRadomer@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('492','yeequ7zieB','SzellJulcsa@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('493','aigaex4aiNah','MajerHajnalka@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('494','vaeToo6aiJei','MarkoVanda@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('495','pheeJo4pu','SzegediJanka@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('496','SahShaek6g','KissZsuzsanna@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('497','ooJohwie7','BenedekGitta@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('498','veiY4ahw','TotZsombor@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('499','Iongaiv3nai','BenceFanni@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('500','rai6aew7ETh','BeresGeorgina@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('501','rijohae1U','DeakKadosa@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('502','eec0wah8O','SaagiAlberta@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('503','jae4ej1Tah','NemesNikoletta@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('504','Shiexei9','SebestyenLipot@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('505','Veizuw4aiv','MeszarosMenyhert@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('506','ooDa6aw4','GyorffiKeleman@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('507','zowo5UYeeBe','UrbanCsombor@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('508','ooc2aht0Ae','AlbertViva@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('509','oor9aePhaeL','HajnalEszter@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('510','pieg7Ze0ipie','JakabGara@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('511','Ej2aiFei3','LukatsDora@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('512','zaitiJa0ae','LangAdel@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('513','dahr3ooM','ErosRoland@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('514','Aehiebie3','MayerKolos@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('515','GohNoph0cie','SzolosDominik@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('516','Ve6Cerai5ua','SebokLiza@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('517','es4Aengai','PatakiBeatrix@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('518','quie8iRae','BenceElizabet@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('519','thoJaeg7','PatakyMoricz@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('520','ohYa3NeP7z','SultesDarda@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('521','yieT7Rii5ee','VigAgoti@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('522','Maenei9qu','LovaszZalan@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('523','pao8xahNah','FulopJenci@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('524','eep3Ucaev2','SzollossiTivadar@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('525','Toitoo5oh','SzathmariHajnalka@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('526','Cheehu8J','BernathLiza@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('527','Oph7toet2pha','LendvayFredek@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('528','taini8PaiN2','SzolosNyek@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('529','caeXohf6orie','BertaVitez@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('530','Chok6fai1sa','SebestyenBlanka@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('531','Ahgh4Zei1','SzellHajnalka@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('532','aNg7ohngeir','VegBoglarka@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('533','eoz5Aib7nie','BanMarot@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('534','chiab5ooPh','LaczkoEniko@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('535','faith9Pho','RigoAlex@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('536','aiquoh6oy6Ae','MatyasIvett@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('537','Ku5Xu5Veezei','BakosJuci@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('538','eiFai1lupu0','SebokRez@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('539','Oof4Ohshie','KomaromiBertuska@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('540','ooR5kah4','SaghiOszlar@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('541','Aed4iuh5oi','SeresRenato@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('542','chio8Phai','BagiCintia@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('543','aung7Suuxae','PasztorReka@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('544','Eic8Aix0Thae','KurutzBorbala@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('545','Ohsheu4Sh','SzilagyiGyuszi@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('546','Chihee5Aez','SultesSzever@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('547','ahF2Ri5fei','KallayDalma@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('548','Shee2eegoo','FoldesiKata@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('549','baew0ongiFah','KunczOrmos@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('550','vupheNei1sh','SzepesiOliver@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('551','are6wieZoo','DemeterKrisztofer@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('552','Er9Paepei7','ErdelyiIzsak@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('553','ooquoo0F','IllesHunor@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('554','ogu9eiPh2','ViragViktor@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('555','Ohb2uxaib','KovariTardos@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('556','Ti5aiquae','BenkoIlona@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('557','caTh4eoxai','BernathJazmin@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('558','yae9Phiey4ee','AlbertDaniel@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('559','Kog2too4','NagyNora@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('560','nael4To6j','BollaMenyhert@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('561','ohweeki6Jah','BalintJuci@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('562','iehie4Sh','MezeyKemenes@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('563','eeBai6Thoe0','FarkasAgnes@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('564','chohs2ooJ','VaradiVanda@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('565','hai0AiFae','HegedusMarianna@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('566','Cahchoo3poth','TormaLinka@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('567','aing9aeDah','SzalaiKartal@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('568','eeGh1uep','MulnerLajos@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('569','Je9eiShe','CsizmadiaMarika@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('570','quahL8nequ','RatzGeza@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('571','chiiK7ahsh','SzakatsEdina@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('572','Thoh9ca8caNg','RozsaZerind@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('573','Tei5co6ie','KovatsKinga@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('574','eCheet0w','BaloghBeatrix@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('575','xoo6oaYilie','BodoMaria@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('576','ooghooB7Ie','SzatmaryNusi@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('577','iZ9Gooboor','BogdanBalint@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('578','lec0Eibudoo','BallaPaliki@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('579','hooFaiyi9','HoffmannFranciska@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('580','Eu9eethee8','SzabadosCsanad@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('581','IpuB0oTee','LaszloAnnamaria@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('582','aethooB4meiM','MulnerLaborc@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('583','uosh0aY3Zai','BenceMartuska@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('584','uungoh6BieN','FenyvesiDeli@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('585','OhC1athie7','GaalMarika@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('586','caeV4Uung','FazakasMatyas@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('587','euSh9uer','FoldyRebeka@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('588','oothoor5C','KeresztesRegina@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('589','EuTha1chai2','PinterSzonja@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('590','wohy4Gu7eng','LengyelKamilla@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('591','oozaiFoi0ee','KovaryKornel@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('592','eefePhexai1','MartonRezso@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('593','aoshac5Gai','SimkoViva@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('594','iGhiedo5','ThuryCsenge@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('595','XaBuu4booGh','IllesKarole@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('596','aiNaenaip2','VigKatakin@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('597','zahC3ien9F','UrbanZsaZsa@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('598','Choopaish7','KovaryMoricz@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('599','phaiFeex4iel','KovatsMarianna@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('600','Wuomee0ae','MulnerZsolt@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('601','eeV2aiqu','SzocsIbolya@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('602','Veghaow7ie','KalmarFerko@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('603','nahm5oi7Jo','LantosUzor@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('604','Xaigh6Uw','SallayKamilla@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('605','wiWaivee0qu','PuskasUros@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('606','Ohgii9oot','MarkoLaura@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('607','Kuu7Xu2kehu','LorinczBoriska@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('608','feemah9A','PasztorJozsef@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('609','ieph4ciuM9','CzakoEniko@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('610','ioz4Aibawei','LengyelLiliana@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('611','Thee4iexie','HerczeghJanka@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('612','rohqu8nouCh','GyorffyOnd@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('613','nieV4dohxie','DemeterTeteny@dayrep.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('614','aeja6iuVa5ai','SagiHajnalka@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('615','Shuch0dabui','FoldiZsaZsa@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('616','Koh7Zahbee','SzekelyAmbrus@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('617','aezaeThaib1','OroszTitusz@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('618','Fieg5Gahv','KunczMatyas@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('619','OeJohBie5ei','LovaszEmese@jourrapide.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('620','Ayahd1rooR6','SebeokFruzsina@rhyta.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('621','euHiaxoh8oo','SzollosyAntal@armyspy.com');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('622','ooJu1iegh6X','SzakatsBarbara@teleworm.us');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('1025','asdqwe','asdqwe@asdqwe.hu');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('1026','asdasd','jozsef@neha.hu');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('1010','ASD','imre@asd.hu');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('1023','[C@4a03e27a','asdfasd@asdf.ju');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('1024','asdfasdf','asdfasdfasdf@asdf.ji');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('1044','asdasd','valaki@valaki.hu');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('1020','neha','jozsi@asd.hu');
Insert into SZEMELY (ID,JELSZO,EMAIL) values ('1045','asdasd','valaki2@valaki.hu');
REM INSERTING into TAGJA
SET DEFINE OFF;
Insert into TAGJA (SZEMELYID,KLUBID) values ('625','900');
Insert into TAGJA (SZEMELYID,KLUBID) values ('626','900');
Insert into TAGJA (SZEMELYID,KLUBID) values ('627','900');
Insert into TAGJA (SZEMELYID,KLUBID) values ('628','900');
Insert into TAGJA (SZEMELYID,KLUBID) values ('629','900');
Insert into TAGJA (SZEMELYID,KLUBID) values ('670','897');
Insert into TAGJA (SZEMELYID,KLUBID) values ('670','899');
Insert into TAGJA (SZEMELYID,KLUBID) values ('670','900');
Insert into TAGJA (SZEMELYID,KLUBID) values ('670','901');
Insert into TAGJA (SZEMELYID,KLUBID) values ('670','902');
Insert into TAGJA (SZEMELYID,KLUBID) values ('670','904');
Insert into TAGJA (SZEMELYID,KLUBID) values ('671','903');
Insert into TAGJA (SZEMELYID,KLUBID) values ('675','903');
Insert into TAGJA (SZEMELYID,KLUBID) values ('675','904');
Insert into TAGJA (SZEMELYID,KLUBID) values ('675','905');
Insert into TAGJA (SZEMELYID,KLUBID) values ('679','903');
REM INSERTING into UZENET
SET DEFINE OFF;
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 00.09.39,000000000','RR-MON-DD HH24.MI.SSXFF'),'aaaaaaaaaaaaaaaaaaaaaaaasdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 00.09.41,000000000','RR-MON-DD HH24.MI.SSXFF'),'a');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 00.09.49,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 00.09.57,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 00.11.25,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdfasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdfasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdfasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdfasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-�PR.  -23 14.10.16,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','1020',to_timestamp('17-�PR.  -23 14.10.20,000000000','RR-MON-DD HH24.MI.SSXFF'),'asd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 00.09.31,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfas');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 00.09.35,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasdfasdfasdfasdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-�PR.  -23 14.10.33,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-�PR.  -23 14.10.34,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-�PR.  -23 14.10.30,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-�PR.  -23 14.10.32,000000000','RR-MON-DD HH24.MI.SSXFF'),'asd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','674',to_timestamp('17-�PR.  -21 01.05.06,000000000','RR-MON-DD HH24.MI.SSXFF'),'asd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-�PR.  -21 17.10.37,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','678',to_timestamp('17-�PR.  -21 17.10.41,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 11.32.32,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 11.32.36,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfffdsad');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-�PR.  -21 11.36.31,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-�PR.  -21 11.36.33,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-�PR.  -21 11.36.34,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-�PR.  -21 11.36.35,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-�PR.  -21 11.36.36,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-�PR.  -21 11.36.39,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasdfasdfa');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-�PR.  -21 11.36.41,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 11.38.23,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 11.39.03,000000000','RR-MON-DD HH24.MI.SSXFF'),'asd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-�PR.  -21 11.39.04,000000000','RR-MON-DD HH24.MI.SSXFF'),'as');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-�PR.  -21 13.45.35,000000000','RR-MON-DD HH24.MI.SSXFF'),'hel�');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-�PR.  -21 13.45.45,000000000','RR-MON-DD HH24.MI.SSXFF'),'hogy vagy kedves bar�tom?');
--------------------------------------------------------
--  DDL for Index ALBUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALBUM_PK" ON "ALBUM" ("IDO", "NEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ERTESITES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ERTESITES_PK" ON "ERTESITES" ("IDO", "KINEK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HOBBI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOBBI_PK" ON "HOBBI" ("HOBBIID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ISKOLA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ISKOLA_PK" ON "ISKOLA" ("ISKOLAID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ISMER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ISMER_PK" ON "ISMER" ("KIID", "KIVELID", "IDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEPEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KEPEK_PK" ON "KEPEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY
--------------------------------------------------------

  CREATE UNIQUE INDEX "KEY" ON "FELHASZNALO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KLUB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KLUB_PK" ON "KLUB" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LAKHELY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAKHELY_PK" ON "LAKHELY" ("LAKHELYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MUNKAHELY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MUNKAHELY_PK" ON "MUNKAHELY" ("MUNKAHELYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index NEVNAP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEVNAP_PK" ON "NEVNAP" ("NEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index POSZT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "POSZT_PK" ON "POSZT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROFIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROFIL_PK" ON "PROFIL" ("SZEMELYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SZEMELY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SZEMELY_PK" ON "SZEMELY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TAGJA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAGJA_PK" ON "TAGJA" ("SZEMELYID", "KLUBID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UZENET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UZENET_PK" ON "UZENET" ("FELADO", "CIMZETT", "IDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger ALBUM_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ALBUM_TRG" 
BEFORE INSERT ON ALBUM 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.FELHASZNALOID IS NULL THEN
      SELECT ALBUM_SEQ.NEXTVAL INTO :NEW.FELHASZNALOID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ALBUM_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FELHASZNALO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "FELHASZNALO_TRG" 
BEFORE INSERT ON FELHASZNALO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT FELHASZNALO_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "FELHASZNALO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HOBBI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HOBBI_TRG" 
BEFORE INSERT ON HOBBI 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.HOBBIID IS NULL THEN
      SELECT HOBBI_SEQ.NEXTVAL INTO :NEW.HOBBIID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HOBBI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ISKOLA_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ISKOLA_TRG" 
BEFORE INSERT ON ISKOLA 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ISKOLAID IS NULL THEN
      SELECT ISKOLA_SEQ.NEXTVAL INTO :NEW.ISKOLAID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ISKOLA_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KEPEK_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "KEPEK_TRG" 
BEFORE INSERT ON KEPEK 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT KEPEK_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "KEPEK_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LAKHELY_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LAKHELY_TRG" 
BEFORE INSERT ON LAKHELY 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.LAKHELYID IS NULL THEN
      SELECT LAKHELY_SEQ.NEXTVAL INTO :NEW.LAKHELYID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "LAKHELY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MUNKAHELY_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MUNKAHELY_TRG" 
BEFORE INSERT ON MUNKAHELY 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MUNKAHELYID IS NULL THEN
      SELECT MUNKAHELY_SEQ.NEXTVAL INTO :NEW.MUNKAHELYID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "MUNKAHELY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger POSZT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "POSZT_TRG" 
BEFORE INSERT ON POSZT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT POSZT_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "POSZT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Procedure REGISTER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "REGISTER" (V_NEV IN STRING,V_JELSZO IN STRING,V_EMAIL IN STRING,V_DOB IN DATE,
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

/
--------------------------------------------------------
--  DDL for Procedure SZEMELYHOZZAAD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SZEMELYHOZZAAD" (v_nev in string,v_jelszo in string,v_email in string) is
 PRAGMA AUTONOMOUS_TRANSACTION;
begin 
  insert into felhasznalo(nev) values (v_nev);
  commit;
  insert into szemely(id,jelszo,email) values ((select max(id)from felhasznalo),v_jelszo,v_email);
  commit;
end;


/*call h668895.szemelyhozzaad('Jozsef','asdasd','asd@asd.hu');
call h668895.klubhozzaad('a klub2',30,'jo lesz');*/

/
--------------------------------------------------------
--  DDL for Function ADDIMAGE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADDIMAGE" (V_ELERESIUT IN STRING,V_ALBUMNEV IN STRING,V_ID IN INT) RETURN INT IS 
 PRAGMA AUTONOMOUS_TRANSACTION;
 V_IDO TIMESTAMP;
 V_ALBUM ALBUM%ROWTYPE;
BEGIN 
  SELECT * INTO V_ALBUM FROM ALBUM  WHERE ALBUM.NEV=V_ALBUMNEV AND ALBUM.FELHASZNALOID=V_ID;
  INSERT INTO POSZT(FELADO,IDO,TARTALOM) VALUES(V_ID,SYSTIMESTAMP,'A felhaszn�l� felt�lt�tt egy k�pet a(z) '||V_ALBUMNEV||' albumba.'||V_ELERESIUT);
  INSERT INTO KEPEK(ALBUMNEV,ALBUMIDO,ELERESIUT,POSZTID) VALUES(V_ALBUM.NEV,V_ALBUM.IDO,V_ELERESIUT,POSZT_SEQ.CURRVAL);
  COMMIT;
  RETURN KEPEK_SEQ.CURRVAL;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
    V_IDO :=SYSTIMESTAMP;
    INSERT INTO ALBUM(FELHASZNALOID,NEV,IDO) VALUES(V_ID,V_ALBUMNEV,V_IDO);
    INSERT INTO POSZT(FELADO,IDO,TARTALOM) VALUES(V_ID,SYSTIMESTAMP,'A felhaszn�l� felt�lt�tt egy k�pet a(z) '||V_ALBUMNEV||' albumba.'||V_ELERESIUT);
    INSERT INTO KEPEK(ALBUMNEV,ALBUMIDO,ELERESIUT,POSZTID) VALUES(V_ALBUMNEV,V_IDO,V_ELERESIUT,POSZT_SEQ.CURRVAL);  
    COMMIT;
    RETURN KEPEK_SEQ.CURRVAL;
END;

/
--------------------------------------------------------
--  Constraints for Table ALBUM
--------------------------------------------------------

  ALTER TABLE "ALBUM" ADD CONSTRAINT "ALBUM_PK" PRIMARY KEY ("IDO", "NEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ALBUM" MODIFY ("FELHASZNALOID" NOT NULL ENABLE);
  ALTER TABLE "ALBUM" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "ALBUM" MODIFY ("IDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ERTESITES
--------------------------------------------------------

  ALTER TABLE "ERTESITES" ADD CONSTRAINT "ERTESITES_PK" PRIMARY KEY ("IDO", "KINEK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ERTESITES" MODIFY ("KINEK" NOT NULL ENABLE);
  ALTER TABLE "ERTESITES" MODIFY ("IDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "FELHASZNALO" ADD CONSTRAINT "KEY" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "FELHASZNALO" MODIFY ("NEV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HOBBI
--------------------------------------------------------

  ALTER TABLE "HOBBI" ADD CONSTRAINT "HOBBI_PK" PRIMARY KEY ("HOBBIID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HOBBI" MODIFY ("HOBBIID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ISKOLA
--------------------------------------------------------

  ALTER TABLE "ISKOLA" ADD CONSTRAINT "ISKOLA_PK" PRIMARY KEY ("ISKOLAID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ISKOLA" MODIFY ("ISKOLAID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ISMER
--------------------------------------------------------

  ALTER TABLE "ISMER" ADD CONSTRAINT "ISMER_PK" PRIMARY KEY ("KIID", "KIVELID", "IDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ISMER" MODIFY ("KIID" NOT NULL ENABLE);
  ALTER TABLE "ISMER" MODIFY ("KIVELID" NOT NULL ENABLE);
  ALTER TABLE "ISMER" MODIFY ("IDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KEPEK
--------------------------------------------------------

  ALTER TABLE "KEPEK" ADD CONSTRAINT "KEPEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "KEPEK" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KLUB
--------------------------------------------------------

  ALTER TABLE "KLUB" ADD CONSTRAINT "KLUB_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "KLUB" MODIFY ("TULAJDONOS" NOT NULL ENABLE);
  ALTER TABLE "KLUB" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LAKHELY
--------------------------------------------------------

  ALTER TABLE "LAKHELY" ADD CONSTRAINT "LAKHELY_PK" PRIMARY KEY ("LAKHELYID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LAKHELY" MODIFY ("LAKHELYID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MUNKAHELY
--------------------------------------------------------

  ALTER TABLE "MUNKAHELY" ADD CONSTRAINT "MUNKAHELY_PK" PRIMARY KEY ("MUNKAHELYID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "MUNKAHELY" MODIFY ("MUNKAHELYID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NEVNAP
--------------------------------------------------------

  ALTER TABLE "NEVNAP" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "NEVNAP" ADD CONSTRAINT "NEVNAP_PK" PRIMARY KEY ("NEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POSZT
--------------------------------------------------------

  ALTER TABLE "POSZT" ADD CONSTRAINT "POSZT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "POSZT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFIL
--------------------------------------------------------

  ALTER TABLE "PROFIL" ADD CONSTRAINT "PROFIL_PK" PRIMARY KEY ("SZEMELYID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PROFIL" MODIFY ("SZEMELYID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SZEMELY
--------------------------------------------------------

  ALTER TABLE "SZEMELY" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SZEMELY" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "SZEMELY" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SZEMELY" ADD CONSTRAINT "SZEMELY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAGJA
--------------------------------------------------------

  ALTER TABLE "TAGJA" MODIFY ("SZEMELYID" NOT NULL ENABLE);
  ALTER TABLE "TAGJA" MODIFY ("KLUBID" NOT NULL ENABLE);
  ALTER TABLE "TAGJA" ADD CONSTRAINT "TAGJA_PK" PRIMARY KEY ("SZEMELYID", "KLUBID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UZENET
--------------------------------------------------------

  ALTER TABLE "UZENET" MODIFY ("FELADO" NOT NULL ENABLE);
  ALTER TABLE "UZENET" MODIFY ("CIMZETT" NOT NULL ENABLE);
  ALTER TABLE "UZENET" MODIFY ("IDO" NOT NULL ENABLE);
  ALTER TABLE "UZENET" ADD CONSTRAINT "UZENET_PK" PRIMARY KEY ("FELADO", "CIMZETT", "IDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ALBUM
--------------------------------------------------------

  ALTER TABLE "ALBUM" ADD CONSTRAINT "ALBUM_FK1" FOREIGN KEY ("FELHASZNALOID")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ERTESITES
--------------------------------------------------------

  ALTER TABLE "ERTESITES" ADD CONSTRAINT "ERTESITES_FK1" FOREIGN KEY ("KINEK")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ISMER
--------------------------------------------------------

  ALTER TABLE "ISMER" ADD CONSTRAINT "ISMER_FK1" FOREIGN KEY ("KIID")
	  REFERENCES "SZEMELY" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ISMER" ADD CONSTRAINT "ISMER_FK2" FOREIGN KEY ("KIVELID")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KEPEK
--------------------------------------------------------

  ALTER TABLE "KEPEK" ADD CONSTRAINT "KEPEK_FK1" FOREIGN KEY ("ALBUMIDO", "ALBUMNEV")
	  REFERENCES "ALBUM" ("IDO", "NEV") ON DELETE CASCADE ENABLE;
  ALTER TABLE "KEPEK" ADD CONSTRAINT "KEPEK_FK2" FOREIGN KEY ("POSZTID")
	  REFERENCES "POSZT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KLUB
--------------------------------------------------------

  ALTER TABLE "KLUB" ADD CONSTRAINT "KLUB_FK1" FOREIGN KEY ("ID")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "KLUB" ADD CONSTRAINT "KLUB_FK2" FOREIGN KEY ("TULAJDONOS")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POSZT
--------------------------------------------------------

  ALTER TABLE "POSZT" ADD CONSTRAINT "POSZT_FK1" FOREIGN KEY ("FELADO")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "POSZT" ADD CONSTRAINT "POSZT_FK2" FOREIGN KEY ("CIMZETT")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "POSZT" ADD CONSTRAINT "POSZT_FK3" FOREIGN KEY ("ID")
	  REFERENCES "POSZT" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROFIL
--------------------------------------------------------

  ALTER TABLE "PROFIL" ADD CONSTRAINT "PROFIL_FK1" FOREIGN KEY ("ISKOLAID")
	  REFERENCES "ISKOLA" ("ISKOLAID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PROFIL" ADD CONSTRAINT "PROFIL_FK3" FOREIGN KEY ("MUNKAHELYID")
	  REFERENCES "MUNKAHELY" ("MUNKAHELYID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PROFIL" ADD CONSTRAINT "PROFIL_FK4" FOREIGN KEY ("LAKHELYID")
	  REFERENCES "LAKHELY" ("LAKHELYID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PROFIL" ADD CONSTRAINT "PROFIL_FK5" FOREIGN KEY ("HOBBIID")
	  REFERENCES "HOBBI" ("HOBBIID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PROFIL" ADD CONSTRAINT "PROFIL_FK6" FOREIGN KEY ("SZEMELYID")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SZEMELY
--------------------------------------------------------

  ALTER TABLE "SZEMELY" ADD CONSTRAINT "SZEMELY_FK1" FOREIGN KEY ("ID")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TAGJA
--------------------------------------------------------

  ALTER TABLE "TAGJA" ADD CONSTRAINT "TAGJA_FK1" FOREIGN KEY ("KLUBID")
	  REFERENCES "KLUB" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TAGJA" ADD CONSTRAINT "TAGJA_FK2" FOREIGN KEY ("SZEMELYID")
	  REFERENCES "SZEMELY" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UZENET
--------------------------------------------------------

  ALTER TABLE "UZENET" ADD CONSTRAINT "UZENET_FK1" FOREIGN KEY ("FELADO")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "UZENET" ADD CONSTRAINT "UZENET_FK2" FOREIGN KEY ("CIMZETT")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE CASCADE ENABLE;
