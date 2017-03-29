create or replace procedure h668895.klubhozzaad(v_nev in string,v_tulajdonos in number,v_leiras in string) is
 PRAGMA AUTONOMOUS_TRANSACTION;
begin 
  insert into felhasznalo(nev) values (v_nev);
  commit;
  insert into klub(id,tulajdonos,kezdet,leiras) values ((select max(id)from felhasznalo),v_tulajdonos,sysdate,v_leiras);
  commit;
end;