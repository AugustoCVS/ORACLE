declare
    MINHAEXE EXCEPTION;
    n           number := 10;
    
begin
    for i in &i .. &n loop
        dbms_output.put_line(i * i);
        if i * 2 = 10 then
            raise MINHAEXE;
            
        end if;
    end loop;
    
EXCEPTION
    when minhaexe then
    raise_application_error(-20015, 'Voce caiu na execução');
END;