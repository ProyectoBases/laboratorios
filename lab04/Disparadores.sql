--Se asigna automaticamente el n�mero de PlanFormaci�n--

CREATE OR REPLACE TRIGGER AD_planFormacion_numero
BEFORE INSERT ON planFormacion
FOR EACH ROW
DECLARE cont NUMBER;
BEGIN
SELECT COUNT(numero)+1 INTO cont FROM planFormacion;
:NEW.numero := cont;
END;
/


--Se asigna automaticamente la fecha de PlanFormacion--

CREATE OR REPLACE TRIGGER AD_planFormacion_fecha
BEFORE INSERT ON planFormacion
FOR EACH ROW
DECLARE fecha DATE;
BEGIN
SELECT SYSDATE INTO fecha FROM DUAL;
:NEW.fecha := fecha;
END;
/

--Se asigna automaticamente el estado de PlanFormacion--

CREATE OR REPLACE TRIGGER AD_planFormacion_estado
BEFORE INSERT ON planFormacion
FOR EACH ROW
BEGIN
:NEW.estado := 'en dise�o';
END;
/

--Un candidato no puede registrar m�s de un plan de formaci�n en el a�o y lo debe hacer en enero.--

CREATE OR REPLACE TRIGGER AD_planFormacion_planFormacion
BEFORE INSERT ON planFormacion
FOR EACH ROW
DECLARE piv NUMBER;
BEGIN
SELECT COUNT(candidato) INTO piv FROM planFormacion WHERE (correoCandidato = :NEW.correoCandidato) AND (EXTRACT(YEAR FROM :NEW.fecha) = EXTRACT(YEAR FROM SYSDATE));
IF (piv >0) THEN
RISE_APPLICATION_ERROR(-20001,'paila');
END IF;
END;
/