SELECT * FROM BD2128884.curso;

INSERT INTO BD2128884.candidato (correo,nombres) VALUES ('ectorfabian@hotmail.com','hector,fabian');

BEGIN
BD2128884.PA_JUNTA.Adicionar_Plan(12, TO_DATE('5-1-2018','DD-MM-YYYY'), 'activo', 'profesor@hotmail.com', 'ectorfabian@hotmail.com');
END;

/*BEGIN
BD2128884.PA_CANDIDATO.
END;*/