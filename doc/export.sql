--------------------------------------------------------
--  File created - péntek-április-28-2017   
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
Insert into ALBUM (FELHASZNALOID,NEV,IDO) values ('1044','Profilképek',to_timestamp('17-ÁPR.  -28 11.25.05,188000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ALBUM (FELHASZNALOID,NEV,IDO) values ('670','neha',to_timestamp('17-ÁPR.  -28 11.30.06,479000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ALBUM (FELHASZNALOID,NEV,IDO) values ('1045','Profilképek',to_timestamp('17-ÁPR.  -28 11.36.43,087000000','RR-MON-DD HH24.MI.SSXFF'));
REM INSERTING into ERTESITES
SET DEFINE OFF;
Insert into ERTESITES (KINEK,IDO,SZOVEG) values ('725',to_timestamp('17-MÁRC. -31 16.01.58,826000000','RR-MON-DD HH24.MI.SSXFF'),'ASDFASDF');
REM INSERTING into FELHASZNALO
SET DEFINE OFF;
Insert into FELHASZNALO (ID,NEV) values ('768','Lantos Gisella');
Insert into FELHASZNALO (ID,NEV) values ('769','Thury Nyék');
Insert into FELHASZNALO (ID,NEV) values ('770','Révész L?rinc');
Insert into FELHASZNALO (ID,NEV) values ('771','Petheö Zoltán');
Insert into FELHASZNALO (ID,NEV) values ('772','Magyar Sebo');
Insert into FELHASZNALO (ID,NEV) values ('773','Lörinc Boldizsar');
Insert into FELHASZNALO (ID,NEV) values ('774','Szõllõssy Bora');
Insert into FELHASZNALO (ID,NEV) values ('775','Györffy Tabor');
Insert into FELHASZNALO (ID,NEV) values ('776','Hegedüs Neci');
Insert into FELHASZNALO (ID,NEV) values ('777','Szepes Alexandra');
Insert into FELHASZNALO (ID,NEV) values ('778','Vöröss Gréta');
Insert into FELHASZNALO (ID,NEV) values ('779','Simko Jucika');
Insert into FELHASZNALO (ID,NEV) values ('780','Bodo Sasa');
Insert into FELHASZNALO (ID,NEV) values ('781','Szücs Erzsi');
Insert into FELHASZNALO (ID,NEV) values ('782','Szakál Mercédesz');
Insert into FELHASZNALO (ID,NEV) values ('783','Máthé Pista');
Insert into FELHASZNALO (ID,NEV) values ('784','Erdey Kamilla');
Insert into FELHASZNALO (ID,NEV) values ('785','Orsós Dacso');
Insert into FELHASZNALO (ID,NEV) values ('786','Rácz Csombor');
Insert into FELHASZNALO (ID,NEV) values ('787','Sághi Erssike');
Insert into FELHASZNALO (ID,NEV) values ('788','Petö Belle');
Insert into FELHASZNALO (ID,NEV) values ('789','Földes Ugod');
Insert into FELHASZNALO (ID,NEV) values ('790','Kollár Erik');
Insert into FELHASZNALO (ID,NEV) values ('791','Kollár Kartal');
Insert into FELHASZNALO (ID,NEV) values ('792','Erdei Izabella');
Insert into FELHASZNALO (ID,NEV) values ('793','Kováts Lantos');
Insert into FELHASZNALO (ID,NEV) values ('794','Ujváry Koppány');
Insert into FELHASZNALO (ID,NEV) values ('795','Lázár Marton');
Insert into FELHASZNALO (ID,NEV) values ('796','Smit Barnabás');
Insert into FELHASZNALO (ID,NEV) values ('797','Danko Kitti');
Insert into FELHASZNALO (ID,NEV) values ('798','Smid Dalma');
Insert into FELHASZNALO (ID,NEV) values ('799','Lõrincz Markos');
Insert into FELHASZNALO (ID,NEV) values ('800','Maier János');
Insert into FELHASZNALO (ID,NEV) values ('801','Szõts Dorika');
Insert into FELHASZNALO (ID,NEV) values ('802','Schmid Lukacs');
Insert into FELHASZNALO (ID,NEV) values ('803','Lévai Emese');
Insert into FELHASZNALO (ID,NEV) values ('804','Földi Rókus');
Insert into FELHASZNALO (ID,NEV) values ('805','Soós Odon');
Insert into FELHASZNALO (ID,NEV) values ('806','Sinka Endre');
Insert into FELHASZNALO (ID,NEV) values ('807','Gyõrfi Ugor');
Insert into FELHASZNALO (ID,NEV) values ('808','Kultsár Sebes');
Insert into FELHASZNALO (ID,NEV) values ('809','Szöllösi Katalin');
Insert into FELHASZNALO (ID,NEV) values ('810','Donka Noémi');
Insert into FELHASZNALO (ID,NEV) values ('811','Bencze Virag');
Insert into FELHASZNALO (ID,NEV) values ('812','Szilágyi Neci');
Insert into FELHASZNALO (ID,NEV) values ('813','Söröss Kinga');
Insert into FELHASZNALO (ID,NEV) values ('814','Ujvári Pázmán');
Insert into FELHASZNALO (ID,NEV) values ('815','Kulcsár Kemenes');
Insert into FELHASZNALO (ID,NEV) values ('816','Pálinkás Jenci');
Insert into FELHASZNALO (ID,NEV) values ('817','Szepessi Gazsi');
Insert into FELHASZNALO (ID,NEV) values ('818','Major Dóra');
Insert into FELHASZNALO (ID,NEV) values ('819','Pataki Veronika');
Insert into FELHASZNALO (ID,NEV) values ('820','Magyar Dalma');
Insert into FELHASZNALO (ID,NEV) values ('821','Illés Orsolya');
Insert into FELHASZNALO (ID,NEV) values ('822','Gyõrfi Gabriella');
Insert into FELHASZNALO (ID,NEV) values ('823','Gyarmathy Kat');
Insert into FELHASZNALO (ID,NEV) values ('824','Meyer Adojan');
Insert into FELHASZNALO (ID,NEV) values ('825','Kósa Lõrinc');
Insert into FELHASZNALO (ID,NEV) values ('826','Herman Gyurka');
Insert into FELHASZNALO (ID,NEV) values ('827','Orsós Bettina');
Insert into FELHASZNALO (ID,NEV) values ('828','Göröncsér Ramóna');
Insert into FELHASZNALO (ID,NEV) values ('829','Balla Ilona');
Insert into FELHASZNALO (ID,NEV) values ('830','Mátyás Rebeka');
Insert into FELHASZNALO (ID,NEV) values ('831','Tury Zsanett');
Insert into FELHASZNALO (ID,NEV) values ('832','Révész Virag');
Insert into FELHASZNALO (ID,NEV) values ('833','Szántó Adrián');
Insert into FELHASZNALO (ID,NEV) values ('834','Gergely Uzor');
Insert into FELHASZNALO (ID,NEV) values ('835','Hofman Beatrix');
Insert into FELHASZNALO (ID,NEV) values ('836','Szöllõsi Jolan');
Insert into FELHASZNALO (ID,NEV) values ('837','Áts Mátyás');
Insert into FELHASZNALO (ID,NEV) values ('838','Gyarmati Melinda');
Insert into FELHASZNALO (ID,NEV) values ('839','Szatmáry Zsofia');
Insert into FELHASZNALO (ID,NEV) values ('840','Barabás Cili');
Insert into FELHASZNALO (ID,NEV) values ('841','Pethõ Ágnes');
Insert into FELHASZNALO (ID,NEV) values ('842','Szõcs Franciska');
Insert into FELHASZNALO (ID,NEV) values ('843','Herczeg Borsala');
Insert into FELHASZNALO (ID,NEV) values ('844','Szölösi Csilla');
Insert into FELHASZNALO (ID,NEV) values ('845','Soós Deli');
Insert into FELHASZNALO (ID,NEV) values ('846','Csikós Frici');
Insert into FELHASZNALO (ID,NEV) values ('847','Kósa Frici');
Insert into FELHASZNALO (ID,NEV) values ('848','Gál Karsa');
Insert into FELHASZNALO (ID,NEV) values ('849','Böröcz Hanna');
Insert into FELHASZNALO (ID,NEV) values ('850','Sultisz Ugor');
Insert into FELHASZNALO (ID,NEV) values ('851','Lengyel Bertuska');
Insert into FELHASZNALO (ID,NEV) values ('852','Márkus Vicuska');
Insert into FELHASZNALO (ID,NEV) values ('853','Kálmán Hont');
Insert into FELHASZNALO (ID,NEV) values ('854','Lázár Bettina');
Insert into FELHASZNALO (ID,NEV) values ('855','Csikós Orzsebet');
Insert into FELHASZNALO (ID,NEV) values ('856','Szöllössi Karola');
Insert into FELHASZNALO (ID,NEV) values ('857','Csizmazia Zerind');
Insert into FELHASZNALO (ID,NEV) values ('858','Bányai Juci');
Insert into FELHASZNALO (ID,NEV) values ('859','Szakály Tzigane');
Insert into FELHASZNALO (ID,NEV) values ('860','Dudás Szalók');
Insert into FELHASZNALO (ID,NEV) values ('861','Veress Franciska');
Insert into FELHASZNALO (ID,NEV) values ('862','Szölösi Zombor');
Insert into FELHASZNALO (ID,NEV) values ('863','Sághi Vitéz');
Insert into FELHASZNALO (ID,NEV) values ('864','Seres Rezsõ');
Insert into FELHASZNALO (ID,NEV) values ('865','Seress Karole');
Insert into FELHASZNALO (ID,NEV) values ('866','Sinko Zsanett');
Insert into FELHASZNALO (ID,NEV) values ('867','Lakatos Dorika');
Insert into FELHASZNALO (ID,NEV) values ('868','Sebök Krisztián');
Insert into FELHASZNALO (ID,NEV) values ('869','Szöts Patrícia');
Insert into FELHASZNALO (ID,NEV) values ('870','Smit Ibolya');
Insert into FELHASZNALO (ID,NEV) values ('871','Kállai Ferenc');
Insert into FELHASZNALO (ID,NEV) values ('872','Somogyi Diána');
Insert into FELHASZNALO (ID,NEV) values ('873','Kováts Szilárd');
Insert into FELHASZNALO (ID,NEV) values ('766','Máté Myricoorish');
Insert into FELHASZNALO (ID,NEV) values ('767','Szakály Virag');
Insert into FELHASZNALO (ID,NEV) values ('874','Vagner Domokos');
Insert into FELHASZNALO (ID,NEV) values ('875','Benkó Roland');
Insert into FELHASZNALO (ID,NEV) values ('876','Bagy Diána');
Insert into FELHASZNALO (ID,NEV) values ('877','Szepesy Lilla');
Insert into FELHASZNALO (ID,NEV) values ('878','Szõts Tarján');
Insert into FELHASZNALO (ID,NEV) values ('879','Molnár Teca');
Insert into FELHASZNALO (ID,NEV) values ('880','Soós Zerind');
Insert into FELHASZNALO (ID,NEV) values ('881','Danka Katarina');
Insert into FELHASZNALO (ID,NEV) values ('882','Torma Armand');
Insert into FELHASZNALO (ID,NEV) values ('883','Szöllössy Radomér');
Insert into FELHASZNALO (ID,NEV) values ('884','Forgáts Ágnes');
Insert into FELHASZNALO (ID,NEV) values ('885','Szöke Kati');
Insert into FELHASZNALO (ID,NEV) values ('886','Forgáts Nóra');
Insert into FELHASZNALO (ID,NEV) values ('887','Lörinc Viva');
Insert into FELHASZNALO (ID,NEV) values ('888','Szüts Bence');
Insert into FELHASZNALO (ID,NEV) values ('889','Mátyás Zoárd');
Insert into FELHASZNALO (ID,NEV) values ('890','Földy Pongor');
Insert into FELHASZNALO (ID,NEV) values ('891','Tóth Adony');
Insert into FELHASZNALO (ID,NEV) values ('892','Szõcs Natália');
Insert into FELHASZNALO (ID,NEV) values ('893','Bányay Szemere');
Insert into FELHASZNALO (ID,NEV) values ('894','Forgách Blanka');
Insert into FELHASZNALO (ID,NEV) values ('895','Gyúróskaja árkommandó');
Insert into FELHASZNALO (ID,NEV) values ('896','Gyúróskaja árkommandó');
Insert into FELHASZNALO (ID,NEV) values ('897','Nyerõ Tippmix/Tippek');
Insert into FELHASZNALO (ID,NEV) values ('898','Szegedi kispalyas foci');
Insert into FELHASZNALO (ID,NEV) values ('899','Fitness, egészség, sport');
Insert into FELHASZNALO (ID,NEV) values ('900','Futófelszerelés, sporteszköz');
Insert into FELHASZNALO (ID,NEV) values ('901','Németh Sándor Pásztor tanítasai');
Insert into FELHASZNALO (ID,NEV) values ('902','Test - lélek - szellem');
Insert into FELHASZNALO (ID,NEV) values ('903','Univerzum Könyvtára');
Insert into FELHASZNALO (ID,NEV) values ('904','Szeméttelep');
Insert into FELHASZNALO (ID,NEV) values ('905','Leesett? Ez véresen komoly!');
Insert into FELHASZNALO (ID,NEV) values ('462','Gyõrfy Nándor');
Insert into FELHASZNALO (ID,NEV) values ('463','Sipos Zsuzsi');
Insert into FELHASZNALO (ID,NEV) values ('464','Szõlõsi Bars');
Insert into FELHASZNALO (ID,NEV) values ('465','Illyés Benedek');
Insert into FELHASZNALO (ID,NEV) values ('466','Balázs Gedeon');
Insert into FELHASZNALO (ID,NEV) values ('467','Gyarmaty Firenze');
Insert into FELHASZNALO (ID,NEV) values ('468','Kun Fredek');
Insert into FELHASZNALO (ID,NEV) values ('469','Szalai Solt');
Insert into FELHASZNALO (ID,NEV) values ('470','Szölõsy Bernadett');
Insert into FELHASZNALO (ID,NEV) values ('471','Kozma Gerzson');
Insert into FELHASZNALO (ID,NEV) values ('472','Gyõri Szabolcs');
Insert into FELHASZNALO (ID,NEV) values ('473','Bányai Nóra');
Insert into FELHASZNALO (ID,NEV) values ('474','Tar Kartal');
Insert into FELHASZNALO (ID,NEV) values ('475','Berényi Asztrik');
Insert into FELHASZNALO (ID,NEV) values ('476','Takácz Farkas');
Insert into FELHASZNALO (ID,NEV) values ('477','Kováts Szebasztián');
Insert into FELHASZNALO (ID,NEV) values ('478','Harsányi Vayk');
Insert into FELHASZNALO (ID,NEV) values ('479','Deák Georgina');
Insert into FELHASZNALO (ID,NEV) values ('480','Miklós Marianna');
Insert into FELHASZNALO (ID,NEV) values ('481','Csizmazia Kornél');
Insert into FELHASZNALO (ID,NEV) values ('482','Szûts Frigyes');
Insert into FELHASZNALO (ID,NEV) values ('483','Makai Klaudia');
Insert into FELHASZNALO (ID,NEV) values ('484','Sághy Treszka');
Insert into FELHASZNALO (ID,NEV) values ('485','Simon Flóra');
Insert into FELHASZNALO (ID,NEV) values ('486','Fekete Alexa');
Insert into FELHASZNALO (ID,NEV) values ('487','Györffy Liza');
Insert into FELHASZNALO (ID,NEV) values ('488','Szép Kende');
Insert into FELHASZNALO (ID,NEV) values ('489','Dömötör Karolina');
Insert into FELHASZNALO (ID,NEV) values ('490','Zsinka Viva');
Insert into FELHASZNALO (ID,NEV) values ('491','Sághy Radomér');
Insert into FELHASZNALO (ID,NEV) values ('492','Széll Julcsa');
Insert into FELHASZNALO (ID,NEV) values ('493','Majer Hajnalka');
Insert into FELHASZNALO (ID,NEV) values ('494','Markó Vanda');
Insert into FELHASZNALO (ID,NEV) values ('495','Szegedi Janka');
Insert into FELHASZNALO (ID,NEV) values ('496','Kiss Zsuzsanna');
Insert into FELHASZNALO (ID,NEV) values ('497','Benedek Gitta');
Insert into FELHASZNALO (ID,NEV) values ('498','Tot Zsombor');
Insert into FELHASZNALO (ID,NEV) values ('499','Bence Fanni');
Insert into FELHASZNALO (ID,NEV) values ('500','Béres Georgina');
Insert into FELHASZNALO (ID,NEV) values ('501','Deák Kadosa');
Insert into FELHASZNALO (ID,NEV) values ('502','Saági Alberta');
Insert into FELHASZNALO (ID,NEV) values ('503','Nemes Nikoletta');
Insert into FELHASZNALO (ID,NEV) values ('504','Sebestyén Lipót');
Insert into FELHASZNALO (ID,NEV) values ('505','Mészáros Menyhért');
Insert into FELHASZNALO (ID,NEV) values ('506','Györffi Keleman');
Insert into FELHASZNALO (ID,NEV) values ('507','Urbán Csombor');
Insert into FELHASZNALO (ID,NEV) values ('508','Albert Viva');
Insert into FELHASZNALO (ID,NEV) values ('509','Hajnal Eszter');
Insert into FELHASZNALO (ID,NEV) values ('510','Jakab Gara');
Insert into FELHASZNALO (ID,NEV) values ('511','Lukáts Dóra');
Insert into FELHASZNALO (ID,NEV) values ('512','Lang Adél');
Insert into FELHASZNALO (ID,NEV) values ('513','Erõs Roland');
Insert into FELHASZNALO (ID,NEV) values ('514','Mayer Kolos');
Insert into FELHASZNALO (ID,NEV) values ('515','Szölõs Dominik');
Insert into FELHASZNALO (ID,NEV) values ('516','Sebök Liza');
Insert into FELHASZNALO (ID,NEV) values ('517','Pataki Beatrix');
Insert into FELHASZNALO (ID,NEV) values ('518','Bence Elizabet');
Insert into FELHASZNALO (ID,NEV) values ('519','Pataky Moricz');
Insert into FELHASZNALO (ID,NEV) values ('520','Sultés Darda');
Insert into FELHASZNALO (ID,NEV) values ('521','Vig Agoti');
Insert into FELHASZNALO (ID,NEV) values ('522','Lovász Zalán');
Insert into FELHASZNALO (ID,NEV) values ('523','Fülöp Jenci');
Insert into FELHASZNALO (ID,NEV) values ('524','Szöllössi Tivadar');
Insert into FELHASZNALO (ID,NEV) values ('525','Szathmári Hajnalka');
Insert into FELHASZNALO (ID,NEV) values ('526','Bernáth Liza');
Insert into FELHASZNALO (ID,NEV) values ('527','Lendvay Fredek');
Insert into FELHASZNALO (ID,NEV) values ('528','Szölõs Nyék');
Insert into FELHASZNALO (ID,NEV) values ('529','Berta Vitéz');
Insert into FELHASZNALO (ID,NEV) values ('530','Sebestyén Blanka');
Insert into FELHASZNALO (ID,NEV) values ('531','Széll Hajnalka');
Insert into FELHASZNALO (ID,NEV) values ('532','Vég Boglárka');
Insert into FELHASZNALO (ID,NEV) values ('533','Bán Marót');
Insert into FELHASZNALO (ID,NEV) values ('534','Laczkó Enikõ');
Insert into FELHASZNALO (ID,NEV) values ('535','Rigó Alex');
Insert into FELHASZNALO (ID,NEV) values ('536','Mátyás Ivett');
Insert into FELHASZNALO (ID,NEV) values ('537','Bakos Juci');
Insert into FELHASZNALO (ID,NEV) values ('538','Sebõk Rez');
Insert into FELHASZNALO (ID,NEV) values ('539','Komáromi Bertuska');
Insert into FELHASZNALO (ID,NEV) values ('540','Sághi Oszlár');
Insert into FELHASZNALO (ID,NEV) values ('541','Seres Renátó');
Insert into FELHASZNALO (ID,NEV) values ('542','Bagi Cintia');
Insert into FELHASZNALO (ID,NEV) values ('543','Pásztor Réka');
Insert into FELHASZNALO (ID,NEV) values ('544','Kurutz Borbála');
Insert into FELHASZNALO (ID,NEV) values ('545','Szilágyi Gyuszi');
Insert into FELHASZNALO (ID,NEV) values ('546','Sultés Szevér');
Insert into FELHASZNALO (ID,NEV) values ('547','Kállay Dalma');
Insert into FELHASZNALO (ID,NEV) values ('548','Földesi Kata');
Insert into FELHASZNALO (ID,NEV) values ('549','Kuncz Ormos');
Insert into FELHASZNALO (ID,NEV) values ('550','Szepesi Olivér');
Insert into FELHASZNALO (ID,NEV) values ('551','Demeter Krisztofer');
Insert into FELHASZNALO (ID,NEV) values ('552','Erdélyi Izsak');
Insert into FELHASZNALO (ID,NEV) values ('553','Illés Hunor');
Insert into FELHASZNALO (ID,NEV) values ('554','Virág Viktor');
Insert into FELHASZNALO (ID,NEV) values ('555','Kõvári Tardos');
Insert into FELHASZNALO (ID,NEV) values ('556','Benkö Ilona');
Insert into FELHASZNALO (ID,NEV) values ('557','Bernáth Jázmin');
Insert into FELHASZNALO (ID,NEV) values ('558','Albert Dániel');
Insert into FELHASZNALO (ID,NEV) values ('559','Nagy Nóra');
Insert into FELHASZNALO (ID,NEV) values ('560','Bolla Menyhért');
Insert into FELHASZNALO (ID,NEV) values ('561','Bálint Juci');
Insert into FELHASZNALO (ID,NEV) values ('562','Mezey Kemenes');
Insert into FELHASZNALO (ID,NEV) values ('563','Farkas Ágnes');
Insert into FELHASZNALO (ID,NEV) values ('564','Váradi Vanda');
Insert into FELHASZNALO (ID,NEV) values ('565','Heged?s Marianna');
Insert into FELHASZNALO (ID,NEV) values ('566','Torma Linka');
Insert into FELHASZNALO (ID,NEV) values ('567','Szalai Kartal');
Insert into FELHASZNALO (ID,NEV) values ('568','Mülner Lajos');
Insert into FELHASZNALO (ID,NEV) values ('569','Csizmadia Marika');
Insert into FELHASZNALO (ID,NEV) values ('570','Rátz Géza');
Insert into FELHASZNALO (ID,NEV) values ('571','Szakáts Edina');
Insert into FELHASZNALO (ID,NEV) values ('572','Rózsa Zerind');
Insert into FELHASZNALO (ID,NEV) values ('573','Kováts Kinga');
Insert into FELHASZNALO (ID,NEV) values ('574','Balogh Beatrix');
Insert into FELHASZNALO (ID,NEV) values ('575','Bodo Mária');
Insert into FELHASZNALO (ID,NEV) values ('576','Szatmáry Nusi');
Insert into FELHASZNALO (ID,NEV) values ('577','Bogdán Bálint');
Insert into FELHASZNALO (ID,NEV) values ('578','Balla Paliki');
Insert into FELHASZNALO (ID,NEV) values ('579','Hoffmann Franciska');
Insert into FELHASZNALO (ID,NEV) values ('580','Szabados Csanád');
Insert into FELHASZNALO (ID,NEV) values ('581','László Annamária');
Insert into FELHASZNALO (ID,NEV) values ('582','Mülner Laborc');
Insert into FELHASZNALO (ID,NEV) values ('583','Bence Martuska');
Insert into FELHASZNALO (ID,NEV) values ('584','Fenyvesi Deli');
Insert into FELHASZNALO (ID,NEV) values ('585','Gaál Marika');
Insert into FELHASZNALO (ID,NEV) values ('586','Fazakas Mátyás');
Insert into FELHASZNALO (ID,NEV) values ('587','Földy Rebeka');
Insert into FELHASZNALO (ID,NEV) values ('588','Keresztes Regina');
Insert into FELHASZNALO (ID,NEV) values ('589','Pintér Szonja');
Insert into FELHASZNALO (ID,NEV) values ('590','Lengyel Kamilla');
Insert into FELHASZNALO (ID,NEV) values ('591','Kõváry Kornél');
Insert into FELHASZNALO (ID,NEV) values ('592','Márton Rezsõ');
Insert into FELHASZNALO (ID,NEV) values ('593','Simko Viva');
Insert into FELHASZNALO (ID,NEV) values ('594','Thury Csenge');
Insert into FELHASZNALO (ID,NEV) values ('595','Illés Karole');
Insert into FELHASZNALO (ID,NEV) values ('596','Vig Katakin');
Insert into FELHASZNALO (ID,NEV) values ('597','Urbán Zsa Zsa');
Insert into FELHASZNALO (ID,NEV) values ('598','Kõváry Moricz');
Insert into FELHASZNALO (ID,NEV) values ('599','Kováts Marianna');
Insert into FELHASZNALO (ID,NEV) values ('600','Mülner Zsolt');
Insert into FELHASZNALO (ID,NEV) values ('601','Szöcs Ibolya');
Insert into FELHASZNALO (ID,NEV) values ('602','Kalmár Ferko');
Insert into FELHASZNALO (ID,NEV) values ('603','Lantos Uzor');
Insert into FELHASZNALO (ID,NEV) values ('604','Sallay Kamilla');
Insert into FELHASZNALO (ID,NEV) values ('605','Puskás Uros');
Insert into FELHASZNALO (ID,NEV) values ('606','Markó Laura');
Insert into FELHASZNALO (ID,NEV) values ('607','Lõrincz Boriska');
Insert into FELHASZNALO (ID,NEV) values ('608','Pásztor Jozsef');
Insert into FELHASZNALO (ID,NEV) values ('609','Czakó Enikõ');
Insert into FELHASZNALO (ID,NEV) values ('610','Lengyel Liliána');
Insert into FELHASZNALO (ID,NEV) values ('611','Herczegh Janka');
Insert into FELHASZNALO (ID,NEV) values ('612','Gyõrffy Ond');
Insert into FELHASZNALO (ID,NEV) values ('613','Demeter Tétény');
Insert into FELHASZNALO (ID,NEV) values ('614','Sági Hajnalka');
Insert into FELHASZNALO (ID,NEV) values ('615','Földi Zsa Zsa');
Insert into FELHASZNALO (ID,NEV) values ('616','Székely Ambrus');
Insert into FELHASZNALO (ID,NEV) values ('617','Orosz Titusz');
Insert into FELHASZNALO (ID,NEV) values ('618','Kuncz Mátyás');
Insert into FELHASZNALO (ID,NEV) values ('619','Lovász Emese');
Insert into FELHASZNALO (ID,NEV) values ('620','Sebeõk Fruzsina');
Insert into FELHASZNALO (ID,NEV) values ('621','Szöllõsy Antal');
Insert into FELHASZNALO (ID,NEV) values ('622','Szakáts Barbara');
Insert into FELHASZNALO (ID,NEV) values ('623','Simko Vince');
Insert into FELHASZNALO (ID,NEV) values ('624','Sipos Samuka');
Insert into FELHASZNALO (ID,NEV) values ('625','Gyõry Margo');
Insert into FELHASZNALO (ID,NEV) values ('626','Sághi Orbán');
Insert into FELHASZNALO (ID,NEV) values ('627','Szakály Éva');
Insert into FELHASZNALO (ID,NEV) values ('628','Sebestyén Vince');
Insert into FELHASZNALO (ID,NEV) values ('629','Kertész Etilka');
Insert into FELHASZNALO (ID,NEV) values ('630','Szegedy Alex');
Insert into FELHASZNALO (ID,NEV) values ('631','Szathmáry Gergo');
Insert into FELHASZNALO (ID,NEV) values ('632','Révész Aurelia');
Insert into FELHASZNALO (ID,NEV) values ('633','Józsa Tarcal');
Insert into FELHASZNALO (ID,NEV) values ('634','Danka Ladomér');
Insert into FELHASZNALO (ID,NEV) values ('635','Salay Klaudia');
Insert into FELHASZNALO (ID,NEV) values ('636','Takách Milán');
Insert into FELHASZNALO (ID,NEV) values ('637','Kovács Endre');
Insert into FELHASZNALO (ID,NEV) values ('638','Máté György');
Insert into FELHASZNALO (ID,NEV) values ('639','Polgár Reg?');
Insert into FELHASZNALO (ID,NEV) values ('640','Fenyvessy Erzsi');
Insert into FELHASZNALO (ID,NEV) values ('641','Csizmazia Brigitta');
Insert into FELHASZNALO (ID,NEV) values ('642','Bogdán Angyalka');
Insert into FELHASZNALO (ID,NEV) values ('643','Fodor Miklós');
Insert into FELHASZNALO (ID,NEV) values ('644','Virágh György');
Insert into FELHASZNALO (ID,NEV) values ('645','Csizmazia Gisella');
Insert into FELHASZNALO (ID,NEV) values ('646','Szepessy Evike');
Insert into FELHASZNALO (ID,NEV) values ('647','Jósa Hajna');
Insert into FELHASZNALO (ID,NEV) values ('648','Várady Benjámin');
Insert into FELHASZNALO (ID,NEV) values ('649','Német Ktisztina');
Insert into FELHASZNALO (ID,NEV) values ('650','Vince Kartal');
Insert into FELHASZNALO (ID,NEV) values ('651','Donka Ozor');
Insert into FELHASZNALO (ID,NEV) values ('652','Markó Gizi');
Insert into FELHASZNALO (ID,NEV) values ('653','Kecskés Boglárka');
Insert into FELHASZNALO (ID,NEV) values ('654','Mezei Klaudia');
Insert into FELHASZNALO (ID,NEV) values ('655','Kõváry Bartalan');
Insert into FELHASZNALO (ID,NEV) values ('656','Csizmadia Darda');
Insert into FELHASZNALO (ID,NEV) values ('657','Kalmár Cseke');
Insert into FELHASZNALO (ID,NEV) values ('658','Ujvári Solt');
Insert into FELHASZNALO (ID,NEV) values ('659','Péter Orkény');
Insert into FELHASZNALO (ID,NEV) values ('660','Gál Kende');
Insert into FELHASZNALO (ID,NEV) values ('661','Gáspár Milán');
Insert into FELHASZNALO (ID,NEV) values ('662','Keresztes Réka');
Insert into FELHASZNALO (ID,NEV) values ('663','Borbás Roza');
Insert into FELHASZNALO (ID,NEV) values ('664','Schmidt Aliz');
Insert into FELHASZNALO (ID,NEV) values ('665','Pete Teca');
Insert into FELHASZNALO (ID,NEV) values ('666','Madarász Zsolt');
Insert into FELHASZNALO (ID,NEV) values ('667','Kádár Szabolcs');
Insert into FELHASZNALO (ID,NEV) values ('668','Fehér Zsanett');
Insert into FELHASZNALO (ID,NEV) values ('669','Földi Ktisztina');
Insert into FELHASZNALO (ID,NEV) values ('670','Vincze Krisztina');
Insert into FELHASZNALO (ID,NEV) values ('671','Schulteisz Rezsõ');
Insert into FELHASZNALO (ID,NEV) values ('672','Papp Klaudia');
Insert into FELHASZNALO (ID,NEV) values ('673','Fülöp Gyula');
Insert into FELHASZNALO (ID,NEV) values ('674','Szõllõs Patony');
Insert into FELHASZNALO (ID,NEV) values ('675','Toth Zsombor');
Insert into FELHASZNALO (ID,NEV) values ('676','Petö Bodi');
Insert into FELHASZNALO (ID,NEV) values ('677','Gulyás Erssike');
Insert into FELHASZNALO (ID,NEV) values ('678','Vargha Paliki');
Insert into FELHASZNALO (ID,NEV) values ('679','Czakó Mátyás');
Insert into FELHASZNALO (ID,NEV) values ('680','Gaál Samuka');
Insert into FELHASZNALO (ID,NEV) values ('681','Gaál Emese');
Insert into FELHASZNALO (ID,NEV) values ('682','Zsinka Szabolcs');
Insert into FELHASZNALO (ID,NEV) values ('683','Szölõsi Csongor');
Insert into FELHASZNALO (ID,NEV) values ('684','Polak Balázs');
Insert into FELHASZNALO (ID,NEV) values ('685','Horvát Ormos');
Insert into FELHASZNALO (ID,NEV) values ('686','Bertha Dániel');
Insert into FELHASZNALO (ID,NEV) values ('687','Bencze Sólyom');
Insert into FELHASZNALO (ID,NEV) values ('688','Herceg Marcell');
Insert into FELHASZNALO (ID,NEV) values ('689','Gera Bettina');
Insert into FELHASZNALO (ID,NEV) values ('690','Révész Bartalan');
Insert into FELHASZNALO (ID,NEV) values ('691','Kelemen Zoárd');
Insert into FELHASZNALO (ID,NEV) values ('692','Földi Bianka');
Insert into FELHASZNALO (ID,NEV) values ('693','Pethe Gisella');
Insert into FELHASZNALO (ID,NEV) values ('694','Szakáts Ozsvát');
Insert into FELHASZNALO (ID,NEV) values ('695','Kulcsár Lehel');
Insert into FELHASZNALO (ID,NEV) values ('696','Sági Barnabás');
Insert into FELHASZNALO (ID,NEV) values ('697','Gulyás Szalyk');
Insert into FELHASZNALO (ID,NEV) values ('698','Smitt Laura');
Insert into FELHASZNALO (ID,NEV) values ('699','Müllner Eszti');
Insert into FELHASZNALO (ID,NEV) values ('700','Szegedi Hajna');
Insert into FELHASZNALO (ID,NEV) values ('701','Borbás Sasa');
Insert into FELHASZNALO (ID,NEV) values ('702','Vég Florka');
Insert into FELHASZNALO (ID,NEV) values ('703','Vadász Evelin');
Insert into FELHASZNALO (ID,NEV) values ('704','Kuncz Ágnes');
Insert into FELHASZNALO (ID,NEV) values ('705','Borsos Renátó');
Insert into FELHASZNALO (ID,NEV) values ('706','Rácz Keve');
Insert into FELHASZNALO (ID,NEV) values ('707','Végh Atilla');
Insert into FELHASZNALO (ID,NEV) values ('708','Mülner Malcsi');
Insert into FELHASZNALO (ID,NEV) values ('709','Szalay Hajnalka');
Insert into FELHASZNALO (ID,NEV) values ('710','Havass Izabella');
Insert into FELHASZNALO (ID,NEV) values ('711','Molnár Krisztián');
Insert into FELHASZNALO (ID,NEV) values ('712','Csontos Folkus');
Insert into FELHASZNALO (ID,NEV) values ('713','Herczeg Lipót');
Insert into FELHASZNALO (ID,NEV) values ('714','Vass Robi');
Insert into FELHASZNALO (ID,NEV) values ('715','Kárpáthy Bettina');
Insert into FELHASZNALO (ID,NEV) values ('716','Erdélyi Anci');
Insert into FELHASZNALO (ID,NEV) values ('717','Kocsis Mária');
Insert into FELHASZNALO (ID,NEV) values ('718','Schmid Angyalka');
Insert into FELHASZNALO (ID,NEV) values ('719','Fehér Szilveszter');
Insert into FELHASZNALO (ID,NEV) values ('720','Kun Kat');
Insert into FELHASZNALO (ID,NEV) values ('721','Mester András');
Insert into FELHASZNALO (ID,NEV) values ('722','Benedek Taksony');
Insert into FELHASZNALO (ID,NEV) values ('723','Polgár Tomaj');
Insert into FELHASZNALO (ID,NEV) values ('724','Radics Kardos');
Insert into FELHASZNALO (ID,NEV) values ('725','Papp Ákos');
Insert into FELHASZNALO (ID,NEV) values ('726','Barna Péter');
Insert into FELHASZNALO (ID,NEV) values ('727','Szalay Franciska');
Insert into FELHASZNALO (ID,NEV) values ('728','Sinko Ambrus');
Insert into FELHASZNALO (ID,NEV) values ('729','Weress Neci');
Insert into FELHASZNALO (ID,NEV) values ('730','Fenyvessy Erzsok');
Insert into FELHASZNALO (ID,NEV) values ('731','Meyer Lõrinc');
Insert into FELHASZNALO (ID,NEV) values ('732','Vagner Rykus');
Insert into FELHASZNALO (ID,NEV) values ('733','Lukáts Treszka');
Insert into FELHASZNALO (ID,NEV) values ('734','Mayer Krisztina');
Insert into FELHASZNALO (ID,NEV) values ('735','Kontz Rozalia');
Insert into FELHASZNALO (ID,NEV) values ('736','Illés Adojan');
Insert into FELHASZNALO (ID,NEV) values ('737','Vas Tarcal');
Insert into FELHASZNALO (ID,NEV) values ('738','Szöllössy Gara');
Insert into FELHASZNALO (ID,NEV) values ('739','Kerekes Piusz');
Insert into FELHASZNALO (ID,NEV) values ('740','Ságy Gizi');
Insert into FELHASZNALO (ID,NEV) values ('741','Havassy Roland');
Insert into FELHASZNALO (ID,NEV) values ('742','Józsa Patony');
Insert into FELHASZNALO (ID,NEV) values ('743','Polach Lenci');
Insert into FELHASZNALO (ID,NEV) values ('744','Bolla Soma');
Insert into FELHASZNALO (ID,NEV) values ('745','Czakó Etilka');
Insert into FELHASZNALO (ID,NEV) values ('746','Szöke Géza');
Insert into FELHASZNALO (ID,NEV) values ('747','Szigethy Ilona');
Insert into FELHASZNALO (ID,NEV) values ('748','Szõllösi Jázmin');
Insert into FELHASZNALO (ID,NEV) values ('749','Mester Aranka');
Insert into FELHASZNALO (ID,NEV) values ('750','Bán Lilla');
Insert into FELHASZNALO (ID,NEV) values ('751','Baranyay Alexa');
Insert into FELHASZNALO (ID,NEV) values ('752','Szöllössi Melinda');
Insert into FELHASZNALO (ID,NEV) values ('753','Tar Csenger');
Insert into FELHASZNALO (ID,NEV) values ('754','Szakál Evelin');
Insert into FELHASZNALO (ID,NEV) values ('755','Lõrinc Zalán');
Insert into FELHASZNALO (ID,NEV) values ('756','Fenyves Tünde');
Insert into FELHASZNALO (ID,NEV) values ('757','Smit Martuska');
Insert into FELHASZNALO (ID,NEV) values ('758','Széll Laura');
Insert into FELHASZNALO (ID,NEV) values ('759','Sós Paliki');
Insert into FELHASZNALO (ID,NEV) values ('760','Pap Julcsa');
Insert into FELHASZNALO (ID,NEV) values ('761','Gyõrfi Gyuszi');
Insert into FELHASZNALO (ID,NEV) values ('762','Polyák Nusi');
Insert into FELHASZNALO (ID,NEV) values ('763','Majoros Tas');
Insert into FELHASZNALO (ID,NEV) values ('764','Fekete Jolan');
Insert into FELHASZNALO (ID,NEV) values ('765','Szõlösi Patrícia');
Insert into FELHASZNALO (ID,NEV) values ('461','Kardos Tünde');
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
Insert into HOBBI (HOBBIID,NEV) values ('1','Agyagozás');
Insert into HOBBI (HOBBIID,NEV) values ('2','Állatgondozás');
Insert into HOBBI (HOBBIID,NEV) values ('3','Állatidomítás');
Insert into HOBBI (HOBBIID,NEV) values ('4','Amatõr rádiózás');
Insert into HOBBI (HOBBIID,NEV) values ('5','Amerikai futball');
Insert into HOBBI (HOBBIID,NEV) values ('6','Asztaliteniszezés');
Insert into HOBBI (HOBBIID,NEV) values ('7','Atlétika');
Insert into HOBBI (HOBBIID,NEV) values ('8','Autóversenyzés');
Insert into HOBBI (HOBBIID,NEV) values ('9','Barlangászat');
Insert into HOBBI (HOBBIID,NEV) values ('10','Baseball');
Insert into HOBBI (HOBBIID,NEV) values ('11','Bélyeggyûjtés');
Insert into HOBBI (HOBBIID,NEV) values ('12','Biciklizés');
Insert into HOBBI (HOBBIID,NEV) values ('13','Biliárdozás');
Insert into HOBBI (HOBBIID,NEV) values ('14','Biogazdálkodás');
Insert into HOBBI (HOBBIID,NEV) values ('15','Blogolás');
Insert into HOBBI (HOBBIID,NEV) values ('16','Borkóstolás');
Insert into HOBBI (HOBBIID,NEV) values ('17','Bungee Jumping');
Insert into HOBBI (HOBBIID,NEV) values ('18','Búvárkodás');
Insert into HOBBI (HOBBIID,NEV) values ('19','Bûvészkedés');
Insert into HOBBI (HOBBIID,NEV) values ('20','Cosplayezés');
Insert into HOBBI (HOBBIID,NEV) values ('21','Cukrászkodás');
Insert into HOBBI (HOBBIID,NEV) values ('22','Csillagászat');
Insert into HOBBI (HOBBIID,NEV) values ('23','Dalszerzés');
Insert into HOBBI (HOBBIID,NEV) values ('24','Dartsozás');
Insert into HOBBI (HOBBIID,NEV) values ('25','Ékszerkészítés');
Insert into HOBBI (HOBBIID,NEV) values ('26','Hüllõfigyelés');
Insert into HOBBI (HOBBIID,NEV) values ('27','Íjászat');
Insert into HOBBI (HOBBIID,NEV) values ('28','Írás');
Insert into HOBBI (HOBBIID,NEV) values ('29','Jégkorcsolyázás');
Insert into HOBBI (HOBBIID,NEV) values ('30','Jégszobrászat');
Insert into HOBBI (HOBBIID,NEV) values ('31','Jóga');
Insert into HOBBI (HOBBIID,NEV) values ('32','Kagylógyûjtés');
Insert into HOBBI (HOBBIID,NEV) values ('33','Kajakozás');
Insert into HOBBI (HOBBIID,NEV) values ('34','Kártyázás');
Insert into HOBBI (HOBBIID,NEV) values ('35','Kempingelés');
Insert into HOBBI (HOBBIID,NEV) values ('36','Kenuzás');
Insert into HOBBI (HOBBIID,NEV) values ('37','Képeslapgyûjtés');
Insert into HOBBI (HOBBIID,NEV) values ('38','Képregénygyûjtés');
Insert into HOBBI (HOBBIID,NEV) values ('39','Kézilabda');
Insert into HOBBI (HOBBIID,NEV) values ('40','Kincskeresés');
Insert into HOBBI (HOBBIID,NEV) values ('41','Komposztálás');
Insert into HOBBI (HOBBIID,NEV) values ('42','Újrahasznosítás');
Insert into HOBBI (HOBBIID,NEV) values ('43','Szántás');
Insert into HOBBI (HOBBIID,NEV) values ('61','Nincs');
REM INSERTING into ISKOLA
SET DEFINE OFF;
Insert into ISKOLA (ISKOLAID,NEV) values ('92','Schola Europa Akadémia Szakképzõ Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('93','Kenderföld-Somági Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('94','Kodály Zoltán Ének-Zenei Katolikus Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('95','Szilvási Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('96','Szilvási Általános Iskola Felsõszilvási Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('97','Boldog Gizella Katolikus Óvoda És Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('98','Szent Imre Katolikus Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('99','Szent Imre Katolikus Iskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('100','Sztárai Mihály Református Általános Iskola És Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('101','Budai Városkapu Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('102','Budai-Városkapu Általános Iskola Bártfa Utcai Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('103','Lánycsóki Általános Iskola És Alapfokú Mûvészeti Iskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('104','Lippói Gárdonyi Géza Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('105','Frey János Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('106','Olaszi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('107','Sombereki Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('108','Sombereki Általános Iskola És Alapfokú Mûvészeti Iskola Dunaszekcsõi Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('109','Szederkényi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('110','Szederkényi Általános Iskola Babarci Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('111','Szederkényi Általános Iskola Borjádi Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('112','Szederkényi Általános Iskola Szajki Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('113','Véméndi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('114','Berkesdi Fekete István Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('115','Bogádi Dr. Berze Nagy János Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('116','Kozármislenyi Janikovszky Éva Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('117','Pellérdi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('118','Pellérdi Általános Iskola Gyódi Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('119','Pellérdi Általános Iskola Görcsönyi Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('120','Beremendi Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('121','Drávaszabolcsi Körzeti Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('122','Drávasztárai Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('123','Egyházasharaszti Körzeti Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('124','Egyházasharaszti Körzeti Általános Iskola Siklósnagyfalui Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('125','Kitaibel Pál Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('126','Kitaibel Pál Általános Iskola És Alapfokú Mûvészeti Iskola Drávaszabolcsi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('127','Munkácsy Albert Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('128','Munkácsy Albert Általános Iskola Beleváry Ferenc Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('129','Magyarbólyi Nyelvoktató Nemzetiségi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('130','Magyarmecskei Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('131','Kiss Géza Általános Iskola És Zenei Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('132','Kiss Géza Általános Iskola És Zenei Alapfokú Mûvészeti Iskola Csányoszrói Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('133','Szalántai Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('134','Szalántai Általános Iskola Arany János Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('135','Újpetrei Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('136','Vajszlói Kodolányi János Szakközépiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('137','Pécsi Apáczai Csere János Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('138','Pécsi Apáczai Csere János Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('139','Mohácsi Kisfaludy Károly Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('140','Siklósi Táncsics Mihály Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('141','Siklósi Táncsics Mihály Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('142','Siklósi Táncsics Mihály Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('143','Siklósi Táncsics Mihály Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('144','Siklósi Táncsics Mihály Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('145','Siklósi Táncsics Mihály Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('146','Siklósi Táncsics Mihály Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('147','Siklósi Táncsics Mihály Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('148','Siklósi Táncsics Mihály Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('149','Siklósi Táncsics Mihály Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('150','Dél-Zselic Általános Iskola Istvánffy Miklós Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('151','Dél-Zselic Tinódi Lantos Sebestyén Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('152','Dél-Zselic Általános Iskola Kétújfalui Konrád Ignác Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('153','Dél-Zselic Általános Iskola Nagydobszai Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('154','Dél-Zselic Általános Iskola Nagypeterd-Rózsafai Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('155','Dél-Zselic Általános Iskola Nagypeterd-Rózsafai Általános Iskolája  Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('156','Dél-Zselic Általános Iskola Somogyapáti Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('157','Dél-Zselic Általános Iskola Somogyapáti Általános Iskolája Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('158','Dél-Zselic Általános Iskola Szentlászlói Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('159','Dél-Zselic Általános Iskola Mozsgói Lengyeltóti János Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('160','Pécsi Tudományegyetem Gyakorló Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('161','Pte Gyakorló Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('162','Pte Gyakorló Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('163','Pécsi Janus Pannonius Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('164','Pécsi Református Kollégium Gimnáziuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('165','Pécsi Református Kollégium "E" Épület');
Insert into ISKOLA (ISKOLAID,NEV) values ('166','Pécsi Református Kollégium Sportcsarnoka');
Insert into ISKOLA (ISKOLAID,NEV) values ('167','Pécsi Református Kollégium Csikesz Sándor Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('168','Pécsi Református Kollégium Nagyharsányi Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('169','Gandhi Gimnázium És Kollégium');
Insert into ISKOLA (ISKOLAID,NEV) values ('170','Gandhi Gimnázium És Kollégium Komját Utcai Telephely');
Insert into ISKOLA (ISKOLAID,NEV) values ('171','Baptista Szeretetszolgálat Ejsz Széchenyi István Gimnáziuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('172','Baptista Szeretetszolgálat Ejsz Széchenyi István Gimnáziuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('173','Baptista Szeretetszolgálat Ejsz Széchenyi István Gimnáziuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('174','Pécsi Mûvészeti Gimnázium És Szakközépiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('175','Mohácsi Radnóti Miklós Kollégium');
Insert into ISKOLA (ISKOLAID,NEV) values ('176','Pte Szociális És Egészségügyi Szakképzõ Iskola Szent-Györgyi Albert Tagintézménye');
Insert into ISKOLA (ISKOLAID,NEV) values ('177','Pécsi Tudományegyetem Szociális És Egészségügyi Szakképzõ Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('178','Szabadszállási Petõfi Sándor Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('179','Szabadszállási Petõfi Sándor Általános Iskola Rákóczi Téri Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('180','Bajai Eötvös József Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('181','Bajai Eötvös József Általános Iskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('182','Bajai Szentistváni Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('183','Bajai Szentistváni Általános Iskola Arany János Tagintézménye');
Insert into ISKOLA (ISKOLAID,NEV) values ('184','Bajai Szentistváni Általános Iskola Csávolyi Tagintézménye');
Insert into ISKOLA (ISKOLAID,NEV) values ('185','Újvárosi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('186','Újvárosi Általános Iskola Felsõvárosi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('187','Nagyasszonyunk Katolikus Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('188','Emberi Erõforrások Minisztériuma Kalocsai Gyermekotthon');
Insert into ISKOLA (ISKOLAID,NEV) values ('189','Kecskeméti Fõiskola Petõfi Sándor Gyakorló Általános Iskola És Gyakorló Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('190','Kecskeméti Református Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('191','Szent József Katolikus Általános Iskola És Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('192','Kiskunhalasi Fazekas Mihály Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('193','Kiskunhalasi Fazekas Mihály Általános Iskola Zsanai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('194','Kiskunhalasi Fazekas Mihály Általános Iskola Balotaszállási Tagintézménye');
Insert into ISKOLA (ISKOLAID,NEV) values ('195','Kiskunhalasi Felsõvárosi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('196','Kiskunhalasi Felsõvárosi Általános Iskola Pirtói Tagintézménye');
Insert into ISKOLA (ISKOLAID,NEV) values ('197','Kiskunhalasi Református Kollégium Központi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('198','Kiskunhalasi Református Kollégium Központi Általános Iskola Gy. Szabó Béla Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('199','Kiskunhalasi Kertvárosi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('200','Tiszakécskei Református Általános Iskola És Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('201','Szent Gellért Katolikus Általános Iskola És Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('202','Varga Domokos Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('203','Varga Domokos Általános Iskola És Alapfokú Mûvészeti Iskola Alapfokú Mûvészeti Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('204','Varga Domokos Általános Iskola És Alapfokú Mûvészeti Iskola Tassi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('205','Varga Domokos Általános Iskola És Alapfokú Mûvészeti Iskola Kunpeszéri Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('206','Varga Domokos Általános Iskola És Alapfokú Mûvészeti Iskola Szabadszállási Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('207','Varga Domokos Általános Iskola És Alapfokú Mûvészeti Iskola Dunaegyházi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('208','Varga Domokos Általános Iskola És Alapfokú Mûvészeti Iskola Apostagi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('209','Szent Anna Katolikus Óvoda És Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('210','Szent Anna Katolikus Óvoda És Általános Iskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('211','Garai Nemzetiségi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('212','Hercegszántói Horvát Tanítási Nyelvû Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('213','Hercegszántói Horvát Tanítási Nyelvû Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('214','Hercegszántói Horvát Tanítási Nyelvû Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('215','Sükösdi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('216','Szeremle-Dunafalva Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('217','Szeremle-Dunafalva Általános Iskola Dunafalvai Tagintézménye');
Insert into ISKOLA (ISKOLAID,NEV) values ('218','Vaskúti Német Nemzetiségi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('219','Vaskúti Német Nemzetiségi Általános Iskola Becsei Töttös Tagintézménye');
Insert into ISKOLA (ISKOLAID,NEV) values ('220','Hajósi Szent Imre Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('221','Hajósi Szent Imre Általános Iskola Miskei Tóth Menyhért Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('222','Hartai Ráday Pál Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('223','Solti Vécsey Károly Általános Iskola És Alapfokú Mûvészeti Iskola Zsolt Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('224','Dunavecsei Petõfi Sándor Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('225','Dunavecsei Petõfi Sándor Általános Iskola Hõsök Terei Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('226','Dunavecsei Petõfi Sándor Általános Iskola Zrínyi Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('227','Dunavecsei Református Kollégium Gróf Teleki József Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('228','Dunavecsei Református Kollégium Gróf Teleki József Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('229','Dunavecsei Református Kollégium Mezõgazdasági Gazda- És Gazdasszonyképzõ Szakiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('230','Dunavecsei Református Kollégium Gróf Teleki József Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('231','Izsáki Táncsics Mihály Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('232','Kecskeméti Bolyai János Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('233','Kecskeméti Bolyai János Gimnázium Németh László Gimnáziuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('234','Kiskunfélegyházi Móra Ferenc Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('235','Kiskunfélegyházi Móra Ferenc Gimnázium Veszprémi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('236','Kiskunfélegyházi Móra Ferenc Gimnázium Szegedi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('237','Kiskunfélegyházi Móra Ferenc Gimnázium Székesfehérvár Budai Úti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('238','Kiskunfélegyházi Móra Ferenc Gimnázium Ceglédi Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('239','Kiskunfélegyházi Móra Ferenc Gimnázium Kecskeméti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('240','Kiskunfélegyházi Móra Ferenc Gimnázium Székesfehérvár Seregélyesi Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('241','Kiskunfélegyházi Móra Ferenc Gimnázium Kalocsai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('242','Kiskunfélegyházi Móra Ferenc Gimnázium Kistarcsai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('243','Baksay Sándor Református Gimnázium És Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('244','Baksay Sándor Református Gimnázium És Általános Iskola Endrédy István Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('245','Piarista Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('246','Piarista Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('247','Kiskunhalasi Bibó István Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('248','Kecskeméti Református Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('249','Móricz Zsigmond Általános Iskola Alsó-Tagozat');
Insert into ISKOLA (ISKOLAID,NEV) values ('250','Móricz Zsigmond Általános Iskola És Gimnázium Tiszabögi Tagiskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('251','Móricz Általános Iskola És Gimnázium Kollégiuma');
Insert into ISKOLA (ISKOLAID,NEV) values ('252','Tiszakécskei Móricz Zsigmond Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('253','Móricz Zsigmond Általános Iskola És Gimnázium Eltérõ Tantervû Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('254','Móricz Zsigmond Általános Iskola És Gimnázium Alapfokú Mûvészeti Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('255','Móricz Zsigmond Általános Iskola És Gimnázium Tiszabögi Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('256','Móricz Zsigmond Általános Iskola Tornaterme');
Insert into ISKOLA (ISKOLAID,NEV) values ('257','Kiskunhalasi Református Kollégium Szilády Áron Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('258','Kiskunhalasi Református Kollégium Szilády Áron Gimnázium 002 Telephely');
Insert into ISKOLA (ISKOLAID,NEV) values ('259','Szent László Általános Mûvelõdési Központ');
Insert into ISKOLA (ISKOLAID,NEV) values ('260','Szent László Általános Mûvelõdési Központ Általános Iskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('261','Békési Kistérségi Óvoda És Bölcsõde Gólyafészek Bölcsõde');
Insert into ISKOLA (ISKOLAID,NEV) values ('262','Napköziotthonos Óvoda És Bölcsõde Szeghalom Kossuth Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('263','Mezõberény Város Óvodai Intézménye Óvodai Tornaterem');
Insert into ISKOLA (ISKOLAID,NEV) values ('264','Közös Igazgatású Óvodai És Bölcsõdei Intézmény Bölcsõdei Tagintézmény');
Insert into ISKOLA (ISKOLAID,NEV) values ('265','Békéscsabai Kazinczy Ferenc Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('266','Békéscsabai Kazinczy Ferenc Általános Iskola Csaba Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('267','Békéscsabai Szent László Utcai Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('268','Jankay Tibor Két Tanítási Nyelvû Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('269','Jankay Tibor Két Tanítási Nyelvû Általános Iskola Thurzó Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('270','Jankay Tibor Két Tanítási Nyelvû Általános Iskola Dedinszky Gyula Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('271','Lencsési Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('272','Lencsési Általános Iskola És Alapfokú Mûvészeti Iskola Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('273','Gerlai Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('274','Savio Szent Domonkos Katolikus Általános Iskola És Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('275','Savio Szent Domonkos Katolikus Általános Iskola És Óvoda Telekgerendási Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('276','Savio Szent Domonkos Katolikus Általános Iskola És Óvoda Gerendás Fürdõ Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('277','Savio Szent Domonkos Katolikus Általános Iskola És Óvoda Kamut Petõfi Utcai Iskolai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('278','Savio Szent Domonkos Katolikus Általános Iskola És Óvoda Nagybánhegyes Kossuth Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('279','Csorvási Gulyás Mihály Általános És Alapfokú Mûvészeti Iskola Zöldségeskert Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('280','Csorvási Gulyás Mihály Általános És Alapfokú Mûvészeti Iskola Füvészkert Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('281','Csorvási Gulyás Mihály Általános És Alapfokú Mûvészeti Iskola Kísérleti Kert Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('282','Dobozi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('283','Kondorosi Petõfi István Általános És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('284','Kondorosi Petõfi István Általános És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('285','Köröstarcsai Arany Gusztáv Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('286','Gyulai Római Katolikus Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('287','Gyulai Római Katolikus Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('288','Gyulai Római Katolikus Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('289','Gyulai Római Katolikus Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('290','Gyulai Római Katolikus Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('291','Tisza Kálmán Szakképzõ Iskola Békés');
Insert into ISKOLA (ISKOLAID,NEV) values ('292','Békéscsabai Belvárosi Általános Iskola És Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('293','Szeberényi Gusztáv Adolf Evangélikus Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('294','Szeberényi Gusztáv Adolf Evangélikus Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('295','Szeberényi Gusztáv Adolf Evangélikus Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('296','Jankó János Általános Iskola És Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('297','Békéscsabai Bartók Béla Mûvészeti Szakközépiskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('298','Székely Mihály Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('299','Eötvös József Iskolaalapítvány Szakközépiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('300','Göndöcs Benedek Középiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('301','Göndöcs Benedek Középiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('302','Göndöcs Benedek Középiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('303','Göndöcs Benedek Középiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('304','Göndöcs Benedek Középiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('305','Ils Közös Igazgatású Köznevelési Intézmény Szakközépiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('306','Tessedik Sámuel Szakiskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('307','Tessedik Sámuel Szakiskola Tanmûhelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('308','Esély Pedagógiai Központ Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('309','Esély Pedagógiai Központ Óvoda');
Insert into ISKOLA (ISKOLAID,NEV) values ('310','Szegedi Kis István Református Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('311','Szegedi Kis István Református Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('312','Szegedi Kis István Református Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('313','Szegedi Kis István Református Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('314','Szegedi Kis István Református Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('315','Szegedi Kis István Református Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('316','Szegedi Kis István Református Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('317','Szegedi Kis István Református Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('318','Szegedi Kis István Református Gimnázium');
Insert into ISKOLA (ISKOLAID,NEV) values ('319','Schéner Mihály Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('320','Schéner Mihály Általános Iskola Jókai Utca 5. Szám Alatti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('321','Schéner Mihály Általános Iskola Szent István Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('322','Schéner Mihály Általános Iskola Jókai Utca 3. Szám Alatti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('323','Mezõkövesdi Óvoda És Bölcsõde Deák Ferenc Úti Bölcsõdéje');
Insert into ISKOLA (ISKOLAID,NEV) values ('324','Új Esély Oktatási Központ 002-Es Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('325','Új Esély Oktatási Központ 007-Es Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('326','Új Esély Oktatási Központ 008-As Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('327','Új Esély Oktatási Központ 011-Es Telephely');
Insert into ISKOLA (ISKOLAID,NEV) values ('328','Új Esély Oktatási Központ 012-Es Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('329','Konyha És Étkezde');
Insert into ISKOLA (ISKOLAID,NEV) values ('330','Encsi Zrínyi Ilona Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('331','Encsi Zrínyi Ilona Általános Iskola És Alapfokú Mûvészeti Iskola Bem József Utcai Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('332','Encsi Zrínyi Ilona Általános Iskola És Alapfokú Mûvészeti Iskola Csobádi Tagintézménye');
Insert into ISKOLA (ISKOLAID,NEV) values ('333','Encsi Zrínyi Ilona Általános Iskola És Alapfokú Mûvészeti Iskola Fügödi Tagintézménye');
Insert into ISKOLA (ISKOLAID,NEV) values ('334','Kazincbarcikai Pollack Mihály Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('335','Kazincbarcikai Pollack Mihály Általános Iskola Árpád Fejedelem Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('336','Kazincbarcikai Pollack Mihály Általános Iskola Kazinczy Ferenc Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('337','Kazincbarcikai Pollack Mihály Általános Iskola Ádám Jenõ Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('338','Kazincbarcikai Pollack Mihály Általános Iskola Dózsa György Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('339','Kazincbarcikai Pollack Mihály Általános Iskola Gárdonyi Géza Tagiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('340','Tiszaújvárosi Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('341','Tiszaújvárosi Általános Iskola És Alapfokú Mûvészeti Iskola Deák Téri Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('342','Tiszaújvárosi Általános Iskola És Alapfokú Mûvészeti Iskola Rózsa Úti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('343','Tiszaújvárosi Általános Iskola És Alapfokú Mûvészeti Iskola Vándor Sándor Zeneiskolája');
Insert into ISKOLA (ISKOLAID,NEV) values ('344','Szent István Katolikus Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('345','Szent István Katolikus Általános Iskola Kossuth Lajos Úti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('346','Ózdi Árpád Vezér Általános Iskola Domaházi Tagintézménye');
Insert into ISKOLA (ISKOLAID,NEV) values ('347','Ózdi Árpád Vezér Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('348','Csépányi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('349','Csépányi Általános Iskola Ózd');
Insert into ISKOLA (ISKOLAID,NEV) values ('350','Ózdi Apáczai Csere János Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('351','Ózdi Apáczai Csere János Általános Iskola Ózd');
Insert into ISKOLA (ISKOLAID,NEV) values ('352','Farkaslyuki Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('353','Ózdi Petõfi Sándor Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('354','Sajóvárkonyi Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('355','Sajóvárkonyi Általános Iskola Mekcsey István Út 118.Sz Alatti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('356','Sajóvárkonyi Általános Iskola Mekcsey István Út 211. Sz. Alatti Telephelye');
Insert into ISKOLA (ISKOLAID,NEV) values ('357','Újváros Téri Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('358','Vasvár Úti Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('359','Vasvár Úti Általános Iskola Tehetséggondozó Központ');
Insert into ISKOLA (ISKOLAID,NEV) values ('360','Bolyky Tamás Általános Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('361','Péczeli József Általános Iskola És Alapfokú Mûvészeti Iskola');
Insert into ISKOLA (ISKOLAID,NEV) values ('371','ISKOLA');
Insert into ISKOLA (ISKOLAID,NEV) values ('372','ISKOLA2');
Insert into ISKOLA (ISKOLAID,NEV) values ('373','ISKOLA3');
Insert into ISKOLA (ISKOLAID,NEV) values ('374','ISKOLA4');
Insert into ISKOLA (ISKOLAID,NEV) values ('375','Nincs');
REM INSERTING into ISMER
SET DEFINE OFF;
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('730','714','1',to_timestamp('17-ÁPR.  -01 11.34.07,067000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('650','740','1',to_timestamp('17-FEBR. -03 11.34.21,889000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('674','675','1',to_timestamp('17-ÁPR.  -01 11.34.42,417000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('670','675','1',to_timestamp('17-ÁPR.  -20 15.48.00,404000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('1026','1020','1',to_timestamp('17-ÁPR.  -23 19.14.08,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('678','670','1',to_timestamp('17-ÁPR.  -20 19.10.30,813000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('670','679','1',to_timestamp('17-ÁPR.  -20 19.26.21,061000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('675','679','1',to_timestamp('17-ÁPR.  -20 22.35.38,439000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('675','740','1',to_timestamp('17-ÁPR.  -20 22.35.55,559000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into ISMER (KIID,KIVELID,STATUSZ,IDO) values ('1020','670','1',to_timestamp('17-ÁPR.  -24 23.32.01,000000000','RR-MON-DD HH24.MI.SSXFF'));
REM INSERTING into KEPEK
SET DEFINE OFF;
Insert into KEPEK (ALBUMNEV,ALBUMIDO,ELERESIUT,ID,POSZTID) values ('neha',to_timestamp('17-ÁPR.  -28 11.30.06,479000000','RR-MON-DD HH24.MI.SSXFF'),'http://localhost:80/Kozossegi/upload/149337180613453854_1368875973127497_1069609054_n.jpg','144','109');
Insert into KEPEK (ALBUMNEV,ALBUMIDO,ELERESIUT,ID,POSZTID) values ('Profilképek',to_timestamp('17-ÁPR.  -28 11.36.43,087000000','RR-MON-DD HH24.MI.SSXFF'),'http://localhost:80/Kozossegi/kep2.jpg','145',null);
REM INSERTING into KLUB
SET DEFINE OFF;
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('897','752',to_date('17-MÁRC. -29','RR-MON-DD'),'Sportfogadással foglalkozó csoport. Ha hirdetni, reklámozni szeretnél írj egy Nyerõ Tippmix/Tippek adminnak');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('898','780',to_date('17-MÁRC. -29','RR-MON-DD'),'Azert hoztam letre ezt a csoportot,hogy konnyebben tudjunk szervezni mindenfele kispalyas focit itt Szegeden. Igy mindenki egy helyen ertesulhet az epp aktualis focirol, talan igy kevesebb embert kell felhivnunk telefonon es sms-t irni.');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('896','750',to_date('17-MÁRC. -29','RR-MON-DD'),'Akciós csirkemell? Olcsó marhahús? Fillérekért láttál rizst? Ha bármi kaja akciót látsz, ami megér egy megosztást, told be nyugodtan!');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('899','749',to_date('17-MÁRC. -29','RR-MON-DD'),'Fitness! Egészség tudatosság! Sport! Táplálkozástudomány és Biogenikus életvitel. - közösség, ahol jó helyen vagy!');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('900','782',to_date('17-MÁRC. -29','RR-MON-DD'),'Minden sporttal kapcsolatos eszköz, súlyzó, futófelszerelés,táplálék kiegésztõ, cipõ, ruházat, használt és új egyaránt, adás-vétel és csere lehetõségekkel');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('901','745',to_date('17-MÁRC. -29','RR-MON-DD'),'Ez egy kereszt?ny csoport melyben Németh Sándor pásztor tanításai összegyûjtve találhatóak.A Csoportot nem Németh Sándor kezeli.');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('902','670',to_date('17-MÁRC. -29','RR-MON-DD'),'Beszélgethettek, elmondhatjátok a véleményeteket az alábbi témakörökben.');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('903','790',to_date('17-MÁRC. -29','RR-MON-DD'),'Az oldalon tobb kulfoldi iras is elofordul az utobbi hetekben, ez annak is koszonheto, hogy vannak koztunk kulfoldi tagok is, masreszt sajnos ido hianyaban nem tudom oket magyarra leforditani. megerteseteket koszonom.');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('904','787',to_date('17-MÁRC. -29','RR-MON-DD'),'Üdvözöllek a Szeméttelep csoportban, egy oldalon, mely TAGJAI szórakoztatásának céljából jött létre!');
Insert into KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('905','786',to_date('17-MÁRC. -29','RR-MON-DD'),'Ez egy humoros csoport, családias légkörrel, bárkit szívesen fogadunk. A kulturált viccelõdésig minden megengedett.');
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
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hugó','4','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Humbert','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hümér','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hunor','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ibolya','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ibrány','10','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ida','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iduna','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ifigénia','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ignác','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ignácia','7','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Igor','9','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ila','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ilárion','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ildefonz','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ildikó','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ilián','10','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ilka','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Illés','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ilma','4','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ilmár','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ilona','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imbert','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imelda','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Immakuláta','12','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Immánuel','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imogén','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imola','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Imre','11','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ince','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Indira','4','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Inez','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Inge','7','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ingrid','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Innocencia','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ipoly','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Irén','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iréneusz','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Irina','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iringó','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Írisz','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Irma','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('István','8','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Itala','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iván','6','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ivána','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ivett','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ivetta','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ivó','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ivonn','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ivor','9','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ixion','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iza','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izabel','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izabella','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izaiás','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Iziás','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izidor','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izidóra','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izmael','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izméne','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izolda','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izor','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izóra','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izrael','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izsák','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Izsó','8','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jácint','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jácinta','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jagelló','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jakab','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jákó','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jákob','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jakobina','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jakus','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Janina','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Janka','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('János','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Január','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Járfás','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jarmila','3','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jávorka','9','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jázmin','2','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jázon','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jella','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jenõ','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jeremiás','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jermák','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jerne','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jeromos','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jetta','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Joakim','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jób','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Joel','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Johanna','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jolán','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jolánta','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jónás','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jonatán','8','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jordán','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jozafát','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jozefa','2','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jozefina','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Józsa','3','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('József','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Józsiás','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Józsua','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Judit','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jukundusz','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Júlia','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Julianna','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Juliánusz','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Julietta','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Julitta','5','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Júnó','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jusztin','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jusztina','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jusztus','8','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jusztusz','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jutas','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Jutta','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Juvenál','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kabos','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kada','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kadosa','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kajetán','8','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kájusz','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kál','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Káldor','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kalliopé','6','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kalliszta','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kálmán','10','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kámea','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kamélia','8','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kamil','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kamill','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kamilla','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kamilló','7','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kán','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kandid','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kandida','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kanut','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kapisztrán','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kaplony','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kapolcs','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karácson','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karácsony','12','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karád','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kardos','1','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karina','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karion','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kármán','8','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karméla','7','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karmelina','7','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kármen','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karola','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karolina','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Károly','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Karsa','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kartal','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kasszián','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kászon','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kasztor','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kata','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Katalin','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Katapán','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Katinka','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kató','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kazimir','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kázmér','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Keled','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kelemen','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kelen','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kemenes','8','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kende','9','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kenese','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kenéz','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kerecsen','12','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kerény','3','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Keresztély','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kerubina','6','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Keszõ','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Keve','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kilény','11','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kilián','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kiliána','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kincsõ','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kinga','7','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kira','8','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kirill','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kisanna','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kitti','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klára','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klarissza','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klaudetta','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klaudia','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klemencia','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klementina','10','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kleofás','8','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kleon','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kleopátra','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klétus','4','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klió','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Klotild','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kocsárd','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Koletta','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kolombina','10','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kolombusz','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kolos','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kolumbán','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kolumbusz','12','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Konkordia','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Konrád','2','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Konstancia','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Konstantin','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Konstantina','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kont','7','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Koppány','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kordélia','10','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Koridon','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Korinna','10','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Koriolán','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kornél','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kornélia','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Korvin','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kósa','9','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kötöny','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kozima','9','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kozma','9','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kreszcencia','4','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kristóf','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kriszta','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Krisztián','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Krisztina','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Krizanta','10','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Krizosztom','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kund','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kunigunda','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kunó','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kurszán','11','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Kürt','2','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Laborc','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ladiszla','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ladomér','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lajos','8','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lambert','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lamberta','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lantos','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Larina','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Larion','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('László','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Laura','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Laurencia','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lavínia','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lázár','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lea','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leander','2','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Léda','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lehel','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leila','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lél','3','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lelle','4','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Léna','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lénárd','10','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lenke','7','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leó','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leon','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leona','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leonárd','11','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leonarda','11','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leonidász','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leonóra','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leontina','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leopold','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Leopoldina','11','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lestár','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Letícia','8','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Levendula','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Levente','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lia','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Liána','6','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Liander','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Liberátusz','8','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Libériusz','9','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Libor','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lídia','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lili','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lilian','8','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Liliána','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Liliom','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lilla','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lina','9','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Linda','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lionel','6','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lipót','4','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lívia','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Líviusz','9','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Liza','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lizander','11','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lizandra','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lola','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lolita','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Loránd','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lóránt','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Loréna','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Loretta','12','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lõrinc','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lotár','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lotti','11','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Luca','7','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lúcia','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lucián','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Luciusz','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ludmilla','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ludovika','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lujza','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lukács','2','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Lukrécia','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mabella','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Madléna','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Magda','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Magdaléna','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Magdolna','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Magnusz','9','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mahália','4','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maja','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Majlát','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Makabeus','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Makár','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Malakiás','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Malvin','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mályva','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manassé','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manda','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manfréd','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manfréda','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manna','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manó','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manon','8','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manszvét','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mánuel','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Manuéla','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mara','6','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marcell','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marcella','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marcellina','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marcián','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Margaréta','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Margit','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Margitta','10','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Margó','2','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mária','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marián','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mariann','8','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marianna','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marica','7','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marietta','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marina','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marinella','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marinetta','8','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Márió','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marion','9','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marióra','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marita','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Máriusz','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Márk','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Markó','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Márkus','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marléne','7','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Marót','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Márta','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Martin','11','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Martina','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Márton','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Martos','11','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Masa','8','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Máté','9','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Matild','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mátka','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mátyás','2','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maura','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maurícia','9','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maxim','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maxima','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maximilián','3','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Maximilla','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Medárd','6','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Medárda','6','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Médea','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Megyer','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Melánia','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Melina','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Melinda','10','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Melióra','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Melissza','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Meliton','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Melitta','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Meluzina','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ménás','10','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mendel','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Menodóra','9','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ménrót','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Menta','8','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Menyhért','1','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mercédesz','9','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Merse','8','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Metella','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Metód','2','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Metta','3','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mia','8','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mietta','7','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mihaéla','6','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mihály','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mike','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mikeás','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mikes','5','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Miklós','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mikolt','9','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Miksa','3','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milán','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milda','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milemon','11','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Miléna','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Miletta','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milica','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milla','7','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Milos','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mimóza','8','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mína','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mínea','12','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Minerva','5','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Minna','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Míra','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirabella','7','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirandella','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirandola','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirandolina','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirella','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirjam','8','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirkó','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Miron','8','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mirtill','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Modeszta','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Modesztusz','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mónika','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Montika','8','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mór','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Morella','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Morgan','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Móric','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Mózes','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Muriel','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Múzsa','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nadinka','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nádja','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nándor','5','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nanett','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nanetta','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Napóleon','5','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Napsugár','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Narcisszusz','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nárcisz','10','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nárciusz','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Násfa','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Natália','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nátán','8','24');
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
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nétus','2','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikander','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Niké','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikétás','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikodém','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikodémia','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikodémusz','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikola','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nikolett','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nilla','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nimfa','11','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nimród','8','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nina','11','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ninett','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ninetta','7','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ninon','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Niobé','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Noé','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Noel','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Noémi','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nóna','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nónusz','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nóra','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Norbert','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Norberta','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Norina','10','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Norma','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Norman','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nyék','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Nyeste','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oberon','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Odett','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Odília','10','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Odiló','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Odisszeusz','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Odó','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ödön','10','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ofélia','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oguz','11','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oktávia','4','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oktávián','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Olaf','7','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Olga','6','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Olimpia','12','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Olinda','7','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Olivér','3','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Olívia','3','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Omár','9','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ompoly','5','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ond','6','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Opika','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orália','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orbán','4','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orbó','6','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orchidea','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oresztész','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orfeusz','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orgona','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oriána','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orion','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Örkény','7','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ormos','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oros','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Örs','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Örsi','6','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orsika','10','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Orsolya','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Örzse','11','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Osszián','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Õszike','9','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oszkár','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oszlár','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oszvald','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oszvalda','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Otelló','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Otília','12','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Otmár','11','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ottó','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ottokár','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ovidiusz','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Oxána','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Õzike','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ozmin','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Özséb','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ozsvát','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pál','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pálma','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Palóma','9','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Paméla','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pamfil','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pamina','8','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Panna','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pantaleon','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Páris','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Paszkál','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pasztorella','5','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Patony','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Patrícia','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Patrícius','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Patrik','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Paula','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Paulina','2','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pázmán','8','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pelágia','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pelágiusz','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pelbárt','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pellegrin','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pénelopé','6','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pentele','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Peónia','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Peregrina','4','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Perenna','6','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Periklész','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Perjámos','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Perpétua','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Péter','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petõ','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petra','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petronella','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petrónia','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petróniusz','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petúnia','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Petur','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Piládész','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pintyõke','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Piramusz','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Piroska','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Piusz','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Placid','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Placida','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polett','2','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polidor','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pólika','3','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polikárp','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polina','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polixéna','7','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Polla','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pompilla','7','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pompónia','9','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pongor','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Pongrác','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Poppea','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Porfir','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Primusz','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Priszcilla','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rabán','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radamesz','4','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radiszló','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radó','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radomér','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rados','11','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radován','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Radvány','11','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rafael','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rafaella','1','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ráfis','10','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ráhel','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rajmund','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rajmunda','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rajnald','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ramón','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ramóna','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rápolt','11','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rátold','11','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Raul','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Razmus','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rázsony','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rea','9','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rebeka','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Regina','9','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Reginald','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Regõ','6','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Réka','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Relinda','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rella','10','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Reményke','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Remig','10','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rémusz','10','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Renáta','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Renátó','9','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('René','10','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Réta','7','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rezeda','5','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rézmán','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rezsõ','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ria','7','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Richárd','2','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rikarda','9','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rita','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Riza','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Róbert','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Roberta','4','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Robertina','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Robin','4','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rodelinda','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rodion','9','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rodrigó','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rókus','8','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Roland','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rolf','11','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Román','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Romána','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rómeó','2','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Romola','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Romuald','2','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Romulusz','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rovéna','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Roxána','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Róza','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozália','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozalinda','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozamunda','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozanna','9','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozina','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozita','8','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rozmarin','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rózsa','8','23');
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
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ruszlán','7','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ruszlána','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Rusztem','10','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sába','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Salamon','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sámson','6','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Samu','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sámuel','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Samuella','8','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sándor','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sára','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sarolt','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sarolta','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Saul','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sebes','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sebestyén','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sebõ','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Seherezádé','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sejla','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Semjén','10','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Simeon','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Simon','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Skolasztika','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Solt','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sólyom','9','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Soma','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Stefánia','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Stella','5','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sudárka','3','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Sugárka','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Surány','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szabella','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szabin','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szabina','8','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szabolcs','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szalárd','7','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szaléz','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szalók','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szalóme','6','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szalvátor','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szalvia','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szalviusz','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szandra','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szaniszló','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szavéta','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szebáld','8','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szecsõ','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szederke','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szegfû','7','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szelemér','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szelim','9','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szelina','10','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szellõke','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szemere','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szemirámisz','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szemõke','7','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szendike','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szénia','7','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szeráf','10','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szerafina','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szeréna','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szerénusz','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szergiusz','9','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szervác','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szevér','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szeveréd','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szeverin','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szibilla','3','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szidónia','6','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szidor','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szigfrid','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilamér','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilárd','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilárda','9','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilas','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilvána','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilvánusz','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilveszter','11','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilvia','11','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilvió','11','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szilviusz','4','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szimóna','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szimonetta','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szirén','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szíriusz','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szironka','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szixtusz','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szófia','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szofron','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szofrónia','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szókratész','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szólát','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szolón','5','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szonja','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szonóra','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szórád','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szörénke','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szörény','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szorina','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szovát','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szulamit','6','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szultána','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Szvetlana','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tábita','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tácia','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tacitusz','2','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Taddeus','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tádé','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Taksony','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Talabor','7','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Talamér','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tália','5','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tamara','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tamás','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tanázia','8','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tankréd','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Taráz','2','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tarcal','2','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tardos','9','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tarján','5','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tárkány','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tarzícia','8','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tarziciusz','8','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tas','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tasziló','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tatjána','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tavaszka','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tea','8','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tekla','8','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Telma','9','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Témisz','12','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ténia','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teó','9','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teobald','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teobalda','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teodolinda','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teodor','8','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teodóra','2','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teodózia','4','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teofánia','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teofil','3','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teofila','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teónia','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tercia','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Terestyén','11','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Teréz','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Terézia','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tertullia','4','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tessza','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tétény','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tétisz','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tézeusz','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tibád','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tibériusz','8','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tibold','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tibor','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tiborc','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tícia','8','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ticiána','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tihamér','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tilda','3','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tilla','3','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tímea','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Timon','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Timót','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Timótea','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Timur','7','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tina','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tíria','8','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tirzusz','10','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Titán','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Titánia','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Titanilla','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Titusz','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tivadar','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tóbia','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tóbiás','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tódor','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Töhötöm','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tomaj','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tomázia','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tomor','7','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tömör','10','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tonuzóba','12','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Törtel','8','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Toszka','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Trajánusz','8','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Trisztán','2','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tulipán','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tullia','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tünde','4','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Tuzson','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ubul','3','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Üdvöske','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ugod','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ugor','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ugron','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulászló','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulisszesz','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uljána','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulla','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulpián','4','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulrik','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ulrika','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Upor','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uránia','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Urbán','4','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Urbána','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uriás','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uriel','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uros','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Urzula','10','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Urzulina','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uzonka','7','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Uzor','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vajk','8','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Valdemár','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Valentin','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Valentina','2','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Valér','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Valéria','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Valter','4','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vanda','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vanessza','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Várkony','7','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Varsány','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vaszilia','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vászoly','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vázsony','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vazul','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Velmira','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vencel','9','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vendel','6','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vendelina','10','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vénusz','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vera','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Verbéna','7','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Veréna','7','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Verita','9','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Verner','4','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Veron','7','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Veronika','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Versény','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Veszta','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Véta','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Veturia','7','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viátor','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vid','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vida','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vidor','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vidos','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viktor','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viktória','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viktorina','9','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vilhelmina','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vilibald','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vilja','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Villõ','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vilma','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vilmos','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vince','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vincencia','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viola','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Violetta','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viorika','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Virág','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Virgil','3','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Virgília','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Virgínia','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vita','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vitália','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vitális','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vitéz','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vitold','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vitolda','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vitus','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Viviána','12','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vivien','12','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vladimir','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Volfram','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vulfia','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Vulkán','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Xavér','12','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Xavéria','12','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Xénia','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zádor','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zágon','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zajzon','12','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zakária','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zakariás','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zakeus','8','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zalán','3','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zamfira','8','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zámor','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zaránd','6','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zdenka','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zdenkó','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zebulon','8','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zekõ','4','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zelinda','9','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zella','9','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zelma','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zelmira','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zenina','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zénó','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zenóbia','10','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zerind','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zéta','12','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zétény','2','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zia','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zilia','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zina','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zinajda','10','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zita','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zoárd','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zobor','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zoé','5','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zója','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zöldike','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zolna','6','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zoltán','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zoltána','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zombor','8','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zomilla','7','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zóra','6','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zorán','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zotmund','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsadány','8','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsaklin','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsanett','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsanna','5','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zselyke','4','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zseni','12','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zseraldin','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zseraldina','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsigmond','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsinett','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsófia','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsóka','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsolt','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsombor','4','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsüliet','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsuzsa','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zsuzsanna','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Zulejka','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aba','11','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abád','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abbás','8','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abdiás','11','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ábel','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abelárd','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abélia','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abiáta','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abigél','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abod','11','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Abony','7','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ábrahám','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ábris','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Absa','9','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Absolon','3','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Achilles','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Acicét','4','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Acsád','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ada','7','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adalbert','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adalberta','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ádám','9','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adél','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adelaida','1','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adelgunda','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adélia','12','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adelina','7','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adelinda','8','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adelmár','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adeodát','6','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adina','7','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adolár','4','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adolf','2','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adony','6','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adorján','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adrián','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adriána','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Adrienn','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Afrodité','8','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agád','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agapion','4','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agáta','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agaton','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agenór','8','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aggeus','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aglája','2','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agmánd','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agnella','12','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ágnes','1','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Agnéta','1','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ágost','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ágosta','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ágoston','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ágota','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Áhim','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ahmed','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aida','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ajád','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ajándék','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ajna','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ajnácska','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ajtony','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Akács','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ákos','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aladár','2','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aladin','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alajos','6','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alán','9','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alárd','9','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alba','12','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Albert','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alberta','5','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Albertina','4','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Albin','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Albina','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alda','4','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aldán','8','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Áldáska','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aldó','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Áldor','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aléna','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aletta','12','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alex','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alexa','3','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alexandra','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alexia','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alfonz','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alfonza','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alfonzina','8','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alfréd','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alfréda','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Algernon','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ali','8','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alícia','5','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alida','2','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alina','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alinda','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alinka','12','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aliz','6','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alma','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Almiréna','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Álmos','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alojzia','6','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alóma','6','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alpár','3','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alvián','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Alvina','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amábel','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amadé','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amadea','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amadil','9','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amália','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amand','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amanda','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amaranta','11','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amarilla','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amarillisz','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amáta','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amázia','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ambos','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ambró','12','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ambrózia','12','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ambrus','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amélia','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amelita','8','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ametiszt','10','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amina','8','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aminta','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ámon','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ámos','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Amrita','12','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anasztáz','1','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anasztázia','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anatol','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ancilla','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anda','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Andor','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Andos','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('András','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Andrea','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anett','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anetta','6','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Angéla','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Angelika','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Angelina','7','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Angelus','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Angyalka','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aniella','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anikó','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anilla','7','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anina','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anita','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aniziusz','12','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anna','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Annabella','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Annamária','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Annunciáta','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antal','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antigon','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antigoné','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anton','6','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antonella','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antónia','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antonietta','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Antos','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ányos','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anzelm','4','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Anzelma','4','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apolka','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apollinár','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apollinária','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apolló','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apollónia','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apor','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apostol','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Appia','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Apród','12','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arabella','3','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aranka','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arany','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Archibáld','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arétász','10','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ariadné','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arián','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arianna','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ariel','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ariella','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arika','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arikán','8','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arion','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arisztid','4','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arita','10','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arkád','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Árkos','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Armand','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Armanda','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Armandina','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Armida','9','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Armilla','9','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ármin','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arnó','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arnold','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arnolda','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arnót','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Áron','4','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Árpád','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arszlán','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Artemisz','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Artemíszia','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Artemon','10','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Artúr','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Árvácska','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arvid','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Arzén','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Asszunta','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aszpázia','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aszter','1','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Asztrid','11','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atád','11','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atala','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atalanta','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atália','12','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atanáz','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atanázia','8','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aténé','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atilla','4','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atlasz','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Atos','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Attila','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Auguszta','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Augusztina','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aura','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aurél','1','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aurélia','7','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Aurélián','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Auróra','10','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Avarka','11','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Avenár','7','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Axel','9','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Azálea','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Azár','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Azucséna','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Azurea','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Babett','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bács','1','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bagamér','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baján','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bajnok','3','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baksa','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balabán','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balambér','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balár','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balázs','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balbina','3','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balda','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baldó','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baldvin','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bálint','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Balló','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baltazár','1','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bán','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bandó','7','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bánk','3','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bános','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barabás','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Baracs','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barakony','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barbara','12','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bardó','6','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barlám','11','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barna','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barnabás','6','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Barót','7','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bars','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bársonyka','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bartal','8','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bartó','8','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bartos','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bató','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bátony','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bátor','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bazil','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bazsó','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bea','7','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Beáta','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Beatrix','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Becse','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bedõ','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Begónia','9','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Béke','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bekény','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bekõ','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Béla','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Belián','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Belinda','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Belizár','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bella','8','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benáta','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bence','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bende','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bendegúz','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bene','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benedek','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benedetta','8','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benedikta','1','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Béni','3','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benigna','5','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benignusz','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benjámin','1','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benjamina','3','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benke','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benkõ','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bennó','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Benõ','3','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bercel','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bere','8','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Berengár','5','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bereniké','7','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Berény','10','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Berill','7','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Beriszló','12','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bernadett','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bernarda','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bernát','5','19');
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
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bibiána','12','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bíbor','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bíbora','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bíborka','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Blandina','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Blanka','8','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Boáz','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bocsárd','6','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bod','5','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bodó','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bódog','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bodomér','12','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bodony','8','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bodor','8','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bogárka','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bogát','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bogáta','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bogdán','9','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Boglár','8','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Boglárka','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bojána','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bökény','12','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bolda','7','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Boldizsár','1','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bolivár','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bonaventúra','7','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Böngér','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bonifác','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bónis','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Borbála','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Borbás','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Boriska','12','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Borisz','5','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Boróka','12','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bors','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Borsa','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Borsika','3','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Botár','1','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Botond','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bottyán','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bozsidár','11','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bozsóka','7','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Brigitta','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Britta','10','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Brúnó','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Brútusz','2','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Buda','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Bulcsú','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Buzád','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Buzás','12','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cecília','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cecílián','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Celerina','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Celeszta','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Celesztin','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Celesztina','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Célia','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Celina','7','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cézár','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cezarina','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cicelle','6','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ciceró','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ciklámen','11','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cinnia','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cintia','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ciprián','9','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cipriána','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cirill','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cirilla','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cirjék','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Círus','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csaba','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csák','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csanád','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csát','4','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csatád','5','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csatár','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csató','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csegõ','4','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cseke','8','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csendike','7','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csenge','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csenger','11','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csépán','8','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csepel','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cseperke','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cserjén','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Cserne','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csilla','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csillag','3','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csinszka','2','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csobád','12','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csobán','8','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csombor','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csongor','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Csörsz','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dagobert','12','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dagomér','9','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dália','10','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dalibor','7','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dalida','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dalma','5','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Damáz','12','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Damján','9','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Damos','9','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dániel','1','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Daniella','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Daniló','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dános','11','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Darinka','2','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dárius','10','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dávid','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dea','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Debóra','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dejte','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Deli','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Délia','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Délibáb','8','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Delila','12','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Delinke','11','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Demény','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Demeter','9','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Demetria','6','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Demjén','9','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dénes','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Deodát','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ders','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Detre','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dévald','5','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dezdemóna','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dézi','5','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dezideráta','5','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dezsér','12','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dezsõ','2','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Diána','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dina','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dioméd','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dionízia','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ditmár','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ditta','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dókus','12','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dolli','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dolóresz','9','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Doloróza','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domán','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Döme','4','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domicián','5','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dominika','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domitilla','5','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domokos','5','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domonkos','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Domos','10','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dömös','10','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dömötör','4','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Donald','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Donát','2','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Donáta','7','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Donatella','7','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Döniz','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dóra','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dorián','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dorina','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dorisz','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dorka','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dormán','1','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dorottya','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dukász','5','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dulcinea','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Dusán','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Éda','12','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edda','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ede','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edgár','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edina','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edit','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edmond','11','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edna','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edömér','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Édua','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Edvárd','3','18');
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
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elemér','2','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eleonóra','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Életke','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elfrida','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eliána','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Éliás','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eligiusz','12','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elina','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eliz','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eliza','2','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elizeus','6','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ella','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ellák','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ellina','1','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elma','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elmár','5','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elmira','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elmó','7','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elõd','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elvira','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Elza','7','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emánuel','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emanuéla','3','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emerencia','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emerita','9','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emese','1','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emil','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emília','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emilián','3','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emiliána','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emma','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emmi','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emõd','2','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Emõke','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Enciána','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Endre','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ené','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Éneás','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Engelbert','7','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Engelhard','3','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Enid','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Enikõ','4','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Enna','9','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Énok','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eperke','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erazmus','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erhard','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erik','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erika','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erina','6','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ermelinda','10','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erna','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ernák','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ernella','5','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erneszta','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ernesztina','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ernõ','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ernye','3','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ervin','4','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ervina','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Erzsébet','5','5');
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
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eufémia','6','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eufrozina','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eugén','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eugénia','9','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eulália','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Euniké','4','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Euridiké','8','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Euszták','4','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eutim','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Eutímia','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Euzébia','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Éva','7','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Évald','10','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Evariszt','10','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Evelin','2','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Evelina','5','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Evetke','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ezékiel','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ézsaiás','7','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fábián','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fabiána','1','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fabióla','12','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fábiusz','5','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fabó','5','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fabrícius','3','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fanni','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Farkas','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fáta','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fatima','5','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fatime','6','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fausztina','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fausztusz','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fedor','7','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fedóra','4','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fédra','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fehérke','5','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Felícia','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Felicián','6','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Feliciána','6','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Félix','1','14');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ferdinánd','5','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Ferenc','1','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fernanda','5','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fiametta','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fidél','3','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fidélia','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filemon','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filibert','8','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filippa','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filoméla','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filomén','8','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filoména','7','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Filotea','11','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fiorella','7','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Flávia','6','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Flavián','2','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Flóra','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Florencia','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Florentin','9','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Florentina','6','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Flórián','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Florina','5','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Flóris','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fodor','8','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Folkus','6','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fóris','1','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fortuna','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fortunát','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Franciska','3','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Frida','5','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Friderika','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fridolin','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Frigyes','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fruzsina','1','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fülöp','2','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fulvia','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Fürtike','5','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Füzike','2','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gábor','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gábriel','2','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gabriella','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gajána','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gál','7','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Galamb','5','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Galatea','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Galina','10','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gálos','10','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gara','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gardénia','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gáspár','1','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gaszton','2','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gazsó','8','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gedeon','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gedõ','9','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gejza','2','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gellén','7','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gellért','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gemella','6','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Geminián','1','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gemma','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Génia','12','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Genovéva','1','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Georgina','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Geraszim','3','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerda','1','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Geréb','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gergely','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gergõ','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerjén','10','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerle','3','29');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Germán','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerõ','1','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerold','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gertrúd','3','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gerzson','2','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Géza','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gibárt','6','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gida','3','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gilbert','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gilberta','6','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gilda','4','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gilgames','10','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gina','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Girót','10','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Giszmunda','9','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gitta','2','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gizella','5','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Glória','4','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gobert','1','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Godiva','1','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Godó','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Godvin','5','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gordon','5','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gorgiás','9','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gotfrid','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gothárd','5','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gotlib','3','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Grácia','6','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gracián','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Graciána','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Graciella','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gréta','1','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Grizelda','9','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Grizeldisz','9','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gujdó','1','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gunda','3','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Günter','10','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gusztáv','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyárfás','6','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyenes','12','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyoma','10','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyöngy','5','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyöngyi','1','18');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyöngyvér','1','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyöngyvirág','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyopárka','3','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Györe','2','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('György','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Györgyi','2','15');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Györk','7','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyõzõ','2','26');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Gyula','4','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hágár','8','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hajna','6','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hajnal','10','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hajnalka','3','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hamilkár','11','12');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hanga','2','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hanna','5','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hannibál','5','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hannó','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Harald','6','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hargitta','6','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Harkány','9','6');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Harlám','2','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Harmatka','8','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Harri','3','2');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hartvig','8','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hasszán','2','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Havaska','8','5');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hedda','2','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hédi','2','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hedvig','2','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hektor','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Héla','4','23');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Helén','7','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Heléna','5','22');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Helga','6','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Heliodor','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Héliosz','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Helka','9','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hella','5','27');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Henriett','1','25');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Henrietta','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Henrik','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Héra','6','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herbert','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herkules','7','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herman','4','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hermész','8','28');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hermia','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hermiás','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hermina','4','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hermiusz','5','31');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herold','10','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Herta','3','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hetény','8','17');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hiador','7','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hieronima','2','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hilária','8','7');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hiláriusz','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hilda','4','30');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hilmár','1','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hippia','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hippolit','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hippolita','8','13');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hódos','11','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hófehérke','5','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Holda','4','10');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Holló','2','4');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Honoráta','1','11');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Honorátusz','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Honória','4','24');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Honóriusz','1','16');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hont','1','9');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Horác','5','3');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Horácia','3','8');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hortenzia','6','1');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hóvirág','3','21');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Huba','8','19');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Hubert','3','20');
Insert into NEVNAP (NEV,HONAP,NAP) values ('Huberta','3','20');
REM INSERTING into POSZT
SET DEFINE OFF;
Insert into POSZT (FELADO,ID,CIMZETT,IDO,TARTALOM,SZULO) values ('670','109',null,to_timestamp('17-ÁPR.  -28 11.30.06,481000000','RR-MON-DD HH24.MI.SSXFF'),'A felhasználó feltöltött egy képet a(z) neha albumba.http://localhost:80/Kozossegi/upload/149337180613453854_1368875973127497_1069609054_n.jpg',null);
Insert into POSZT (FELADO,ID,CIMZETT,IDO,TARTALOM,SZULO) values ('670','106',null,to_timestamp('17-ÁPR.  -28 11.29.46,000000000','RR-MON-DD HH24.MI.SSXFF'),'asd',null);
Insert into POSZT (FELADO,ID,CIMZETT,IDO,TARTALOM,SZULO) values ('670','107','675',to_timestamp('17-ÁPR.  -28 11.29.49,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdasd',null);
Insert into POSZT (FELADO,ID,CIMZETT,IDO,TARTALOM,SZULO) values ('670','108',null,to_timestamp('17-ÁPR.  -28 11.29.52,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasd','107');
Insert into POSZT (FELADO,ID,CIMZETT,IDO,TARTALOM,SZULO) values ('1044','110',null,to_timestamp('17-ÁPR.  -28 11.36.13,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf',null);
REM INSERTING into PROFIL
SET DEFINE OFF;
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('670',to_date('97-ÁPR.  -11','RR-MON-DD'),'1','1','125','14','3',null,'141');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('671',to_date('18-ÁPR.  -14','RR-MON-DD'),'1','1','325','25','1',null,'1');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1023',to_date('99-FEBR. -03','RR-MON-DD'),'1','21','325','61','21','670','85');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('675',to_date('17-ÁPR.  -20','RR-MON-DD'),'1','2','152','23','4',null,'2');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('678',to_date('17-ÁPR.  -26','RR-MON-DD'),'1','1','121','31','3',null,'3');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('679',to_date('17-ÁPR.  -20','RR-MON-DD'),'1','1','121','21','3',null,null);
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('674',to_date('17-ÁPR.  -20','RR-MON-DD'),'1','1','125','25','2',null,'2');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1044',to_date('99-FEBR. -01','RR-MON-DD'),'1','21','375','61','21','670','143');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1010',to_date('11-DEC.  -21','RR-MON-DD'),'1','1','125','25','1','670','22');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1024',to_date('99-FEBR. -01','RR-MON-DD'),'1','21','325','61','21','1023','86');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1026',to_date('73-FEBR. -01','RR-MON-DD'),'1','21','375','61','21','0','89');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1025',to_date('99-MÁRC. -13','RR-MON-DD'),'1','21','325','61','21','1010','87');
Insert into PROFIL (SZEMELYID,SZUL_DATUM,NEM,LAKHELYID,ISKOLAID,HOBBIID,MUNKAHELYID,MEGHIVO,PROFILKEP) values ('1020',to_date('17-ÁPR.  -22','RR-MON-DD'),'1','1','371','43','1','670','28');
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
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 00.09.39,000000000','RR-MON-DD HH24.MI.SSXFF'),'aaaaaaaaaaaaaaaaaaaaaaaasdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 00.09.41,000000000','RR-MON-DD HH24.MI.SSXFF'),'a');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 00.09.49,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasdsdfasdfasdfasdfasd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 00.09.57,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 00.11.25,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdfasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdfasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdfasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdfasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-ÁPR.  -23 14.10.16,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','1020',to_timestamp('17-ÁPR.  -23 14.10.20,000000000','RR-MON-DD HH24.MI.SSXFF'),'asd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 00.09.31,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfas');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 00.09.35,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasdfasdfasdfasdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-ÁPR.  -23 14.10.33,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-ÁPR.  -23 14.10.34,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-ÁPR.  -23 14.10.30,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-ÁPR.  -23 14.10.32,000000000','RR-MON-DD HH24.MI.SSXFF'),'asd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','674',to_timestamp('17-ÁPR.  -21 01.05.06,000000000','RR-MON-DD HH24.MI.SSXFF'),'asd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-ÁPR.  -21 17.10.37,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','678',to_timestamp('17-ÁPR.  -21 17.10.41,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 11.32.32,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 11.32.36,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfffdsad');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-ÁPR.  -21 11.36.31,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-ÁPR.  -21 11.36.33,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-ÁPR.  -21 11.36.34,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-ÁPR.  -21 11.36.35,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-ÁPR.  -21 11.36.36,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-ÁPR.  -21 11.36.39,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasdfasdfa');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','679',to_timestamp('17-ÁPR.  -21 11.36.41,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 11.38.23,000000000','RR-MON-DD HH24.MI.SSXFF'),'asdf');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 11.39.03,000000000','RR-MON-DD HH24.MI.SSXFF'),'asd');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('675','670',to_timestamp('17-ÁPR.  -21 11.39.04,000000000','RR-MON-DD HH24.MI.SSXFF'),'as');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-ÁPR.  -21 13.45.35,000000000','RR-MON-DD HH24.MI.SSXFF'),'heló');
Insert into UZENET (FELADO,CIMZETT,IDO,UZENET) values ('670','675',to_timestamp('17-ÁPR.  -21 13.45.45,000000000','RR-MON-DD HH24.MI.SSXFF'),'hogy vagy kedves barátom?');
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
  INSERT INTO ALBUM(FELHASZNALOID,NEV,IDO) VALUES (V_ID,'Profilképek',SYSTIMESTAMP);
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
  INSERT INTO POSZT(FELADO,IDO,TARTALOM) VALUES(V_ID,SYSTIMESTAMP,'A felhasználó feltöltött egy képet a(z) '||V_ALBUMNEV||' albumba.'||V_ELERESIUT);
  INSERT INTO KEPEK(ALBUMNEV,ALBUMIDO,ELERESIUT,POSZTID) VALUES(V_ALBUM.NEV,V_ALBUM.IDO,V_ELERESIUT,POSZT_SEQ.CURRVAL);
  COMMIT;
  RETURN KEPEK_SEQ.CURRVAL;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
    V_IDO :=SYSTIMESTAMP;
    INSERT INTO ALBUM(FELHASZNALOID,NEV,IDO) VALUES(V_ID,V_ALBUMNEV,V_IDO);
    INSERT INTO POSZT(FELADO,IDO,TARTALOM) VALUES(V_ID,SYSTIMESTAMP,'A felhasználó feltöltött egy képet a(z) '||V_ALBUMNEV||' albumba.'||V_ELERESIUT);
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
