----------MODELO FISICO----------

---1. Mantener Plan Formacion---
CREATE OR REPLACE PACKAGE PC_PLANDEFORMACION IS

PROCEDURE Adicionar_Plan (numero NUMBER,fecha DATE,estado VARCHAR,evaluador VARCHAR, correoCandidato VARCHAR);
PROCEDURE Adicionar_Prioridad (prioridad VARCHAR, nombreCortoH VARCHAR, numeroPF NUMBER);
PROCEDURE Modificar_Plan (numero NUMBER, estado VARCHAR, evaluador VARCHAR, fechaFin DATE);
FUNCTION Consultar_Forma_Hab RETURN SYS_REFCURSOR;
FUNCTION Consultar_Cal_Candidato RETURN SYS_REFCURSOR;

END PC_PLANDEFORMACION;

---2. Mantener Curso---

CREATE OR REPLACE PACKAGE PC_CURSOS IS

PROCEDURE Adicionar_Curso (codigo VARCHAR,nombre VARCHAR, cerrado NUMBER);
PROCEDURE Modificar_Curso (codigo VARCHAR, detalle VARCHAR, cerrado NUMBER);
PROCEDURE Eliminar_Curso (codigo VARCHAR);
FUNCTION Consultar_Curso RETURN XMLTYPE;
FUNCTION Consultar_CursoHab(habilidad VARCHAR) RETURN SYS_REFCURSOR;

END PC_CURSOS;