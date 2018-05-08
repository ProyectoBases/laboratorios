EXEC PC_PLANDEFORMACION.Adicionar_Plan(13,TO_DATE('09/AUG/2018'),'activo','ana_diaz@gmail.com','josegregorio@yahoo.es');
EXEC PC_PLANDEFORMACION.Adicionar_Prioridad('media');
EXEC PC_PLANDEFORMACION.Modificar_Plan(2,'no aprobado','ana_diaz_@gmail.com',TO_DATE('09/AUG/2019'));
EXEC PC_PLANDEFORMACION.Modificar_Prioridad('baja','modelarBD',2);
SELECT PC_PLANDEFORMACION.Consultar_Forma_Hab FROM dual;
SELECT PC_PLANDEFORMACION.Consultar_Info_Candidato FROM dual;

EXEC PC_CURSOS.Adicionar_Curso();
EXEC PC_CURSOS.Modificar_Curso();
EXEC PC_CURSOS.Eliminar_Curso();
SELECT PC_CURSOS.Consultar_Curso FROM dual;
SELECT PC_CURSOS.Consultar_CursoHab('programar') FROM dual;
