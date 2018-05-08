CREATE OR REPLACE PACKAGE BODY PC_PLANDEFORMACION AS

PROCEDURE Adicionar_Plan (id NUMBER, inicio DATE, habilitado VARCHAR, profe VARCHAR, correo VARCHAR) IS
BEGIN
INSERT INTO planFormacion (numero, fecha, estado, evaluador, correoCandidato) VALUES (id, inicio, habilitado, profe, correo);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'No se puede adicionar el plan de formacion');
END Adicionar_Plan;

PROCEDURE Adicionar_Prioridad (Tprioridad VARCHAR, nombreH VARCHAR, numeroP NUMBER) IS
BEGIN
INSERT INTO tienePrioridad (prioridad,nombreCortoH,numeroPF) VALUES (Tprioridad, nombreH, numeroP);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'No se puede adicionar la prioridad');
END Adicionar_Prioridad;

PROCEDURE Modificar_Plan (id NUMBER, habilitado VARCHAR, profe VARCHAR, final DATE) IS
BEGIN
UPDATE planFormacion SET estado = habilitado, evaluador = profe, fechaFin = final WHERE numero = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20001, 'No se puede modificar el plan de formacion');
END Modificar_Plan;

PROCEDURE Modificar_Prioridad (Tprioridad VARCHAR, nombreH VARCHAR, numeroP NUMBER) IS
BEGIN
UPDATE tienePrioridad SET prioridad = Tprioridad WHERE numeroPF = numeroP AND nombreCortoH = nombreH;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20001, 'No se puede modificar la prioridad');
END Modificar_Prioridad;

--Consultar estado de formacion por habilidades--
FUNCTION Consultar_Forma_Hab RETURN SYS_REFCURSOR IS Form_Hab SYS_REFCURSOR;
BEGIN
OPEN Form_Hab FOR
SELECT nombreCorto, COUNT(curso.nombreCortoH), COUNT(posee.correoCandidato) FROM habilidad, curso, candidato, posee
WHERE curso.nombreCortoH = nombreCorto AND nombreCorto = posee.nombreCortoH AND correo = posee.correoCandidato
GROUP BY nombreCorto;
RETURN(Form_Hab);
END;

--Consultar informacion de candidatos--
FUNCTION Consultar_Info_Candidato RETURN SYS_REFCURSOR IS Info_Candidato SYS_REFCURSOR;
BEGIN
OPEN Info_Candidato FOR
SELECT nombres, nombreCortoH AS habilidad, correo FROM candidato, posee WHERE candidato.correo = posee.correoCandidato;
RETURN(Info_Candidato);
END;

END PC_PLANDEFORMACION;

/

CREATE OR REPLACE PACKAGE BODY PC_CURSOS AS

PROCEDURE Adicionar_Curso (id VARCHAR, name VARCHAR, habilitado NUMBER) IS
BEGIN
INSERT INTO curso (codigo, nombre, cerrado) VALUES (id, name, habilitado);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20003, 'No se puede adicionar el curso');
END Adicionar_Curso;

PROCEDURE Modificar_Curso (id VARCHAR, info VARCHAR, habilitado NUMBER) IS
BEGIN
UPDATE curso SET detalle = info, cerrado = habilitado WHERE codigo = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20004, 'No se puede modificar el curso');
END Modificar_Curso;

PROCEDURE Eliminar_Curso (id VARCHAR) IS
BEGIN
DELETE FROM curso WHERE codigo = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20005, 'No se puede eliminar el curso');
END Eliminar_Curso;

FUNCTION Consultar_Curso RETURN XMLTYPE IS Cons_Curso XMLTYPE;
BEGIN
Cons_Curso := dbms_xmlgen.getxmltype ('SELECT * FROM curso');
RETURN Cons_Curso;
END;    ---esta mal---

FUNCTION Consultar_CursoHab(hab VARCHAR) RETURN SYS_REFCURSOR IS Curso_Hab SYS_REFCURSOR;
BEGIN
OPEN Curso_Hab FOR
SELECT curso.nombre FROM curso, habilidad WHERE curso.nombreCortoH = habilidad.nombreCorto AND habilidad.nombreCorto = hab;
RETURN(Curso_Hab);
END;

END PC_CURSOS;
