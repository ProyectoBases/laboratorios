CREATE OR REPLACE PACKAGE BODY PA_JUNTA AS
    
    FUNCTION  Consultar_Info_Candidato RETURN SYS_REFCURSOR IS Info_Candidato SYS_REFCURSOR;
    BEGIN
        Info_Candidato := PC_PLANDEFORMACION.Consultar_Info_Candidato;
        RETURN Info_Candidato;
    END;
    
    FUNCTION  Consultar_CursoHab(hab VARCHAR) RETURN SYS_REFCURSOR IS Curso_Hab SYS_REFCURSOR;
    BEGIN
        Curso_Hab := PC_CURSOS.Consultar_CursoHab(hab);
        RETURN Curso_Hab;
    END;

	FUNCTION  Consultar_Forma_Hab RETURN SYS_REFCURSOR IS Form_Hab SYS_REFCURSOR;
    BEGIN
        Form_Hab := PC_PLANDEFORMACION.Consultar_Forma_Hab;
        RETURN Form_Hab;
    END;
    
END PA_JUNTA;

/

CREATE OR REPLACE PACKAGE BODY PA_CANDIDATO AS    

    FUNCTION  Consultar_Curso RETURN XMLTYPE IS Cons_Curso XMLTYPE;
    BEGIN
        Cons_Curso := PC_CURSOS.Consultar_Curso;
        RETURN Cons_Curso;
    END;
    
END PA_CANDIDATO;