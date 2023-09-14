set SERVEROUTPUT on;

create or replace function calcula_fgts(p_valor number) return number is 
begin
return p_valor * 0.8;
end;

create or replace PROCEDURE procedure_fgts is
v_valor number;
begin
v_valor := calcula_fgts(5000);
dbms_output.put_line('O valor do fgts é: ' || TO_CHAR(V_VALOR));
END procedure_fgts;

EXEC PROCEDURE_FGTS();
CALL PROCEDURE_FGTS();
EXECUTE PROCEDURE_FGTS();
BEGIN
PROCEDURE_FGTS();
END;


