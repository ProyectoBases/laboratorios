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
:NEW.estado := 'en diseno';
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
RAISE_APPLICATION_ERROR(-20000, 'no es posible insertar dos veces en el mismo ano.');
END IF;
IF (EXTRACT(MONTH FROM SYSDATE)<>3) THEN
RAISE_APPLICATION_ERROR(-20000, 'no se puede insertar en este ano');
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

---El estado sólo puede pasar de diseño a ejecución y  de ejecución a uno de los estados finales (aprobado o no aprobado). ---
CREATE OR REPLACE TRIGGER AD_planFormacion_estado
BEFORE UPDATE ON planFormacion
FOR EACH ROW
DECLARE
est VARCHAR(20);
BEGIN
SELECT estado INTO est FROM planFormacion WHERE :NEW.numero = numero;
IF (est = 'en diseno' AND :NEW.estado <> 'ejecucion') THEN
RAISE_APPLICATION_ERROR(-20000, 'de diseno solo se puede pasar a ejecucion');
END IF;
IF (est = 'ejecucion' AND (:NEW.estado <> 'aprobado' OR :NEW.estado <> 'no aprobado')) THEN
RAISE_APPLICATION_ERROR(-20000, 'de ejecucion solo puede pasar a aprobado o no aprobado');
END IF;
END;
/
