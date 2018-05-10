EXEC PC_PLANDEFORMACION.Adicionar_Plan(13,TO_DATE('3/May/2018'),'en diseno','pablito_@hotmail.com','josegregorio@yahoo.es');
EXEC PC_PLANDEFORMACION.Adicionar_Prioridad('baja','programar',13);
EXEC PC_PLANDEFORMACION.Modificar_Plan(13,'activo','ana_diaz_@gmail.com',TO_DATE('09/Aug/2018'));
EXEC PC_PLANDEFORMACION.Modificar_Prioridad('alta','programar',13);
SELECT PC_PLANDEFORMACION.Consultar_Forma_Hab FROM dual;
SELECT PC_PLANDEFORMACION.Consultar_Info_Candidato FROM dual;

EXEC PC_CURSOS.Adicionar_Curso(8,'SINF',0,'programar');
EXEC PC_CURSOS.Modificar_Curso(8,'mejora tus habilidades en seguridad informatica',1);
EXEC PC_CURSOS.Eliminar_Curso(8);
SELECT PC_CURSOS.Consultar_Curso FROM dual;
SELECT PC_CURSOS.Consultar_CursoHab('programar') FROM dual;
