create or replace procedure h668895.szemelyhozzaad(v_nev in string,v_jelszo in string,v_email in string) is
 PRAGMA AUTONOMOUS_TRANSACTION;
begin 
  insert into felhasznalo(nev) values (v_nev);
  commit;
  insert into szemely(id,jelszo,email) values ((select max(id)from felhasznalo),v_jelszo,v_email);
  commit;
end;


/*call h668895.szemelyhozzaad('Jozsef','asdasd','asd@asd.hu');
call h668895.klubhozzaad('a klub2',30,'jo lesz');*/