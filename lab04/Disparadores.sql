---MANTENER PLAN FORMACIÓN-----
--Se asigna automaticamente el número de PlanFormación--

CREATE OR REPLACE TRIGGER AD_planFormacion_numero
BEFORE INSERT ON planFormacion
FOR EACH ROW
DECLARE
cont NUMBER;
p NUMBER;
BEGIN
SELECT MAX(numero)+1 INTO cont FROM planFormacion;
SELECT COUNT(numero) INTO cont FROM planFormacion;
IF (p = 0) THEN
cont:=1;
END IF;
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

--Un candidato no puede registrar más de un plan de formación en el año y lo debe hacer en enero.--

CREATE OR REPLACE TRIGGER AD_planFormacion_planFormacion
BEFORE INSERT ON planFormacion
FOR EACH ROW
DECLARE 
piv NUMBER;
BEGIN
SELECT COUNT(correoCandidato) INTO piv FROM planFormacion WHERE (correoCandidato = :NEW.correoCandidato) AND (EXTRACT(YEAR FROM :NEW.fecha) = EXTRACT(YEAR FROM SYSDATE));
IF (piv >0) THEN
RAISE_APPLICATION_ERROR(-20000, 'no es posible insertar dos veces en el mismo año.');
END IF;
IF (EXTRACT(MONTH FROM SYSDATE)<>1) THEN
RAISE_APPLICATION_ERROR(-20000, 'no se puede insertar en este año');
END IF;
END;
/

---El evaluador no puede ser uno de los compañeros (candidatos)---


CREATE OR REPLACE TRIGGER AD_planFormacion_evaluador
BEFORE INSERT ON planFormacion
FOR EACH ROW
DECLARE
co number;
BEGIN
SELECT COUNT(correo) INTO co FROM candidato WHERE :NEW.evaluador = correo;
IF (co>0) THEN
RAISE_APPLICATION_ERROR(-20000, 'un evaluador no puede ser un candidato');
END IF;
END;
/

