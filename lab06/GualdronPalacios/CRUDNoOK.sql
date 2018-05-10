EXEC PC_PLANDEFORMACION.Adicionar_Plan(TO_DATE('3/May/2018'),'en diseno','pablito_@hotmail.com','josegregorio@yahoo.es');
EXEC PC_PLANDEFORMACION.Adicionar_Prioridad('baja',13);
EXEC PC_PLANDEFORMACION.Modificar_Plan(13,'activo','ana_diaz_@gmail.com',TO_DATE('09/Aug/2018'),'jnnbvv');
EXEC PC_PLANDEFORMACION.Modificar_Prioridad('holi','programar',13);

EXEC PC_CURSOS.Adicionar_Curso(8,'SINF',0,'programar',2);
EXEC PC_CURSOS.Modificar_Curso(7,'mejora tus habilidades en seguridad informatica');
EXEC PC_CURSOS.Eliminar_Curso(7,'SINF');
SELECT PC_CURSOS.Consultar_CursoHab(2) FROM dual;
