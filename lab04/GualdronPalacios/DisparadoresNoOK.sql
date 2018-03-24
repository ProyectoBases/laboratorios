----------DisparadoresNoOK----------

----------MANTENER PLAN FORMACION----------

/*el candidato no puede registrar mas de un plan de formacion en el ano*/
INSERT INTO planFormacion VALUES(0,TO_DATE('10/April/2018'),'activo','carolina_@gmail.com',TO_DATE('22/April/2018'),'gualdronsito@hotmail.com');
/*el evaluador no puede ser un compañero candidato*/
INSERT INTO planFormacion VALUES(0,TO_DATE('10/April/2018'),'activo','pepita@hotmail.com',TO_DATE('22/April/2018'),'yoha_toro@hotmail.com');
/*el estado solo puede pasar de diseño a ejecucion y de ejecucion a aprobado o a no aprobado*/
UPDATE planFormacion
SET estado = 'aprobado';
/*Las habilidades solo pueden modificarse si esta en estado de diseno*/
UPDATE planFormacion
SET estado = 'ejecucion';
UPDATE habilidad
SET nombreCortoH = 'blabla';
/*En un plan de formacion solo puede existir una habilidad de prioridad alta y no deben incluirse habilidades que el candidato posea*/
INSERT INTO tienPrioridad VALUES('alta','modelarUML',1);
/*Las habilidades deben estar contempladas en algunos de los cursos que se estan ofreciendo*/
INSERT INTO forma VALUES('lenguajes','1');
/*Las modificaciones solo son posibles en el mes de enero*/
UPDATE planFormacion
SET evaluador = 'americareal@gmail.com'
WHERE correoCandidato = 'gualdronsito@hotmail.com';
/*NO SE PERMITE ELIMINAR*/
DELETE FROM planFormacion;
