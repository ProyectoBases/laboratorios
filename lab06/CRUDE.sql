----------MODELO FISICO----------

---1. Mantener Plan Formacion---
CREATE OR REPLACE PACKAGE PC_PLANDEFORMACION IS

PROCEDURE Adicionar_Plan (id NUMBER, inicio DATE, habilitado VARCHAR, profe VARCHAR, correo VARCHAR);
PROCEDURE Adicionar_Prioridad (Tprioridad VARCHAR);
PROCEDURE Modificar_Plan (id NUMBER, habilitado VARCHAR, profe VARCHAR, final DATE);
PROCEDURE Modificar_Prioridad (Tprioridad VARCHAR, nombreH VARCHAR, numeroP NUMBER);
FUNCTION Consultar_Forma_Hab RETURN SYS_REFCURSOR;
FUNCTION Consultar_Info_Candidato RETURN SYS_REFCURSOR;

END PC_PLANDEFORMACION;
/
---2. Mantener Curso---

CREATE OR REPLACE PACKAGE PC_CURSOS IS

PROCEDURE Adicionar_Curso (id VARCHAR, name VARCHAR, habilitado NUMBER);
PROCEDURE Modificar_Curso (id VARCHAR, info VARCHAR, habilitado NUMBER);
PROCEDURE Eliminar_Curso (id VARCHAR);
FUNCTION Consultar_Curso RETURN XMLTYPE;
FUNCTION Consultar_CursoHab(hab VARCHAR) RETURN SYS_REFCURSOR;

END PC_CURSOS;