--Se asigna automaticamente el número de PlanFormación--

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
:NEW.estado := 'en diseño';
END;
/