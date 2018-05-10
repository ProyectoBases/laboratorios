SELECT * FROM BD2128884.curso;

INSERT INTO BD2128884.candidato (correo,nombres) VALUES ('ectorfabian@hotmail.com','hector,fabian');
INSERT INTO BD2128884.planFormacion (estado,evaluador,correoCandidato) VALUES ('activo','profesor@hotmail.com', 'ectorfabian@hotmail.com');
/*BEGIN
BD2128884.PA_JUNTA.Adicionar_Plan(12, TO_DATE('5-1-2018','DD-MM-YYYY'), 'activo', 'profesor@hotmail.com', 'ectorfabian@hotmail.com');
END;*/


SELECT * FROM BD2128884.candidato;

INSERT INTO BD2128884.candidato (correo,nombres) VALUES ('fabian@hotmail.com','fabian hernesto');
