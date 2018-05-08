CREATE OR REPLACE PACKAGE BODY PA_JUNTA AS
    
	PROCEDURE Adicionar_Plan(id NUMBER, inicio DATE, habilitado VARCHAR, profe VARCHAR, correo VARCHAR) IS
	BEGIN 
		PC_PLANDEFORMACION.Adicionar_Plan(id, inicio, habilitado, profe, correo);
	END Adicionar_Plan;
    
    PROCEDURE Adicionar_Prioridad(Tprioridad VARCHAR) IS
	BEGIN 
		PC_PLANDEFORMACION.Adicionar_Prioridad (Tprioridad);
	END Adicionar_Prioridad;
    
    PROCEDURE Modificar_Plan(id NUMBER, habilitado VARCHAR, profe VARCHAR, final DATE) IS
	BEGIN 
		PC_PLANDEFORMACION.Modificar_Plan(id, habilitado, profe, final);
	END Modificar_Plan;
    
    PROCEDURE Modificar_Prioridad(numeroP NUMBER, nombreH VARCHAR, Tprioridad VARCHAR) IS
	BEGIN 
		PC_PLANDEFORMACION.Modificar_Prioridad(numeroP, nombreH, Tprioridad);
	END Modificar_Prioridad;
    
    PROCEDURE Adicionar_Curso(id VARCHAR, name VARCHAR, habilitado NUMBER) IS
	BEGIN 
		PC_CURSOS.Adicionar_Curso(id, name, habilitado);
	END Adicionar_Curso;
    
    PROCEDURE Modificar_Curso(id VARCHAR, info VARCHAR, habilitado NUMBER) IS
	BEGIN 
		PC_CURSOS.Modificar_Curso(id, info, habilitado);
	END Modificar_Curso;
    
    PROCEDURE Eliminar_Curso(id VARCHAR) IS
	BEGIN 
		PC_CURSOS.Eliminar_Curso(id);
	END Eliminar_Curso;
		
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