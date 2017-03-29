--------------------------------------------------------
--  File created - szerda-március-29-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table POSZT
--------------------------------------------------------

  CREATE TABLE "H668895"."POSZT" 
   (	"FELADO" NUMBER, 
	"ID" NUMBER, 
	"CIMZETT" NUMBER, 
	"IDO" TIMESTAMP (6), 
	"TARTALOM" VARCHAR2(255 BYTE), 
	"SZULO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROFIL
--------------------------------------------------------

  CREATE TABLE "H668895"."PROFIL" 
   (	"SZEMELYID" NUMBER, 
	"SZUL_DATUM" DATE, 
	"NEM" CHAR(1 BYTE), 
	"LAKHELYID" NUMBER, 
	"ISKOLAID" NUMBER, 
	"HOBBIID" NUMBER, 
	"MUNKAHELYID" NUMBER, 
	"MEGHIVO" NUMBER, 
	"PROFILKEP" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LAKHELY
--------------------------------------------------------

  CREATE TABLE "H668895"."LAKHELY" 
   (	"LAKHELYID" NUMBER, 
	"NEV" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOBBI
--------------------------------------------------------

  CREATE TABLE "H668895"."HOBBI" 
   (	"HOBBIID" NUMBER, 
	"NEV" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ALBUM
--------------------------------------------------------

  CREATE TABLE "H668895"."ALBUM" 
   (	"FELHASZNALOID" NUMBER, 
	"NEV" VARCHAR2(20 BYTE), 
	"IDO" TIMESTAMP (6)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FELHASZNALO
--------------------------------------------------------

  CREATE TABLE "H668895"."FELHASZNALO" 
   (	"ID" NUMBER(*,0), 
	"NEV" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UZENET
--------------------------------------------------------

  CREATE TABLE "H668895"."UZENET" 
   (	"FELADO" NUMBER, 
	"CIMZETT" NUMBER, 
	"IDO" TIMESTAMP (6), 
	"UZENET" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TAGJA
--------------------------------------------------------

  CREATE TABLE "H668895"."TAGJA" 
   (	"SZEMELYID" NUMBER, 
	"KLUBID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SZEMELY
--------------------------------------------------------

  CREATE TABLE "H668895"."SZEMELY" 
   (	"ID" NUMBER(*,0), 
	"JELSZO" VARCHAR2(30 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ISKOLA
--------------------------------------------------------

  CREATE TABLE "H668895"."ISKOLA" 
   (	"ISKOLAID" NUMBER, 
	"NEV" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MUNKAHELY
--------------------------------------------------------

  CREATE TABLE "H668895"."MUNKAHELY" 
   (	"MUNKAHELYID" NUMBER, 
	"NEV" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ISMER
--------------------------------------------------------

  CREATE TABLE "H668895"."ISMER" 
   (	"KIID" NUMBER, 
	"KIVELID" NUMBER, 
	"STATUSZ" NUMBER, 
	"IDO" TIMESTAMP (6)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KLUB
--------------------------------------------------------

  CREATE TABLE "H668895"."KLUB" 
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
--  DDL for Table KEPEK
--------------------------------------------------------

  CREATE TABLE "H668895"."KEPEK" 
   (	"ALBUMNEV" VARCHAR2(20 BYTE), 
	"ALBUMIDO" TIMESTAMP (6), 
	"ELERESIUT" VARCHAR2(255 BYTE), 
	"ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ERTESITES
--------------------------------------------------------

  CREATE TABLE "H668895"."ERTESITES" 
   (	"KINEK" NUMBER, 
	"IDO" TIMESTAMP (6), 
	"SZOVEG" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into H668895.POSZT
SET DEFINE OFF;
REM INSERTING into H668895.PROFIL
SET DEFINE OFF;
REM INSERTING into H668895.LAKHELY
SET DEFINE OFF;
REM INSERTING into H668895.HOBBI
SET DEFINE OFF;
REM INSERTING into H668895.ALBUM
SET DEFINE OFF;
REM INSERTING into H668895.FELHASZNALO
SET DEFINE OFF;
Insert into H668895.FELHASZNALO (ID,NEV) values ('768','Lantos Gisella');
Insert into H668895.FELHASZNALO (ID,NEV) values ('769','Thury Nyék');
Insert into H668895.FELHASZNALO (ID,NEV) values ('770','Révész L?rinc');
Insert into H668895.FELHASZNALO (ID,NEV) values ('771','Petheö Zoltán');
Insert into H668895.FELHASZNALO (ID,NEV) values ('772','Magyar Sebo');
Insert into H668895.FELHASZNALO (ID,NEV) values ('773','Lörinc Boldizsar');
Insert into H668895.FELHASZNALO (ID,NEV) values ('774','Szõllõssy Bora');
Insert into H668895.FELHASZNALO (ID,NEV) values ('775','Györffy Tabor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('776','Hegedüs Neci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('777','Szepes Alexandra');
Insert into H668895.FELHASZNALO (ID,NEV) values ('778','Vöröss Gréta');
Insert into H668895.FELHASZNALO (ID,NEV) values ('779','Simko Jucika');
Insert into H668895.FELHASZNALO (ID,NEV) values ('780','Bodo Sasa');
Insert into H668895.FELHASZNALO (ID,NEV) values ('781','Szücs Erzsi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('782','Szakál Mercédesz');
Insert into H668895.FELHASZNALO (ID,NEV) values ('783','Máthé Pista');
Insert into H668895.FELHASZNALO (ID,NEV) values ('784','Erdey Kamilla');
Insert into H668895.FELHASZNALO (ID,NEV) values ('785','Orsós Dacso');
Insert into H668895.FELHASZNALO (ID,NEV) values ('786','Rácz Csombor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('787','Sághi Erssike');
Insert into H668895.FELHASZNALO (ID,NEV) values ('788','Petö Belle');
Insert into H668895.FELHASZNALO (ID,NEV) values ('789','Földes Ugod');
Insert into H668895.FELHASZNALO (ID,NEV) values ('790','Kollár Erik');
Insert into H668895.FELHASZNALO (ID,NEV) values ('791','Kollár Kartal');
Insert into H668895.FELHASZNALO (ID,NEV) values ('792','Erdei Izabella');
Insert into H668895.FELHASZNALO (ID,NEV) values ('793','Kováts Lantos');
Insert into H668895.FELHASZNALO (ID,NEV) values ('794','Ujváry Koppány');
Insert into H668895.FELHASZNALO (ID,NEV) values ('795','Lázár Marton');
Insert into H668895.FELHASZNALO (ID,NEV) values ('796','Smit Barnabás');
Insert into H668895.FELHASZNALO (ID,NEV) values ('797','Danko Kitti');
Insert into H668895.FELHASZNALO (ID,NEV) values ('798','Smid Dalma');
Insert into H668895.FELHASZNALO (ID,NEV) values ('799','Lõrincz Markos');
Insert into H668895.FELHASZNALO (ID,NEV) values ('800','Maier János');
Insert into H668895.FELHASZNALO (ID,NEV) values ('801','Szõts Dorika');
Insert into H668895.FELHASZNALO (ID,NEV) values ('802','Schmid Lukacs');
Insert into H668895.FELHASZNALO (ID,NEV) values ('803','Lévai Emese');
Insert into H668895.FELHASZNALO (ID,NEV) values ('804','Földi Rókus');
Insert into H668895.FELHASZNALO (ID,NEV) values ('805','Soós Odon');
Insert into H668895.FELHASZNALO (ID,NEV) values ('806','Sinka Endre');
Insert into H668895.FELHASZNALO (ID,NEV) values ('807','Gyõrfi Ugor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('808','Kultsár Sebes');
Insert into H668895.FELHASZNALO (ID,NEV) values ('809','Szöllösi Katalin');
Insert into H668895.FELHASZNALO (ID,NEV) values ('810','Donka Noémi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('811','Bencze Virag');
Insert into H668895.FELHASZNALO (ID,NEV) values ('812','Szilágyi Neci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('813','Söröss Kinga');
Insert into H668895.FELHASZNALO (ID,NEV) values ('814','Ujvári Pázmán');
Insert into H668895.FELHASZNALO (ID,NEV) values ('815','Kulcsár Kemenes');
Insert into H668895.FELHASZNALO (ID,NEV) values ('816','Pálinkás Jenci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('817','Szepessi Gazsi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('818','Major Dóra');
Insert into H668895.FELHASZNALO (ID,NEV) values ('819','Pataki Veronika');
Insert into H668895.FELHASZNALO (ID,NEV) values ('820','Magyar Dalma');
Insert into H668895.FELHASZNALO (ID,NEV) values ('821','Illés Orsolya');
Insert into H668895.FELHASZNALO (ID,NEV) values ('822','Gyõrfi Gabriella');
Insert into H668895.FELHASZNALO (ID,NEV) values ('823','Gyarmathy Kat');
Insert into H668895.FELHASZNALO (ID,NEV) values ('824','Meyer Adojan');
Insert into H668895.FELHASZNALO (ID,NEV) values ('825','Kósa Lõrinc');
Insert into H668895.FELHASZNALO (ID,NEV) values ('826','Herman Gyurka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('827','Orsós Bettina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('828','Göröncsér Ramóna');
Insert into H668895.FELHASZNALO (ID,NEV) values ('829','Balla Ilona');
Insert into H668895.FELHASZNALO (ID,NEV) values ('830','Mátyás Rebeka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('831','Tury Zsanett');
Insert into H668895.FELHASZNALO (ID,NEV) values ('832','Révész Virag');
Insert into H668895.FELHASZNALO (ID,NEV) values ('833','Szántó Adrián');
Insert into H668895.FELHASZNALO (ID,NEV) values ('834','Gergely Uzor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('835','Hofman Beatrix');
Insert into H668895.FELHASZNALO (ID,NEV) values ('836','Szöllõsi Jolan');
Insert into H668895.FELHASZNALO (ID,NEV) values ('837','Áts Mátyás');
Insert into H668895.FELHASZNALO (ID,NEV) values ('838','Gyarmati Melinda');
Insert into H668895.FELHASZNALO (ID,NEV) values ('839','Szatmáry Zsofia');
Insert into H668895.FELHASZNALO (ID,NEV) values ('840','Barabás Cili');
Insert into H668895.FELHASZNALO (ID,NEV) values ('841','Pethõ Ágnes');
Insert into H668895.FELHASZNALO (ID,NEV) values ('842','Szõcs Franciska');
Insert into H668895.FELHASZNALO (ID,NEV) values ('843','Herczeg Borsala');
Insert into H668895.FELHASZNALO (ID,NEV) values ('844','Szölösi Csilla');
Insert into H668895.FELHASZNALO (ID,NEV) values ('845','Soós Deli');
Insert into H668895.FELHASZNALO (ID,NEV) values ('846','Csikós Frici');
Insert into H668895.FELHASZNALO (ID,NEV) values ('847','Kósa Frici');
Insert into H668895.FELHASZNALO (ID,NEV) values ('848','Gál Karsa');
Insert into H668895.FELHASZNALO (ID,NEV) values ('849','Böröcz Hanna');
Insert into H668895.FELHASZNALO (ID,NEV) values ('850','Sultisz Ugor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('851','Lengyel Bertuska');
Insert into H668895.FELHASZNALO (ID,NEV) values ('852','Márkus Vicuska');
Insert into H668895.FELHASZNALO (ID,NEV) values ('853','Kálmán Hont');
Insert into H668895.FELHASZNALO (ID,NEV) values ('854','Lázár Bettina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('855','Csikós Orzsebet');
Insert into H668895.FELHASZNALO (ID,NEV) values ('856','Szöllössi Karola');
Insert into H668895.FELHASZNALO (ID,NEV) values ('857','Csizmazia Zerind');
Insert into H668895.FELHASZNALO (ID,NEV) values ('858','Bányai Juci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('859','Szakály Tzigane');
Insert into H668895.FELHASZNALO (ID,NEV) values ('860','Dudás Szalók');
Insert into H668895.FELHASZNALO (ID,NEV) values ('861','Veress Franciska');
Insert into H668895.FELHASZNALO (ID,NEV) values ('862','Szölösi Zombor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('863','Sághi Vitéz');
Insert into H668895.FELHASZNALO (ID,NEV) values ('864','Seres Rezsõ');
Insert into H668895.FELHASZNALO (ID,NEV) values ('865','Seress Karole');
Insert into H668895.FELHASZNALO (ID,NEV) values ('866','Sinko Zsanett');
Insert into H668895.FELHASZNALO (ID,NEV) values ('867','Lakatos Dorika');
Insert into H668895.FELHASZNALO (ID,NEV) values ('868','Sebök Krisztián');
Insert into H668895.FELHASZNALO (ID,NEV) values ('869','Szöts Patrícia');
Insert into H668895.FELHASZNALO (ID,NEV) values ('870','Smit Ibolya');
Insert into H668895.FELHASZNALO (ID,NEV) values ('871','Kállai Ferenc');
Insert into H668895.FELHASZNALO (ID,NEV) values ('872','Somogyi Diána');
Insert into H668895.FELHASZNALO (ID,NEV) values ('873','Kováts Szilárd');
Insert into H668895.FELHASZNALO (ID,NEV) values ('766','Máté Myricoorish');
Insert into H668895.FELHASZNALO (ID,NEV) values ('767','Szakály Virag');
Insert into H668895.FELHASZNALO (ID,NEV) values ('874','Vagner Domokos');
Insert into H668895.FELHASZNALO (ID,NEV) values ('875','Benkó Roland');
Insert into H668895.FELHASZNALO (ID,NEV) values ('876','Bagy Diána');
Insert into H668895.FELHASZNALO (ID,NEV) values ('877','Szepesy Lilla');
Insert into H668895.FELHASZNALO (ID,NEV) values ('878','Szõts Tarján');
Insert into H668895.FELHASZNALO (ID,NEV) values ('879','Molnár Teca');
Insert into H668895.FELHASZNALO (ID,NEV) values ('880','Soós Zerind');
Insert into H668895.FELHASZNALO (ID,NEV) values ('881','Danka Katarina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('882','Torma Armand');
Insert into H668895.FELHASZNALO (ID,NEV) values ('883','Szöllössy Radomér');
Insert into H668895.FELHASZNALO (ID,NEV) values ('884','Forgáts Ágnes');
Insert into H668895.FELHASZNALO (ID,NEV) values ('885','Szöke Kati');
Insert into H668895.FELHASZNALO (ID,NEV) values ('886','Forgáts Nóra');
Insert into H668895.FELHASZNALO (ID,NEV) values ('887','Lörinc Viva');
Insert into H668895.FELHASZNALO (ID,NEV) values ('888','Szüts Bence');
Insert into H668895.FELHASZNALO (ID,NEV) values ('889','Mátyás Zoárd');
Insert into H668895.FELHASZNALO (ID,NEV) values ('890','Földy Pongor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('891','Tóth Adony');
Insert into H668895.FELHASZNALO (ID,NEV) values ('892','Szõcs Natália');
Insert into H668895.FELHASZNALO (ID,NEV) values ('893','Bányay Szemere');
Insert into H668895.FELHASZNALO (ID,NEV) values ('894','Forgách Blanka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('895','Gyúróskaja árkommandó');
Insert into H668895.FELHASZNALO (ID,NEV) values ('896','Gyúróskaja árkommandó');
Insert into H668895.FELHASZNALO (ID,NEV) values ('897','Nyerõ Tippmix/Tippek');
Insert into H668895.FELHASZNALO (ID,NEV) values ('898','Szegedi kispalyas foci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('899','Fitness, egészség, sport');
Insert into H668895.FELHASZNALO (ID,NEV) values ('900','Futófelszerelés, sporteszköz');
Insert into H668895.FELHASZNALO (ID,NEV) values ('901','Németh Sándor Pásztor tanítasai');
Insert into H668895.FELHASZNALO (ID,NEV) values ('902','Test - lélek - szellem');
Insert into H668895.FELHASZNALO (ID,NEV) values ('903','Univerzum Könyvtára');
Insert into H668895.FELHASZNALO (ID,NEV) values ('904','Szeméttelep');
Insert into H668895.FELHASZNALO (ID,NEV) values ('905','Leesett? Ez véresen komoly!');
Insert into H668895.FELHASZNALO (ID,NEV) values ('462','Gyõrfy Nándor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('463','Sipos Zsuzsi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('464','Szõlõsi Bars');
Insert into H668895.FELHASZNALO (ID,NEV) values ('465','Illyés Benedek');
Insert into H668895.FELHASZNALO (ID,NEV) values ('466','Balázs Gedeon');
Insert into H668895.FELHASZNALO (ID,NEV) values ('467','Gyarmaty Firenze');
Insert into H668895.FELHASZNALO (ID,NEV) values ('468','Kun Fredek');
Insert into H668895.FELHASZNALO (ID,NEV) values ('469','Szalai Solt');
Insert into H668895.FELHASZNALO (ID,NEV) values ('470','Szölõsy Bernadett');
Insert into H668895.FELHASZNALO (ID,NEV) values ('471','Kozma Gerzson');
Insert into H668895.FELHASZNALO (ID,NEV) values ('472','Gyõri Szabolcs');
Insert into H668895.FELHASZNALO (ID,NEV) values ('473','Bányai Nóra');
Insert into H668895.FELHASZNALO (ID,NEV) values ('474','Tar Kartal');
Insert into H668895.FELHASZNALO (ID,NEV) values ('475','Berényi Asztrik');
Insert into H668895.FELHASZNALO (ID,NEV) values ('476','Takácz Farkas');
Insert into H668895.FELHASZNALO (ID,NEV) values ('477','Kováts Szebasztián');
Insert into H668895.FELHASZNALO (ID,NEV) values ('478','Harsányi Vayk');
Insert into H668895.FELHASZNALO (ID,NEV) values ('479','Deák Georgina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('480','Miklós Marianna');
Insert into H668895.FELHASZNALO (ID,NEV) values ('481','Csizmazia Kornél');
Insert into H668895.FELHASZNALO (ID,NEV) values ('482','Szûts Frigyes');
Insert into H668895.FELHASZNALO (ID,NEV) values ('483','Makai Klaudia');
Insert into H668895.FELHASZNALO (ID,NEV) values ('484','Sághy Treszka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('485','Simon Flóra');
Insert into H668895.FELHASZNALO (ID,NEV) values ('486','Fekete Alexa');
Insert into H668895.FELHASZNALO (ID,NEV) values ('487','Györffy Liza');
Insert into H668895.FELHASZNALO (ID,NEV) values ('488','Szép Kende');
Insert into H668895.FELHASZNALO (ID,NEV) values ('489','Dömötör Karolina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('490','Zsinka Viva');
Insert into H668895.FELHASZNALO (ID,NEV) values ('491','Sághy Radomér');
Insert into H668895.FELHASZNALO (ID,NEV) values ('492','Széll Julcsa');
Insert into H668895.FELHASZNALO (ID,NEV) values ('493','Majer Hajnalka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('494','Markó Vanda');
Insert into H668895.FELHASZNALO (ID,NEV) values ('495','Szegedi Janka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('496','Kiss Zsuzsanna');
Insert into H668895.FELHASZNALO (ID,NEV) values ('497','Benedek Gitta');
Insert into H668895.FELHASZNALO (ID,NEV) values ('498','Tot Zsombor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('499','Bence Fanni');
Insert into H668895.FELHASZNALO (ID,NEV) values ('500','Béres Georgina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('501','Deák Kadosa');
Insert into H668895.FELHASZNALO (ID,NEV) values ('502','Saági Alberta');
Insert into H668895.FELHASZNALO (ID,NEV) values ('503','Nemes Nikoletta');
Insert into H668895.FELHASZNALO (ID,NEV) values ('504','Sebestyén Lipót');
Insert into H668895.FELHASZNALO (ID,NEV) values ('505','Mészáros Menyhért');
Insert into H668895.FELHASZNALO (ID,NEV) values ('506','Györffi Keleman');
Insert into H668895.FELHASZNALO (ID,NEV) values ('507','Urbán Csombor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('508','Albert Viva');
Insert into H668895.FELHASZNALO (ID,NEV) values ('509','Hajnal Eszter');
Insert into H668895.FELHASZNALO (ID,NEV) values ('510','Jakab Gara');
Insert into H668895.FELHASZNALO (ID,NEV) values ('511','Lukáts Dóra');
Insert into H668895.FELHASZNALO (ID,NEV) values ('512','Lang Adél');
Insert into H668895.FELHASZNALO (ID,NEV) values ('513','Erõs Roland');
Insert into H668895.FELHASZNALO (ID,NEV) values ('514','Mayer Kolos');
Insert into H668895.FELHASZNALO (ID,NEV) values ('515','Szölõs Dominik');
Insert into H668895.FELHASZNALO (ID,NEV) values ('516','Sebök Liza');
Insert into H668895.FELHASZNALO (ID,NEV) values ('517','Pataki Beatrix');
Insert into H668895.FELHASZNALO (ID,NEV) values ('518','Bence Elizabet');
Insert into H668895.FELHASZNALO (ID,NEV) values ('519','Pataky Moricz');
Insert into H668895.FELHASZNALO (ID,NEV) values ('520','Sultés Darda');
Insert into H668895.FELHASZNALO (ID,NEV) values ('521','Vig Agoti');
Insert into H668895.FELHASZNALO (ID,NEV) values ('522','Lovász Zalán');
Insert into H668895.FELHASZNALO (ID,NEV) values ('523','Fülöp Jenci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('524','Szöllössi Tivadar');
Insert into H668895.FELHASZNALO (ID,NEV) values ('525','Szathmári Hajnalka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('526','Bernáth Liza');
Insert into H668895.FELHASZNALO (ID,NEV) values ('527','Lendvay Fredek');
Insert into H668895.FELHASZNALO (ID,NEV) values ('528','Szölõs Nyék');
Insert into H668895.FELHASZNALO (ID,NEV) values ('529','Berta Vitéz');
Insert into H668895.FELHASZNALO (ID,NEV) values ('530','Sebestyén Blanka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('531','Széll Hajnalka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('532','Vég Boglárka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('533','Bán Marót');
Insert into H668895.FELHASZNALO (ID,NEV) values ('534','Laczkó Enikõ');
Insert into H668895.FELHASZNALO (ID,NEV) values ('535','Rigó Alex');
Insert into H668895.FELHASZNALO (ID,NEV) values ('536','Mátyás Ivett');
Insert into H668895.FELHASZNALO (ID,NEV) values ('537','Bakos Juci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('538','Sebõk Rez');
Insert into H668895.FELHASZNALO (ID,NEV) values ('539','Komáromi Bertuska');
Insert into H668895.FELHASZNALO (ID,NEV) values ('540','Sághi Oszlár');
Insert into H668895.FELHASZNALO (ID,NEV) values ('541','Seres Renátó');
Insert into H668895.FELHASZNALO (ID,NEV) values ('542','Bagi Cintia');
Insert into H668895.FELHASZNALO (ID,NEV) values ('543','Pásztor Réka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('544','Kurutz Borbála');
Insert into H668895.FELHASZNALO (ID,NEV) values ('545','Szilágyi Gyuszi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('546','Sultés Szevér');
Insert into H668895.FELHASZNALO (ID,NEV) values ('547','Kállay Dalma');
Insert into H668895.FELHASZNALO (ID,NEV) values ('548','Földesi Kata');
Insert into H668895.FELHASZNALO (ID,NEV) values ('549','Kuncz Ormos');
Insert into H668895.FELHASZNALO (ID,NEV) values ('550','Szepesi Olivér');
Insert into H668895.FELHASZNALO (ID,NEV) values ('551','Demeter Krisztofer');
Insert into H668895.FELHASZNALO (ID,NEV) values ('552','Erdélyi Izsak');
Insert into H668895.FELHASZNALO (ID,NEV) values ('553','Illés Hunor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('554','Virág Viktor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('555','Kõvári Tardos');
Insert into H668895.FELHASZNALO (ID,NEV) values ('556','Benkö Ilona');
Insert into H668895.FELHASZNALO (ID,NEV) values ('557','Bernáth Jázmin');
Insert into H668895.FELHASZNALO (ID,NEV) values ('558','Albert Dániel');
Insert into H668895.FELHASZNALO (ID,NEV) values ('559','Nagy Nóra');
Insert into H668895.FELHASZNALO (ID,NEV) values ('560','Bolla Menyhért');
Insert into H668895.FELHASZNALO (ID,NEV) values ('561','Bálint Juci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('562','Mezey Kemenes');
Insert into H668895.FELHASZNALO (ID,NEV) values ('563','Farkas Ágnes');
Insert into H668895.FELHASZNALO (ID,NEV) values ('564','Váradi Vanda');
Insert into H668895.FELHASZNALO (ID,NEV) values ('565','Heged?s Marianna');
Insert into H668895.FELHASZNALO (ID,NEV) values ('566','Torma Linka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('567','Szalai Kartal');
Insert into H668895.FELHASZNALO (ID,NEV) values ('568','Mülner Lajos');
Insert into H668895.FELHASZNALO (ID,NEV) values ('569','Csizmadia Marika');
Insert into H668895.FELHASZNALO (ID,NEV) values ('570','Rátz Géza');
Insert into H668895.FELHASZNALO (ID,NEV) values ('571','Szakáts Edina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('572','Rózsa Zerind');
Insert into H668895.FELHASZNALO (ID,NEV) values ('573','Kováts Kinga');
Insert into H668895.FELHASZNALO (ID,NEV) values ('574','Balogh Beatrix');
Insert into H668895.FELHASZNALO (ID,NEV) values ('575','Bodo Mária');
Insert into H668895.FELHASZNALO (ID,NEV) values ('576','Szatmáry Nusi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('577','Bogdán Bálint');
Insert into H668895.FELHASZNALO (ID,NEV) values ('578','Balla Paliki');
Insert into H668895.FELHASZNALO (ID,NEV) values ('579','Hoffmann Franciska');
Insert into H668895.FELHASZNALO (ID,NEV) values ('580','Szabados Csanád');
Insert into H668895.FELHASZNALO (ID,NEV) values ('581','László Annamária');
Insert into H668895.FELHASZNALO (ID,NEV) values ('582','Mülner Laborc');
Insert into H668895.FELHASZNALO (ID,NEV) values ('583','Bence Martuska');
Insert into H668895.FELHASZNALO (ID,NEV) values ('584','Fenyvesi Deli');
Insert into H668895.FELHASZNALO (ID,NEV) values ('585','Gaál Marika');
Insert into H668895.FELHASZNALO (ID,NEV) values ('586','Fazakas Mátyás');
Insert into H668895.FELHASZNALO (ID,NEV) values ('587','Földy Rebeka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('588','Keresztes Regina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('589','Pintér Szonja');
Insert into H668895.FELHASZNALO (ID,NEV) values ('590','Lengyel Kamilla');
Insert into H668895.FELHASZNALO (ID,NEV) values ('591','Kõváry Kornél');
Insert into H668895.FELHASZNALO (ID,NEV) values ('592','Márton Rezsõ');
Insert into H668895.FELHASZNALO (ID,NEV) values ('593','Simko Viva');
Insert into H668895.FELHASZNALO (ID,NEV) values ('594','Thury Csenge');
Insert into H668895.FELHASZNALO (ID,NEV) values ('595','Illés Karole');
Insert into H668895.FELHASZNALO (ID,NEV) values ('596','Vig Katakin');
Insert into H668895.FELHASZNALO (ID,NEV) values ('597','Urbán Zsa Zsa');
Insert into H668895.FELHASZNALO (ID,NEV) values ('598','Kõváry Moricz');
Insert into H668895.FELHASZNALO (ID,NEV) values ('599','Kováts Marianna');
Insert into H668895.FELHASZNALO (ID,NEV) values ('600','Mülner Zsolt');
Insert into H668895.FELHASZNALO (ID,NEV) values ('601','Szöcs Ibolya');
Insert into H668895.FELHASZNALO (ID,NEV) values ('602','Kalmár Ferko');
Insert into H668895.FELHASZNALO (ID,NEV) values ('603','Lantos Uzor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('604','Sallay Kamilla');
Insert into H668895.FELHASZNALO (ID,NEV) values ('605','Puskás Uros');
Insert into H668895.FELHASZNALO (ID,NEV) values ('606','Markó Laura');
Insert into H668895.FELHASZNALO (ID,NEV) values ('607','Lõrincz Boriska');
Insert into H668895.FELHASZNALO (ID,NEV) values ('608','Pásztor Jozsef');
Insert into H668895.FELHASZNALO (ID,NEV) values ('609','Czakó Enikõ');
Insert into H668895.FELHASZNALO (ID,NEV) values ('610','Lengyel Liliána');
Insert into H668895.FELHASZNALO (ID,NEV) values ('611','Herczegh Janka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('612','Gyõrffy Ond');
Insert into H668895.FELHASZNALO (ID,NEV) values ('613','Demeter Tétény');
Insert into H668895.FELHASZNALO (ID,NEV) values ('614','Sági Hajnalka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('615','Földi Zsa Zsa');
Insert into H668895.FELHASZNALO (ID,NEV) values ('616','Székely Ambrus');
Insert into H668895.FELHASZNALO (ID,NEV) values ('617','Orosz Titusz');
Insert into H668895.FELHASZNALO (ID,NEV) values ('618','Kuncz Mátyás');
Insert into H668895.FELHASZNALO (ID,NEV) values ('619','Lovász Emese');
Insert into H668895.FELHASZNALO (ID,NEV) values ('620','Sebeõk Fruzsina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('621','Szöllõsy Antal');
Insert into H668895.FELHASZNALO (ID,NEV) values ('622','Szakáts Barbara');
Insert into H668895.FELHASZNALO (ID,NEV) values ('623','Simko Vince');
Insert into H668895.FELHASZNALO (ID,NEV) values ('624','Sipos Samuka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('625','Gyõry Margo');
Insert into H668895.FELHASZNALO (ID,NEV) values ('626','Sághi Orbán');
Insert into H668895.FELHASZNALO (ID,NEV) values ('627','Szakály Éva');
Insert into H668895.FELHASZNALO (ID,NEV) values ('628','Sebestyén Vince');
Insert into H668895.FELHASZNALO (ID,NEV) values ('629','Kertész Etilka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('630','Szegedy Alex');
Insert into H668895.FELHASZNALO (ID,NEV) values ('631','Szathmáry Gergo');
Insert into H668895.FELHASZNALO (ID,NEV) values ('632','Révész Aurelia');
Insert into H668895.FELHASZNALO (ID,NEV) values ('633','Józsa Tarcal');
Insert into H668895.FELHASZNALO (ID,NEV) values ('634','Danka Ladomér');
Insert into H668895.FELHASZNALO (ID,NEV) values ('635','Salay Klaudia');
Insert into H668895.FELHASZNALO (ID,NEV) values ('636','Takách Milán');
Insert into H668895.FELHASZNALO (ID,NEV) values ('637','Kovács Endre');
Insert into H668895.FELHASZNALO (ID,NEV) values ('638','Máté György');
Insert into H668895.FELHASZNALO (ID,NEV) values ('639','Polgár Reg?');
Insert into H668895.FELHASZNALO (ID,NEV) values ('640','Fenyvessy Erzsi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('641','Csizmazia Brigitta');
Insert into H668895.FELHASZNALO (ID,NEV) values ('642','Bogdán Angyalka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('643','Fodor Miklós');
Insert into H668895.FELHASZNALO (ID,NEV) values ('644','Virágh György');
Insert into H668895.FELHASZNALO (ID,NEV) values ('645','Csizmazia Gisella');
Insert into H668895.FELHASZNALO (ID,NEV) values ('646','Szepessy Evike');
Insert into H668895.FELHASZNALO (ID,NEV) values ('647','Jósa Hajna');
Insert into H668895.FELHASZNALO (ID,NEV) values ('648','Várady Benjámin');
Insert into H668895.FELHASZNALO (ID,NEV) values ('649','Német Ktisztina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('650','Vince Kartal');
Insert into H668895.FELHASZNALO (ID,NEV) values ('651','Donka Ozor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('652','Markó Gizi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('653','Kecskés Boglárka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('654','Mezei Klaudia');
Insert into H668895.FELHASZNALO (ID,NEV) values ('655','Kõváry Bartalan');
Insert into H668895.FELHASZNALO (ID,NEV) values ('656','Csizmadia Darda');
Insert into H668895.FELHASZNALO (ID,NEV) values ('657','Kalmár Cseke');
Insert into H668895.FELHASZNALO (ID,NEV) values ('658','Ujvári Solt');
Insert into H668895.FELHASZNALO (ID,NEV) values ('659','Péter Orkény');
Insert into H668895.FELHASZNALO (ID,NEV) values ('660','Gál Kende');
Insert into H668895.FELHASZNALO (ID,NEV) values ('661','Gáspár Milán');
Insert into H668895.FELHASZNALO (ID,NEV) values ('662','Keresztes Réka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('663','Borbás Roza');
Insert into H668895.FELHASZNALO (ID,NEV) values ('664','Schmidt Aliz');
Insert into H668895.FELHASZNALO (ID,NEV) values ('665','Pete Teca');
Insert into H668895.FELHASZNALO (ID,NEV) values ('666','Madarász Zsolt');
Insert into H668895.FELHASZNALO (ID,NEV) values ('667','Kádár Szabolcs');
Insert into H668895.FELHASZNALO (ID,NEV) values ('668','Fehér Zsanett');
Insert into H668895.FELHASZNALO (ID,NEV) values ('669','Földi Ktisztina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('670','Vincze Krisztina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('671','Schulteisz Rezsõ');
Insert into H668895.FELHASZNALO (ID,NEV) values ('672','Papp Klaudia');
Insert into H668895.FELHASZNALO (ID,NEV) values ('673','Fülöp Gyula');
Insert into H668895.FELHASZNALO (ID,NEV) values ('674','Szõllõs Patony');
Insert into H668895.FELHASZNALO (ID,NEV) values ('675','Totth Lorant');
Insert into H668895.FELHASZNALO (ID,NEV) values ('676','Petö Bodi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('677','Gulyás Erssike');
Insert into H668895.FELHASZNALO (ID,NEV) values ('678','Vargha Paliki');
Insert into H668895.FELHASZNALO (ID,NEV) values ('679','Czakó Mátyás');
Insert into H668895.FELHASZNALO (ID,NEV) values ('680','Gaál Samuka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('681','Gaál Emese');
Insert into H668895.FELHASZNALO (ID,NEV) values ('682','Zsinka Szabolcs');
Insert into H668895.FELHASZNALO (ID,NEV) values ('683','Szölõsi Csongor');
Insert into H668895.FELHASZNALO (ID,NEV) values ('684','Polak Balázs');
Insert into H668895.FELHASZNALO (ID,NEV) values ('685','Horvát Ormos');
Insert into H668895.FELHASZNALO (ID,NEV) values ('686','Bertha Dániel');
Insert into H668895.FELHASZNALO (ID,NEV) values ('687','Bencze Sólyom');
Insert into H668895.FELHASZNALO (ID,NEV) values ('688','Herceg Marcell');
Insert into H668895.FELHASZNALO (ID,NEV) values ('689','Gera Bettina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('690','Révész Bartalan');
Insert into H668895.FELHASZNALO (ID,NEV) values ('691','Kelemen Zoárd');
Insert into H668895.FELHASZNALO (ID,NEV) values ('692','Földi Bianka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('693','Pethe Gisella');
Insert into H668895.FELHASZNALO (ID,NEV) values ('694','Szakáts Ozsvát');
Insert into H668895.FELHASZNALO (ID,NEV) values ('695','Kulcsár Lehel');
Insert into H668895.FELHASZNALO (ID,NEV) values ('696','Sági Barnabás');
Insert into H668895.FELHASZNALO (ID,NEV) values ('697','Gulyás Szalyk');
Insert into H668895.FELHASZNALO (ID,NEV) values ('698','Smitt Laura');
Insert into H668895.FELHASZNALO (ID,NEV) values ('699','Müllner Eszti');
Insert into H668895.FELHASZNALO (ID,NEV) values ('700','Szegedi Hajna');
Insert into H668895.FELHASZNALO (ID,NEV) values ('701','Borbás Sasa');
Insert into H668895.FELHASZNALO (ID,NEV) values ('702','Vég Florka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('703','Vadász Evelin');
Insert into H668895.FELHASZNALO (ID,NEV) values ('704','Kuncz Ágnes');
Insert into H668895.FELHASZNALO (ID,NEV) values ('705','Borsos Renátó');
Insert into H668895.FELHASZNALO (ID,NEV) values ('706','Rácz Keve');
Insert into H668895.FELHASZNALO (ID,NEV) values ('707','Végh Atilla');
Insert into H668895.FELHASZNALO (ID,NEV) values ('708','Mülner Malcsi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('709','Szalay Hajnalka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('710','Havass Izabella');
Insert into H668895.FELHASZNALO (ID,NEV) values ('711','Molnár Krisztián');
Insert into H668895.FELHASZNALO (ID,NEV) values ('712','Csontos Folkus');
Insert into H668895.FELHASZNALO (ID,NEV) values ('713','Herczeg Lipót');
Insert into H668895.FELHASZNALO (ID,NEV) values ('714','Vass Robi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('715','Kárpáthy Bettina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('716','Erdélyi Anci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('717','Kocsis Mária');
Insert into H668895.FELHASZNALO (ID,NEV) values ('718','Schmid Angyalka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('719','Fehér Szilveszter');
Insert into H668895.FELHASZNALO (ID,NEV) values ('720','Kun Kat');
Insert into H668895.FELHASZNALO (ID,NEV) values ('721','Mester András');
Insert into H668895.FELHASZNALO (ID,NEV) values ('722','Benedek Taksony');
Insert into H668895.FELHASZNALO (ID,NEV) values ('723','Polgár Tomaj');
Insert into H668895.FELHASZNALO (ID,NEV) values ('724','Radics Kardos');
Insert into H668895.FELHASZNALO (ID,NEV) values ('725','Papp Ákos');
Insert into H668895.FELHASZNALO (ID,NEV) values ('726','Barna Péter');
Insert into H668895.FELHASZNALO (ID,NEV) values ('727','Szalay Franciska');
Insert into H668895.FELHASZNALO (ID,NEV) values ('728','Sinko Ambrus');
Insert into H668895.FELHASZNALO (ID,NEV) values ('729','Weress Neci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('730','Fenyvessy Erzsok');
Insert into H668895.FELHASZNALO (ID,NEV) values ('731','Meyer Lõrinc');
Insert into H668895.FELHASZNALO (ID,NEV) values ('732','Vagner Rykus');
Insert into H668895.FELHASZNALO (ID,NEV) values ('733','Lukáts Treszka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('734','Mayer Krisztina');
Insert into H668895.FELHASZNALO (ID,NEV) values ('735','Kontz Rozalia');
Insert into H668895.FELHASZNALO (ID,NEV) values ('736','Illés Adojan');
Insert into H668895.FELHASZNALO (ID,NEV) values ('737','Vas Tarcal');
Insert into H668895.FELHASZNALO (ID,NEV) values ('738','Szöllössy Gara');
Insert into H668895.FELHASZNALO (ID,NEV) values ('739','Kerekes Piusz');
Insert into H668895.FELHASZNALO (ID,NEV) values ('740','Ságy Gizi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('741','Havassy Roland');
Insert into H668895.FELHASZNALO (ID,NEV) values ('742','Józsa Patony');
Insert into H668895.FELHASZNALO (ID,NEV) values ('743','Polach Lenci');
Insert into H668895.FELHASZNALO (ID,NEV) values ('744','Bolla Soma');
Insert into H668895.FELHASZNALO (ID,NEV) values ('745','Czakó Etilka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('746','Szöke Géza');
Insert into H668895.FELHASZNALO (ID,NEV) values ('747','Szigethy Ilona');
Insert into H668895.FELHASZNALO (ID,NEV) values ('748','Szõllösi Jázmin');
Insert into H668895.FELHASZNALO (ID,NEV) values ('749','Mester Aranka');
Insert into H668895.FELHASZNALO (ID,NEV) values ('750','Bán Lilla');
Insert into H668895.FELHASZNALO (ID,NEV) values ('751','Baranyay Alexa');
Insert into H668895.FELHASZNALO (ID,NEV) values ('752','Szöllössi Melinda');
Insert into H668895.FELHASZNALO (ID,NEV) values ('753','Tar Csenger');
Insert into H668895.FELHASZNALO (ID,NEV) values ('754','Szakál Evelin');
Insert into H668895.FELHASZNALO (ID,NEV) values ('755','Lõrinc Zalán');
Insert into H668895.FELHASZNALO (ID,NEV) values ('756','Fenyves Tünde');
Insert into H668895.FELHASZNALO (ID,NEV) values ('757','Smit Martuska');
Insert into H668895.FELHASZNALO (ID,NEV) values ('758','Széll Laura');
Insert into H668895.FELHASZNALO (ID,NEV) values ('759','Sós Paliki');
Insert into H668895.FELHASZNALO (ID,NEV) values ('760','Pap Julcsa');
Insert into H668895.FELHASZNALO (ID,NEV) values ('761','Gyõrfi Gyuszi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('762','Polyák Nusi');
Insert into H668895.FELHASZNALO (ID,NEV) values ('763','Majoros Tas');
Insert into H668895.FELHASZNALO (ID,NEV) values ('764','Fekete Jolan');
Insert into H668895.FELHASZNALO (ID,NEV) values ('765','Szõlösi Patrícia');
Insert into H668895.FELHASZNALO (ID,NEV) values ('461','Kardos Tünde');
REM INSERTING into H668895.UZENET
SET DEFINE OFF;
REM INSERTING into H668895.TAGJA
SET DEFINE OFF;
REM INSERTING into H668895.SZEMELY
SET DEFINE OFF;
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('623','Shah9IChoh','SimkoVince@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('624','dah9sahGiez','SiposSamuka@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('625','soo2muBee','GyoryMargo@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('626','pheshahR7i','SaghiOrban@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('627','suBie8Heeth','SzakalyEva@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('628','Maefee8OChie','SebestyenVince@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('629','Vahvi7koow','KerteszEtilka@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('630','Aey2ahQu','SzegedyAlex@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('631','xoa0shaeZ','SzathmaryGergo@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('632','iel5ahHa6ae','ReveszAurelia@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('633','nec5Moo3ee','JozsaTarcal@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('634','koeShee0ah','DankaLadomer@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('635','Oi3theich7','SalayKlaudia@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('636','Uichiob6ou','TakachMilan@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('637','AepheNuk3oo','KovacsEndre@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('638','aiboh1as4V','MateGyorgy@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('639','Aefae4too','PolgarRego@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('640','Queigh9ch','FenyvessyErzsi@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('641','uo1bo2OiR','CsizmaziaBrigitta@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('642','aiKoh1thuz','BogdanAngyalka@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('643','Zeinai0nai','FodorMiklos@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('644','raexoh0AeGh','ViraghGyorgy@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('645','ui6Uph8Vamie','CsizmaziaGisella@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('646','Eeshi5eiv','SzepessyEvike@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('647','eu9siQu2','JosaHajna@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('648','iedae7Iifae','VaradyBenjamin@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('649','Ahzai9ch','NemetKtisztina@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('650','coh6Zei7rich','VinceKartal@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('651','Aw5Zeiz9O','DonkaOzor@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('652','eureeX4oo','MarkoGizi@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('653','meu9ieJohdae','KecskesBoglarka@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('654','yieRieGah9','MezeiKlaudia@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('655','yaxohshe8Woo','KovaryBartalan@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('656','aoTei3ruj','CsizmadiaDarda@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('657','Zoo1Quiesh','KalmarCseke@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('658','Zesh5phei','UjvariSolt@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('659','eiT2puiK','PeterOrkeny@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('660','Xae4rohg','GalKende@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('661','EiW0hai1','GasparMilan@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('662','Ahv8aeku','KeresztesReka@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('663','reib5eShei','BorbasRoza@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('664','ieM0ooMee','SchmidtAliz@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('665','roo8ohSho','PeteTeca@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('666','Utie3ailiyoh','MadaraszZsolt@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('667','ee1ohD3b','KadarSzabolcs@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('668','OhCh9phah','FeherZsanett@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('669','Yoguhoith9e','FoldiKtisztina@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('670','riev5Aiwoovo','VinczeKrisztina@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('671','ju8Aivoo8ie','SchulteiszRezso@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('672','XooQu7AiH','PappKlaudia@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('673','Thii3feeQu0','FulopGyula@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('674','ai5Aighath','SzollosPatony@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('675','oseeVo7ph','TotthLorant@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('676','Eree1eigie','PetoBodi@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('677','Boo3eeciesh','GulyasErssike@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('678','oeroh3Oo','VarghaPaliki@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('679','Saeloh2fie','CzakoMatyas@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('680','cakuH8pha','GaalSamuka@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('681','Jabai1ohquu','GaalEmese@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('682','CieSh7jaes','ZsinkaSzabolcs@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('683','Ahsee6em2v','SzolosiCsongor@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('684','LiiN0aejah','PolakBalazs@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('685','ohQu4dahph9','HorvatOrmos@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('686','VooBeeg8','BerthaDaniel@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('687','Aic6ohci1u','BenczeSolyom@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('688','jaL8ohra','HercegMarcell@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('689','aido6Ahv','GeraBettina@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('690','ahxaiHoL3iy','ReveszBartalan@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('691','oC7kuNg9c','KelemenZoard@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('692','Veebiu1quie','FoldiBianka@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('693','Uoweroo6','PetheGisella@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('694','aisaiZugh2','SzakatsOzsvat@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('695','Yohwei8uu','KulcsarLehel@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('696','eeg2XeiCah','SagiBarnabas@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('697','phae7Phoh','GulyasSzalyk@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('698','phu7Eike','SmittLaura@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('699','Eephoth1','MullnerEszti@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('700','aivi6VeeD','SzegediHajna@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('701','xohhu7Iibei','BorbasSasa@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('702','aetheet6Da6','VegFlorka@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('703','zah1ohcheNg','VadaszEvelin@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('704','seo7ooN3eeTo','KunczAgnes@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('705','Fieb4af2','BorsosRenato@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('706','Engai1xo4oo','RaczKeve@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('707','Beid8aip','VeghAtilla@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('708','aicua6KieGee','MulnerMalcsi@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('709','Daimeit7E','SzalayHajnalka@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('710','eth9peoWai','HavassIzabella@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('711','bohto9eeW','MolnarKrisztian@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('712','eiDuw0xeuyee','CsontosFolkus@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('713','ied8AimieRie','HerczegLipot@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('714','Tu4aeR4u','VassRobi@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('715','uop4Eipih','KarpathyBettina@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('716','yooPoo4mai0','ErdelyiAnci@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('717','Boo5faeCie','KocsisMaria@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('718','Eix5gohso8','SchmidAngyalka@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('719','Od6zu9ch','FeherSzilveszter@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('720','ied4Au8Ohw','KunKat@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('721','Doo4tie1oh','MesterAndras@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('722','Ohqu6iz1oo','BenedekTaksony@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('723','hauXoh9ieph','PolgarTomaj@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('724','Reingiex7ie','RadicsKardos@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('725','Een2Hiowee','PappAkos@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('726','hohyo1Pap','BarnaPeter@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('727','Op1AiY9deik','SzalayFranciska@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('728','aes1Ujahsi8','SinkoAmbrus@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('729','ahp5Icheu','WeressNeci@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('730','CohPhaiH0pe','FenyvessyErzsok@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('731','jeey7Bai1v','MeyerLorinc@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('732','eejoh4uf5P','VagnerRykus@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('733','ohYohsh1ra','LukatsTreszka@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('734','eefeo9Oos2sie','MayerKrisztina@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('735','Tah4li4Quah','KontzRozalia@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('736','yohn4Eu5nie','IllesAdojan@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('737','eJ7lohnae','VasTarcal@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('738','eB3his8queu','SzollossyGara@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('739','Oot0eengo0','KerekesPiusz@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('740','eesh1Ieng','SagyGizi@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('741','rah9EekohB','HavassyRoland@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('742','to6ieJene','JozsaPatony@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('743','koh2Aesh','PolachLenci@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('744','No2uimeech2','BollaSoma@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('745','xunaJ2rae','CzakoEtilka@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('746','Hagh5aad','SzokeGeza@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('747','uaPai5kah','SzigethyIlona@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('748','Gei0ohchah','SzollosiJazmin@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('749','emie0ageeRah','MesterAranka@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('750','ar9ooThaegh','BanLilla@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('751','Puoch6Eph','BaranyayAlexa@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('752','aebemohc0Hae','SzollossiMelinda@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('753','uu4uGoo3sh','TarCsenger@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('754','oY7eeghohr','SzakalEvelin@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('755','uChu3ohg7','LorincZalan@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('756','Ahv9kibe3ya','FenyvesTunde@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('757','aX0uc5oh','SmitMartuska@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('758','AiTheVeiP5ee','SzellLaura@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('759','Ti1ahbeeRaesh','SosPaliki@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('760','Thosh7phuax','PapJulcsa@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('761','othuiyu1Ph','GyorfiGyuszi@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('762','EeS3dohf','PolyakNusi@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('763','Eiphah5Qu','MajorosTas@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('764','waequ0OngohSh','FeketeJolan@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('765','soeTh9phae','SzolosiPatricia@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('766','uxae5sheW1doh','MateMyricoorish@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('767','aiSh4ve6Ee','SzakalyVirag@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('768','aiKei8vohph','LantosGisella@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('769','mathieli0Kee','ThuryNyek@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('770','Fi8saikiedie','ReveszLorinc@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('771','Aey0ohchae','PetheoZoltan@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('772','Ore5ohghee','MagyarSebo@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('773','ooph7ungieTah','LorincBoldizsar@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('774','miek5Chi1','SzollossyBora@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('775','ou8win7Vu','GyorffyTabor@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('776','ailoociu7Oh','HegedusNeci@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('777','Meegh6Jaed5','SzepesAlexandra@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('778','veeL9hoong5','VorossGreta@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('779','aeda3Aequ','SimkoJucika@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('780','muSaeD1ei','BodoSasa@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('781','xeVoo0el0','SzucsErzsi@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('782','chahMae2th','SzakalMercedesz@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('783','Shi3foh3icah','MathePista@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('784','nozeF1Oothie','ErdeyKamilla@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('787','Ci8iefu2iesh','SaghiErssike@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('788','UCh1Eujoo4ie','PetoBelle@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('789','fieMat6ahGh','FoldesUgod@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('790','uRae4OhHua9','KollarErik@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('791','Miese9aenoh','KollarKartal@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('792','Wu0quoroh','ErdeiIzabella@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('793','aizapae1R','KovatsLantos@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('794','Eijie7saph','UjvaryKoppany@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('795','zu5OhZ1Eeph','LazarMarton@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('796','yaiC6ohtei','SmitBarnabas@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('797','EeF0XaiJie','DankoKitti@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('798','ahBeGei9Sai','SmidDalma@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('799','Gai1Liez','LorinczMarkos@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('800','Itholied4i','MaierJanos@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('801','Aeziek4gaik','SzotsDorika@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('802','oi7quo1eeQua','SchmidLukacs@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('803','vaeCie8ah','LevaiEmese@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('804','Eix7kai8Yae','FoldiRokus@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('805','xohF8Az2iech','SoosOdon@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('806','iemai0Nai','SinkaEndre@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('807','OowuoD1O','GyorfiUgor@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('808','zoith9Eo8a','KultsarSebes@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('809','OKoigh7ohS','SzollosiKatalin@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('810','aishiYafoL4','DonkaNoemi@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('811','Aiquee7aesh','BenczeVirag@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('812','ied5ath7E','SzilagyiNeci@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('813','Aeth0uqu','SorossKinga@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('814','aemooph7Kai','UjvariPazman@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('815','oX3Veithei','KulcsarKemenes@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('816','vubuiG2Xai','PalinkasJenci@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('817','Gehaeph2aemae','SzepessiGazsi@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('818','aix9uphe4O','MajorDora@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('819','Shoo2iesh','PatakiVeronika@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('820','mae2ien6Aj','MagyarDalma@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('821','Aemah8uPae','IllesOrsolya@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('822','eibola0aor6Xee','GyorfiGabriella@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('823','mokifi5Eo9','GyarmathyKat@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('824','teiHu6ui','MeyerAdojan@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('825','ayee8Ji1ah','KosaLorinc@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('826','Ahfahr6oech','HermanGyurka@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('827','kah1ahliB3j','OrsosBettina@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('828','mah7kie1J','GoroncserRamona@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('829','eK5Aawe7Shae','BallaIlona@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('830','ooN6Oid9Yu','MatyasRebeka@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('831','ooKi7zah','TuryZsanett@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('832','ieghaiTh1th','ReveszVirag@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('833','XiX5Ooguuf','SzantoAdrian@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('834','Vai9vahg6vie','GergelyUzor@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('835','pie9me4Eech','HofmanBeatrix@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('836','Phienihej2s','SzollosiJolan@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('837','Iuj0UJaeS','AtsMatyas@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('838','ahn9us0A','GyarmatiMelinda@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('839','Yeep6veegh','SzatmaryZsofia@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('840','ieh6si6Ai','BarabasCili@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('841','oaSha2aix7wae','PethoAgnes@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('842','eiTohngah8','SzocsFranciska@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('843','Hoc8urae','HerczegBorsala@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('844','eifai4QuooNgah','SzolosiCsilla@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('845','quaeJ1osh','SoosDeli@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('846','phae7wuChai','CsikosFrici@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('847','AeNu7rie9','KosaFrici@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('848','ci5Iebah','GalKarsa@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('849','eishaeh5aTh','BoroczHanna@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('850','xeiy2jieYah','SultiszUgor@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('851','paoma7ceoW','LengyelBertuska@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('852','aith2Kie0r','MarkusVicuska@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('853','saeF3eev','KalmanHont@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('854','KuiT8acai','LazarBettina@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('855','uuMoovai1','CsikosOrzsebet@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('856','moN4meequ','SzollossiKarola@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('857','ea3su4meiR','CsizmaziaZerind@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('858','iu0egh6OHei','BanyaiJuci@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('859','topuqu4Eo8','SzakalyTzigane@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('860','ooFoo5eeJ3','DudasSzalok@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('861','fire9oob1V','VeressFranciska@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('862','oMoov1Ohg','SzolosiZombor@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('863','aK2uangoo','SaghiVitez@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('864','Xoh8thesh','SeresRezso@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('785','Xa8eis1oh','OrsosDacso@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('786','Yohch8woh6l','RaczCsombor@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('865','ac8Eegh1','SeressKarole@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('866','ahw9TheVaig','SinkoZsanett@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('867','Hahv7yie5a','LakatosDorika@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('868','reetai4toSh','SebokKrisztian@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('869','gahp0ahChie','SzotsPatricia@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('870','IngeiZoo7j','SmitIbolya@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('871','aipei5Joh7Ah','KallaiFerenc@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('872','eek6Xee1Pai','SomogyiDiana@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('873','xe3hai7Atai','KovatsSzilard@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('874','Ikei4eekohgh','VagnerDomokos@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('875','ohNgiegh9ee','BenkoRoland@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('876','Xohxahghee2','BagyDiana@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('877','aik7Yout6ie','SzepesyLilla@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('878','ahMi4ooyohlui','SzotsTarjan@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('879','eeYohde6ibee','MolnarTeca@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('880','aoquie2Ei','SoosZerind@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('881','ahquiuVoh2ai','DankaKatarina@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('882','Aen2mea7Ee','TormaArmand@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('883','mie6shahPh','SzollossyRadomer@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('884','WoojeinooJ3','ForgatsAgnes@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('885','ohx7Oori9','SzokeKati@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('886','HohGeis9yi','ForgatsNora@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('887','shee4ieKa','LorincViva@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('888','Mu3Ooza1A','SzutsBence@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('889','olaa1Xeimi','MatyasZoard@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('890','eihohh7Ah','FoldyPongor@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('891','ea6ohGhai','TothAdony@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('892','inaiG6aP4aif','SzocsNatalia@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('893','LaeMuvae8g','BanyaySzemere@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('894','ohvee3Bei','ForgachBlanka@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('461','oMi0soh0','KardosTunde@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('462','bi3Pheu8m','GyorfyNandor@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('463','Meiz5uuy','SiposZsuzsi@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('464','Chaireex0oh','SzolosiBars@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('465','foiLope2','IllyesBenedek@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('466','eeN1voxu','BalazsGedeon@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('467','phiC1tiesh','GyarmatyFirenze@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('468','aeYe0gaex','KunFredek@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('469','safeo0Airee','SzalaiSolt@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('470','toeth0ooQu7','SzolosyBernadett@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('471','Hai7mao6a','KozmaGerzson@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('472','uChi4taeN1Qu','GyoriSzabolcs@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('473','deijohf2K','BanyaiNora@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('474','ieX7otee','TarKartal@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('475','looNajie4ca','BerenyiAsztrik@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('476','ue5phaiyahD','TakaczFarkas@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('477','aeniev9oa3L','KovatsSzebasztian@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('478','choog5Gae','HarsanyiVayk@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('479','Teijo8oon6ah','DeakGeorgina@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('480','aLa3Eewai','MiklosMarianna@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('481','Sheev4Mi','CsizmaziaKornel@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('482','KahCha3ool','SzutsFrigyes@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('483','tiel4Thahku','MakaiKlaudia@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('484','cah8uh6oYu','SaghyTreszka@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('485','nai7uusha9Ei','SimonFlora@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('486','ooth6ieZai','FeketeAlexa@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('487','ohtaeK9l','GyorffyLiza@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('488','wooz1Tied','SzepKende@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('489','Zohngai2x','DomotorKarolina@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('490','egohbei9U','ZsinkaViva@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('491','puHoox8oweo','SaghyRadomer@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('492','yeequ7zieB','SzellJulcsa@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('493','aigaex4aiNah','MajerHajnalka@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('494','vaeToo6aiJei','MarkoVanda@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('495','pheeJo4pu','SzegediJanka@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('496','SahShaek6g','KissZsuzsanna@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('497','ooJohwie7','BenedekGitta@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('498','veiY4ahw','TotZsombor@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('499','Iongaiv3nai','BenceFanni@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('500','rai6aew7ETh','BeresGeorgina@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('501','rijohae1U','DeakKadosa@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('502','eec0wah8O','SaagiAlberta@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('503','jae4ej1Tah','NemesNikoletta@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('504','Shiexei9','SebestyenLipot@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('505','Veizuw4aiv','MeszarosMenyhert@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('506','ooDa6aw4','GyorffiKeleman@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('507','zowo5UYeeBe','UrbanCsombor@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('508','ooc2aht0Ae','AlbertViva@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('509','oor9aePhaeL','HajnalEszter@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('510','pieg7Ze0ipie','JakabGara@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('511','Ej2aiFei3','LukatsDora@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('512','zaitiJa0ae','LangAdel@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('513','dahr3ooM','ErosRoland@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('514','Aehiebie3','MayerKolos@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('515','GohNoph0cie','SzolosDominik@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('516','Ve6Cerai5ua','SebokLiza@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('517','es4Aengai','PatakiBeatrix@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('518','quie8iRae','BenceElizabet@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('519','thoJaeg7','PatakyMoricz@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('520','ohYa3NeP7z','SultesDarda@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('521','yieT7Rii5ee','VigAgoti@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('522','Maenei9qu','LovaszZalan@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('523','pao8xahNah','FulopJenci@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('524','eep3Ucaev2','SzollossiTivadar@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('525','Toitoo5oh','SzathmariHajnalka@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('526','Cheehu8J','BernathLiza@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('527','Oph7toet2pha','LendvayFredek@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('528','taini8PaiN2','SzolosNyek@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('529','caeXohf6orie','BertaVitez@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('530','Chok6fai1sa','SebestyenBlanka@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('531','Ahgh4Zei1','SzellHajnalka@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('532','aNg7ohngeir','VegBoglarka@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('533','eoz5Aib7nie','BanMarot@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('534','chiab5ooPh','LaczkoEniko@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('535','faith9Pho','RigoAlex@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('536','aiquoh6oy6Ae','MatyasIvett@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('537','Ku5Xu5Veezei','BakosJuci@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('538','eiFai1lupu0','SebokRez@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('539','Oof4Ohshie','KomaromiBertuska@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('540','ooR5kah4','SaghiOszlar@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('541','Aed4iuh5oi','SeresRenato@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('542','chio8Phai','BagiCintia@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('543','aung7Suuxae','PasztorReka@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('544','Eic8Aix0Thae','KurutzBorbala@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('545','Ohsheu4Sh','SzilagyiGyuszi@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('546','Chihee5Aez','SultesSzever@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('547','ahF2Ri5fei','KallayDalma@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('548','Shee2eegoo','FoldesiKata@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('549','baew0ongiFah','KunczOrmos@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('550','vupheNei1sh','SzepesiOliver@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('551','are6wieZoo','DemeterKrisztofer@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('552','Er9Paepei7','ErdelyiIzsak@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('553','ooquoo0F','IllesHunor@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('554','ogu9eiPh2','ViragViktor@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('555','Ohb2uxaib','KovariTardos@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('556','Ti5aiquae','BenkoIlona@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('557','caTh4eoxai','BernathJazmin@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('558','yae9Phiey4ee','AlbertDaniel@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('559','Kog2too4','NagyNora@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('560','nael4To6j','BollaMenyhert@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('561','ohweeki6Jah','BalintJuci@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('562','iehie4Sh','MezeyKemenes@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('563','eeBai6Thoe0','FarkasAgnes@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('564','chohs2ooJ','VaradiVanda@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('565','hai0AiFae','HegedusMarianna@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('566','Cahchoo3poth','TormaLinka@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('567','aing9aeDah','SzalaiKartal@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('568','eeGh1uep','MulnerLajos@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('569','Je9eiShe','CsizmadiaMarika@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('570','quahL8nequ','RatzGeza@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('571','chiiK7ahsh','SzakatsEdina@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('572','Thoh9ca8caNg','RozsaZerind@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('573','Tei5co6ie','KovatsKinga@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('574','eCheet0w','BaloghBeatrix@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('575','xoo6oaYilie','BodoMaria@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('576','ooghooB7Ie','SzatmaryNusi@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('577','iZ9Gooboor','BogdanBalint@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('578','lec0Eibudoo','BallaPaliki@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('579','hooFaiyi9','HoffmannFranciska@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('580','Eu9eethee8','SzabadosCsanad@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('581','IpuB0oTee','LaszloAnnamaria@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('582','aethooB4meiM','MulnerLaborc@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('583','uosh0aY3Zai','BenceMartuska@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('584','uungoh6BieN','FenyvesiDeli@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('585','OhC1athie7','GaalMarika@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('586','caeV4Uung','FazakasMatyas@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('587','euSh9uer','FoldyRebeka@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('588','oothoor5C','KeresztesRegina@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('589','EuTha1chai2','PinterSzonja@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('590','wohy4Gu7eng','LengyelKamilla@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('591','oozaiFoi0ee','KovaryKornel@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('592','eefePhexai1','MartonRezso@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('593','aoshac5Gai','SimkoViva@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('594','iGhiedo5','ThuryCsenge@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('595','XaBuu4booGh','IllesKarole@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('596','aiNaenaip2','VigKatakin@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('597','zahC3ien9F','UrbanZsaZsa@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('598','Choopaish7','KovaryMoricz@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('599','phaiFeex4iel','KovatsMarianna@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('600','Wuomee0ae','MulnerZsolt@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('601','eeV2aiqu','SzocsIbolya@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('602','Veghaow7ie','KalmarFerko@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('603','nahm5oi7Jo','LantosUzor@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('604','Xaigh6Uw','SallayKamilla@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('605','wiWaivee0qu','PuskasUros@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('606','Ohgii9oot','MarkoLaura@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('607','Kuu7Xu2kehu','LorinczBoriska@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('608','feemah9A','PasztorJozsef@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('609','ieph4ciuM9','CzakoEniko@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('610','ioz4Aibawei','LengyelLiliana@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('611','Thee4iexie','HerczeghJanka@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('612','rohqu8nouCh','GyorffyOnd@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('613','nieV4dohxie','DemeterTeteny@dayrep.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('614','aeja6iuVa5ai','SagiHajnalka@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('615','Shuch0dabui','FoldiZsaZsa@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('616','Koh7Zahbee','SzekelyAmbrus@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('617','aezaeThaib1','OroszTitusz@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('618','Fieg5Gahv','KunczMatyas@teleworm.us');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('619','OeJohBie5ei','LovaszEmese@jourrapide.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('620','Ayahd1rooR6','SebeokFruzsina@rhyta.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('621','euHiaxoh8oo','SzollosyAntal@armyspy.com');
Insert into H668895.SZEMELY (ID,JELSZO,EMAIL) values ('622','ooJu1iegh6X','SzakatsBarbara@teleworm.us');
REM INSERTING into H668895.ISKOLA
SET DEFINE OFF;
REM INSERTING into H668895.MUNKAHELY
SET DEFINE OFF;
REM INSERTING into H668895.ISMER
SET DEFINE OFF;
REM INSERTING into H668895.KLUB
SET DEFINE OFF;
Insert into H668895.KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('897','752',to_date('17-MÁRC. -29','RR-MON-DD'),'Sportfogadással foglalkozó csoport. Ha hirdetni, reklámozni szeretnél írj egy Nyerõ Tippmix/Tippek adminnak');
Insert into H668895.KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('898','780',to_date('17-MÁRC. -29','RR-MON-DD'),'Azert hoztam letre ezt a csoportot,hogy konnyebben tudjunk szervezni mindenfele kispalyas focit itt Szegeden. Igy mindenki egy helyen ertesulhet az epp aktualis focirol, talan igy kevesebb embert kell felhivnunk telefonon es sms-t irni.');
Insert into H668895.KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('896','750',to_date('17-MÁRC. -29','RR-MON-DD'),'Akciós csirkemell? Olcsó marhahús? Fillérekért láttál rizst? Ha bármi kaja akciót látsz, ami megér egy megosztást, told be nyugodtan!');
Insert into H668895.KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('899','749',to_date('17-MÁRC. -29','RR-MON-DD'),'Fitness! Egészség tudatosság! Sport! Táplálkozástudomány és Biogenikus életvitel. - közösség, ahol jó helyen vagy!');
Insert into H668895.KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('900','782',to_date('17-MÁRC. -29','RR-MON-DD'),'Minden sporttal kapcsolatos eszköz, súlyzó, futófelszerelés,táplálék kiegésztõ, cipõ, ruházat, használt és új egyaránt, adás-vétel és csere lehetõségekkel');
Insert into H668895.KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('901','745',to_date('17-MÁRC. -29','RR-MON-DD'),'Ez egy kereszt?ny csoport melyben Németh Sándor pásztor tanításai összegyûjtve találhatóak.A Csoportot nem Németh Sándor kezeli.');
Insert into H668895.KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('902','736',to_date('17-MÁRC. -29','RR-MON-DD'),'Beszélgethettek, elmondhatjátok a véleményeteket az alábbi témakörökben.');
Insert into H668895.KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('903','790',to_date('17-MÁRC. -29','RR-MON-DD'),'Az oldalon tobb kulfoldi iras is elofordul az utobbi hetekben, ez annak is koszonheto, hogy vannak koztunk kulfoldi tagok is, masreszt sajnos ido hianyaban nem tudom oket magyarra leforditani. megerteseteket koszonom.');
Insert into H668895.KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('904','787',to_date('17-MÁRC. -29','RR-MON-DD'),'Üdvözöllek a Szeméttelep csoportban, egy oldalon, mely TAGJAI szórakoztatásának céljából jött létre!');
Insert into H668895.KLUB (ID,TULAJDONOS,KEZDET,LEIRAS) values ('905','786',to_date('17-MÁRC. -29','RR-MON-DD'),'Ez egy humoros csoport, családias légkörrel, bárkit szívesen fogadunk. A kulturált viccelõdésig minden megengedett.');
REM INSERTING into H668895.KEPEK
SET DEFINE OFF;
REM INSERTING into H668895.ERTESITES
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index POSZT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."POSZT_PK" ON "H668895"."POSZT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROFIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."PROFIL_PK" ON "H668895"."PROFIL" ("SZEMELYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LAKHELY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."LAKHELY_PK" ON "H668895"."LAKHELY" ("LAKHELYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HOBBI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."HOBBI_PK" ON "H668895"."HOBBI" ("HOBBIID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ALBUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."ALBUM_PK" ON "H668895"."ALBUM" ("IDO", "NEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."KEY" ON "H668895"."FELHASZNALO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UZENET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."UZENET_PK" ON "H668895"."UZENET" ("FELADO", "CIMZETT", "IDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TAGJA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."TAGJA_PK" ON "H668895"."TAGJA" ("SZEMELYID", "KLUBID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SZEMELY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."SZEMELY_PK" ON "H668895"."SZEMELY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ISKOLA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."ISKOLA_PK" ON "H668895"."ISKOLA" ("ISKOLAID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MUNKAHELY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."MUNKAHELY_PK" ON "H668895"."MUNKAHELY" ("MUNKAHELYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KLUB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."KLUB_PK" ON "H668895"."KLUB" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEPEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."KEPEK_PK" ON "H668895"."KEPEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ERTESITES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "H668895"."ERTESITES_PK" ON "H668895"."ERTESITES" ("IDO", "KINEK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger POSZT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "H668895"."POSZT_TRG" 
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
ALTER TRIGGER "H668895"."POSZT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LAKHELY_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "H668895"."LAKHELY_TRG" 
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
ALTER TRIGGER "H668895"."LAKHELY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HOBBI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "H668895"."HOBBI_TRG" 
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
ALTER TRIGGER "H668895"."HOBBI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ALBUM_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "H668895"."ALBUM_TRG" 
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
ALTER TRIGGER "H668895"."ALBUM_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FELHASZNALO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "H668895"."FELHASZNALO_TRG" 
BEFORE INSERT ON FELHASZNALO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT FELHASZNALO_SEQ1.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "H668895"."FELHASZNALO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ISKOLA_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "H668895"."ISKOLA_TRG" 
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
ALTER TRIGGER "H668895"."ISKOLA_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MUNKAHELY_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "H668895"."MUNKAHELY_TRG" 
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
ALTER TRIGGER "H668895"."MUNKAHELY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KLUB_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "H668895"."KLUB_TRG" 
BEFORE INSERT ON KLUB 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "H668895"."KLUB_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KLUB_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "H668895"."KLUB_TRG1" 
BEFORE INSERT ON KLUB 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "H668895"."KLUB_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KEPEK_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "H668895"."KEPEK_TRG" 
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
ALTER TRIGGER "H668895"."KEPEK_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table POSZT
--------------------------------------------------------

  ALTER TABLE "H668895"."POSZT" ADD CONSTRAINT "POSZT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."POSZT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFIL
--------------------------------------------------------

  ALTER TABLE "H668895"."PROFIL" ADD CONSTRAINT "PROFIL_PK" PRIMARY KEY ("SZEMELYID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."PROFIL" MODIFY ("SZEMELYID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LAKHELY
--------------------------------------------------------

  ALTER TABLE "H668895"."LAKHELY" ADD CONSTRAINT "LAKHELY_PK" PRIMARY KEY ("LAKHELYID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."LAKHELY" MODIFY ("LAKHELYID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HOBBI
--------------------------------------------------------

  ALTER TABLE "H668895"."HOBBI" ADD CONSTRAINT "HOBBI_PK" PRIMARY KEY ("HOBBIID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."HOBBI" MODIFY ("HOBBIID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALBUM
--------------------------------------------------------

  ALTER TABLE "H668895"."ALBUM" ADD CONSTRAINT "ALBUM_PK" PRIMARY KEY ("IDO", "NEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."ALBUM" MODIFY ("FELHASZNALOID" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."ALBUM" MODIFY ("NEV" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."ALBUM" MODIFY ("IDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "H668895"."FELHASZNALO" ADD CONSTRAINT "KEY" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."FELHASZNALO" MODIFY ("NEV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UZENET
--------------------------------------------------------

  ALTER TABLE "H668895"."UZENET" MODIFY ("FELADO" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."UZENET" MODIFY ("CIMZETT" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."UZENET" MODIFY ("IDO" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."UZENET" ADD CONSTRAINT "UZENET_PK" PRIMARY KEY ("FELADO", "CIMZETT", "IDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAGJA
--------------------------------------------------------

  ALTER TABLE "H668895"."TAGJA" MODIFY ("SZEMELYID" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."TAGJA" MODIFY ("KLUBID" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."TAGJA" ADD CONSTRAINT "TAGJA_PK" PRIMARY KEY ("SZEMELYID", "KLUBID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SZEMELY
--------------------------------------------------------

  ALTER TABLE "H668895"."SZEMELY" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."SZEMELY" MODIFY ("JELSZO" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."SZEMELY" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."SZEMELY" ADD CONSTRAINT "SZEMELY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ISKOLA
--------------------------------------------------------

  ALTER TABLE "H668895"."ISKOLA" ADD CONSTRAINT "ISKOLA_PK" PRIMARY KEY ("ISKOLAID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."ISKOLA" MODIFY ("ISKOLAID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MUNKAHELY
--------------------------------------------------------

  ALTER TABLE "H668895"."MUNKAHELY" ADD CONSTRAINT "MUNKAHELY_PK" PRIMARY KEY ("MUNKAHELYID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."MUNKAHELY" MODIFY ("MUNKAHELYID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KLUB
--------------------------------------------------------

  ALTER TABLE "H668895"."KLUB" ADD CONSTRAINT "KLUB_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."KLUB" MODIFY ("TULAJDONOS" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."KLUB" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KEPEK
--------------------------------------------------------

  ALTER TABLE "H668895"."KEPEK" ADD CONSTRAINT "KEPEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."KEPEK" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ERTESITES
--------------------------------------------------------

  ALTER TABLE "H668895"."ERTESITES" ADD CONSTRAINT "ERTESITES_PK" PRIMARY KEY ("IDO", "KINEK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "H668895"."ERTESITES" MODIFY ("KINEK" NOT NULL ENABLE);
 
  ALTER TABLE "H668895"."ERTESITES" MODIFY ("IDO" NOT NULL ENABLE);
  
 START szemelyhozzaad.sql
 START klubhozzaad.sql
