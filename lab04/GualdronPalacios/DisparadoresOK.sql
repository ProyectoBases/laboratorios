----------DisparadoresOK----------

----------MANTENER PLAN FORMACION----------

/*el candidato no puede registrar mas de un plan de formacion en el ano*/
INSERT INTO planFormacion VALUES(0,TO_DATE('3/4/2018'),'en diseno','ameliajeje@yahoo.es',TO_DATE('22/4/2018'),'yoha_toro@hotmail.com');
/*el evaluador no puede ser un compañero candidato*/
INSERT INTO planFormacion VALUES(0,TO_DATE('10/4/2018'),'activo','danielrosales@gmail.com',TO_DATE('22/4/2018'),'ricardogarc@hotmail.com');
/*el estado solo puede pasar de diseño a ejecucion y de ejecucion a aprobado o a no aprobado*/
UPDATE planFormacion
SET estado = 'ejecucion'
WHERE evaluador = 'anadiaz@yahoo.es';
/*Las habilidades solo pueden modificarse si esta en estado de diseno*/
UPDATE habilidad
SET nombreCorto = 'blabla'
WHERE nombreCorto = 'programar';
/*En un plan de formacion solo puede existir una habilidad de prioridad alta y no deben incluirse habilidades que el candidato posea*/
INSERT INTO tienPrioridad VALUES('baja','modelarBD',1);
/*Las habilidades deben estar contempladas en algunos de los cursos que se estan ofreciendo*/
INSERT INTO forma VALUES('surfear','7');
/*Las modificaciones solo son posibles en el mes de enero*/
