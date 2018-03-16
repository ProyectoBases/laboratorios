----------PoblarOk----------

--candidato--
INSERT INTO candidato VALUES('gualdronsito@hotmail.com','andres felipe');
INSERT INTO candidato VALUES('pepito@hotmail.com','pepito perez');
INSERT INTO candidato VALUES('pepita@hotmail.com','pepita perez');
--habilidad--
INSERT INTO habilidad VALUES('programar','programacion de objetos');
INSERT INTO habilidad VALUES('modelarBD','modelar bases de datos');
INSERT INTO habilidad VALUES('gestionar','gestionar proyectos');
--posee--
INSERT INTO posee VALUES('gualdronsito@hotmail.com','programar');
INSERT INTO posee VALUES('pepito@hotmail.com','modelar');
INSERT INTO posee VALUES('pepita@hotmail.com','gestionar');
--curso--
INSERT INTO curso VALUES('1','python2','aprende python en el nivel 2',0,'programar');
INSERT INTO curso VALUES('2','MBDA','mejora tus habilidades de modelación',0,'modelarBD');
INSERT INTO curso VALUES('3','GPRO','mejora tus habilidades de gestionar',1,'gestionar');
--planFormacion--
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('3/August/2018'),'activo','anadiaz@yahoo.es',TO_DATE('28/August/2018'),'gualdronsito@hotmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('3/August/2018'),'activo','hector_gonzalez@hotmail.com',TO_DATE('20/August/2018'),'pepito@hotmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('2/April/2018'),'activo','carlitos_@gmail.com',TO_DATE('22/April/2018'),'pepita@hotmail.com');
--metodologia--
INSERT INTO metodologia VALUES('presencial','1');
INSERT INTO metodologia VALUES('noPresencial','2');
INSERT INTO metodologia VALUES('presencial','3');
--forma--
INSERT INTO forma VALUES('programar','1');
INSERT INTO forma VALUES('modelar','2');
INSERT INTO forma VALUES('gestionar','3');
--avance--
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('3/August/2018'),'bajo','1',1);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('3/August/2018'),'bajo','1',3);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('2/April/2018'),'bajo','1',2);
--tienePrioridad--
INSERT INTO tienPrioridad VALUES(5,'programar',1);
INSERT INTO tienPrioridad VALUES(3,'modelar',3);
INSERT INTO tienPrioridad VALUES(2,'gestionar',2);