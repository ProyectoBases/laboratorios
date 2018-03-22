----------MANTENER PLAN FORMACION----------

----Adicion----

--Se asigna automaticamente el numero de PlanFormacion--
CREATE OR REPLACE TRIGGER AD_planFormacion_numero
BEFORE INSERT ON planFormacion
FOR EACH ROW
DECLARE
cont NUMBER;
p NUMBER;
BEGIN
SELECT MAX(numero)+1 INTO cont FROM planFormacion;
SELECT COUNT(numero) INTO cont FROM planFormacion;
IF (p = 0 OR cont = NULL) THEN
:NEW.numero := 1;
ELSE
:NEW.numero := cont;
END IF;
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

--Un candidato no puede registrar mas de un plan de formacion en el ano y lo debe hacer en enero--
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
RAISE_APPLICATION_ERROR(-20000, 'no se puede insertar en este mes');
END IF;
END;
/

--El evaluador no puede ser uno de los companeros (candidatos)--
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

----Modificacion----

--El estado solo puede pasar de diseno a ejecucion y  de ejecucion a uno de los estados finales (aprobado o no aprobado)--
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
---Las habilidades sólo pueden modificarse si está en estado de diseño.----

CREATE OR REPLACE TRIGGER AD_habilidad
BEFORE UPDATE ON habilidad
FOR EACH ROW
DECLARE
est VARCHAR(50);
BEGIN
SELECT estado INTO est FROM ( TIENEPRIORIDAD NATURAL JOIN habilidad)NATURAL JOIN planFormacion WHERE :NEW.nombreCorto = nombreCorto;
IF (est<>'en diseno') THEN
RAISE_APPLICATION_ERROR(-20000, 'solo se puede modificar en estado de diseno');
END IF;
END;
/


---En un plan de formación sólo puede existir una habilidad de prioridad alta y no deben incluirse habilidades que el candidato posea.---

CREATE OR REPLACE TRIGGER AD_planFormacion_hab
BEFORE INSERT ON tienePrioridad
FOR EACH ROW
DECLARE
numero NUMBER(9);
hab VARCHAR(10);
BEGIN
SELECT COUNT(nombreCorto) INTO numero FROM (tienePrioridad NATURAL JOIN PLANFORMACION)NATURAL JOIN HABILIDAD WHERE prioridad = 'alta' AND :NEW.nombreCortoH=nombreCorto AND :NEW.numeroPF = numero;
SELECT nombreCorto INTO hab FROM (tienePrioridad NATURAL JOIN PLANFORMACION)NATURAL JOIN HABILIDAD WHERE :NEW.nombreCortoH = nombreCorto AND :NEW.numeroPF = numero;
IF (numero > 0) THEN
IF (:NEW.prioridad = 'alta') THEN
RAISE_APPLICATION_ERROR(-20000, 'sólo puede existir una habilidad de prioridad alta');
END IF;
END IF;
IF (hab <> NULL) THEN
RAISE_APPLICATION_ERROR(-20000, 'el candidato ya posee la habilidad');
END IF;
END;
/
---Las habilidades deben estar contempladas en algunos de los cursos que se están ofreciendo.----
CREATE OR REPLACE TRIGGER AD_habilidad_curso
BEFORE INSERT ON forma
FOR EACH ROW
DECLARE
hab VARCHAR(5);
BEGIN
SELECT codigo INTO hab FROM (forma NATURAL JOIN habilidad)NATURAL JOIN curso WHERE :NEW.nombreCortoH = nombreCorto AND :NEW.codigoCurso = codigo;
IF (hab = NULL) THEN
RAISE_APPLICATION_ERROR(-20000, 'las habilidades deben estar contempladas en alguno de los cursos que se estan ofreciendo');
END IF;
END;
/

---Las modificaciones sólo son posibles en el mes de enero.-----
CREATE OR REPLACE TRIGGER MO_planFormacion
BEFORE UPDATE ON planFormacion
FOR EACH ROW
BEGIN
IF (EXTRACT(MONTH FROM SYSDATE)<>1) THEN
RAISE_APPLICATION_ERROR(20000,'solo son posibles las modificaciones en el mes de enero');
END IF;
END;
/
-----NO SE PERMITE ELIMINAR------
CREATE OR REPLACE TRIGGER del_planFormacion
BEFORE DELETE ON planFormacion
FOR EACH ROW
BEGIN
RAISE_APPLICATION_ERROR(20000,'no es permitido eliminar');
END;
/

-----REGISTRAR AVANCE-------
--se asigna automaticamente el numero--
CREATE OR REPLACE TRIGGER AD_avanceNumero
BEFORE INSERT ON avance
FOR EACH ROW
DECLARE
nume NUMBER;
BEGIN
SELECT MAX(numero)+1 INTO nume FROM avance;
IF (nume=NULL) THEN
:NEW.numero := 1;
ELSE
:NEW.numero :=nume;
END IF;
END;
/

--se asigna la fecha automaticamente--
CREATE OR REPLACE TRIGGER AD_avanceFecha
BEFORE INSERT ON avance
FOR EACH ROW
DECLARE
fe DATE;
BEGIN
SELECT SYSDATE INTO fe FROM DUAL;
:NEW.fecha := fe;
END;
/
