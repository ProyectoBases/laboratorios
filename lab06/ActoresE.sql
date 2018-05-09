CREATE OR REPLACE PACKAGE PA_JUNTA IS

PROCEDURE Adicionar_Plan (id NUMBER, inicio DATE, habilitado VARCHAR, profe VARCHAR, correo VARCHAR);
PROCEDURE Adicionar_Prioridad (Tprioridad VARCHAR, nombreH VARCHAR, numeroP NUMBER);
PROCEDURE Modificar_Plan (id NUMBER, habilitado VARCHAR, profe VARCHAR, final DATE);
PROCEDURE Modificar_Prioridad (numeroP NUMBER, nombreH VARCHAR, Tprioridad VARCHAR);
PROCEDURE Adicionar_Curso (id VARCHAR, name VARCHAR, habilitado NUMBER, nombreH VARCHAR);
PROCEDURE Modificar_Curso (id VARCHAR, info VARCHAR, habilitado NUMBER);
PROCEDURE Eliminar_Curso (id VARCHAR);
FUNCTION Consultar_Info_Candidato RETURN SYS_REFCURSOR;
FUNCTION Consultar_CursoHab(hab VARCHAR) RETURN SYS_REFCURSOR;
FUNCTION Consultar_Forma_Hab RETURN SYS_REFCURSOR;

END PA_JUNTA;

/

CREATE OR REPLACE PACKAGE PA_CANDIDATO IS

FUNCTION Consultar_Curso RETURN XMLTYPE;

END PA_CANDIDATO;

