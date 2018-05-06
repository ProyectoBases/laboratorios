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

PROCEDURE Adicionar_Prioridad (Tprioridad VARCHAR) IS
BEGIN
INSERT INTO tienePrioridad (prioridad) VALUES (Tprioridad);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20000, 'No se puede adicionar la prioridad');
END Adicionar_Prioridad;

PROCEDURE Modificar_Plan (id NUMBER, inicio VARCHAR, profe VARCHAR, final DATE) IS
BEGIN
UPDATE planFormacion SET fecha = inicio, evaluador = profe, fechaFin = final WHERE numero = id;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20001, 'No se puede modificar el plan de formacion');
END Modificar_Plan;

PROCEDURE Modificar_Prioridad (numeroP NUMBER, nombreH VARCHAR, Tprioridad VARCHAR) IS
BEGIN
UPDATE tienePrioridad SET prioridad = Tprioridad WHERE numeroPF = numeroP AND nombreCortoH = nombreH;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE_APPLICATION_ERROR(-20001, 'No se puede modificar la prioridad');
END Modificar_Prioridad;

--Consultar estado de formación por habilidades--
FUNCTION Consultar_Forma_Hab RETURN SYS_REFCURSOR IS Form_Hab SYS_REFCURSOR;
BEGIN
OPEN Form_Hab FOR
SELECT nombreCorto, COUNT(x.nombreCortoH), COUNT(y.correoCandidato)
FROM habilidad, curso x, candidato, posee y
WHERE x.nombreCortoH = nombreCorto AND nombreCorto = y.nombreCortoH AND correo = y.correoCandidato
GROUP BY nombreCorto;
RETURN(Form_Hab);
END;

--Consultar informacion de candidatos--
FUNCTION Consultar_Info_Candidato RETURN SYS_REFCURSOR IS Info_Candidato SYS_REFCURSOR;
BEGIN
OPEN Info_Candidato FOR
SELECT nombres, nombreCortoH AS habilidad, correo FROM candidato x, posee y WHERE x.correo = y.correoCandidato;
RETURN(Info_Candidato);
END;

END PC_PLANDEFORMACION;
