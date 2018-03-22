----------PoblarOk (2)----------

--candidato--
INSERT INTO candidato VALUES('gualdronsito@hotmail.com','andres felipe');
INSERT INTO candidato VALUES('pepito@hotmail.com','pepito perez');
INSERT INTO candidato VALUES('pepita@hotmail.com','pepita perez');
INSERT INTO candidato VALUES('nataliaplc@gmail.com','natalia palacios');
INSERT INTO candidato VALUES('diego_cardenas@hotmail.com','diego cardenas');
INSERT INTO candidato VALUES('alejoguzm@hotmail.com','alejandro guzman');
INSERT INTO candidato VALUES('camilacano@yahoo.es','camila cano');
INSERT INTO candidato VALUES('vale_gon@hotmail.com','valeria gonzalez');
INSERT INTO candidato VALUES('davidsaa@hotmail.com','david saavedra');
INSERT INTO candidato VALUES('luisabmdez@gmail.com','luisa bermudez');
INSERT INTO candidato VALUES('joseduran@gmail.com','jose duran');
INSERT INTO candidato VALUES('santiago_rocha_@hotmail.com','santiago rocha');
--habilidad--
INSERT INTO habilidad VALUES('programar','programacion de objetos');
INSERT INTO habilidad VALUES('modelarBD','modelar bases de datos');
INSERT INTO habilidad VALUES('gestionar','gestionar proyectos');
INSERT INTO habilidad VALUES('liderazgo','direccion de proyectos');
INSERT INTO habilidad VALUES('modelarUML','modelado UML');
INSERT INTO habilidad VALUES('normalizar','normalizacion de bases de datos');
--posee--
INSERT INTO posee VALUES('gualdronsito@hotmail.com','programar');
INSERT INTO posee VALUES('pepito@hotmail.com','modelarBD');
INSERT INTO posee VALUES('pepita@hotmail.com','gestionar');
INSERT INTO posee VALUES('nataliaplc@gmail.com','modelarUML');
INSERT INTO posee VALUES('diego_cardenas@hotmail.com','liderazgo');
INSERT INTO posee VALUES('alejoguzm@hotmail.com','programar');
INSERT INTO posee VALUES('camilacano@yahoo.es','normalizar');
INSERT INTO posee VALUES('vale_gon@hotmail.com','normalizar');
INSERT INTO posee VALUES('davidsaa@hotmail.com','modelarUML');
INSERT INTO posee VALUES('luisabmdez@gmail.com','gestionar');
INSERT INTO posee VALUES('joseduran@gmail.com','modelarUML');
INSERT INTO posee VALUES('santiago_rocha_@hotmail.com','programar');
--curso--
INSERT INTO curso VALUES('1','python2','aprende python en el nivel 2',0,'programar');
INSERT INTO curso VALUES('2','MBDA','mejora tus habilidades de modelación de bd',0,'modelarBD');
INSERT INTO curso VALUES('3','GPRO','mejora tus habilidades de gestionar',1,'gestionar');
INSERT INTO curso VALUES('4','LPRO','refuerza tu habilidad para dirección de proyectos',0,'liderazgo');
INSERT INTO curso VALUES('5','MUML','mejora tus habilidades de modelado UML',1,'modelarUML');
INSERT INTO curso VALUES('6','NMBD','mejora tus habilidades para normalizacion',1,'normalizar');
--planFormacion--
INSERT INTO planFormacion VALUES(0,TO_DATE('3/May/2018'),'activo','anadiaz@yahoo.es',TO_DATE('28/August/2018'),'gualdronsito@hotmail.com');
INSERT INTO planFormacion VALUES(0,TO_DATE('3/May/2018'),'activo','hector_gonzalez@hotmail.com',TO_DATE('28/August/2018'),'pepito@hotmail.com');
INSERT INTO planFormacion VALUES(0,TO_DATE('2/April/2018'),'activo','carlitos_@gmail.com',TO_DATE('22/April/2018'),'pepita@hotmail.com');
INSERT INTO planFormacion VALUES(0,TO_DATE('10/May/2018'),'activo','juan_@gmail.com',TO_DATE('28/April/2018'),'nataliaplc@gmail.com');
INSERT INTO planFormacion VALUES(0,TO_DATE('1/June/2018'),'activo','camila__@hotmail.com',TO_DATE('22/April/2018'),'diego_cardenas@hotmail.com');
INSERT INTO planFormacion VALUES(0,TO_DATE('3/May/2018'),'activo','juanalol@gmail.com',TO_DATE('25/April/2018'),'alejoguzm@hotmail.com');
INSERT INTO planFormacion VALUES(0,TO_DATE('10/April/2018'),'activo','sergioarb_@gmail.com',TO_DATE('22/April/2018'),'camilacano@yahoo.es');
INSERT INTO planFormacion VALUES(0,TO_DATE('10/April/2018'),'activo','camilo__@gmail.com',TO_DATE('22/April/2018'),'vale_gon@hotmail.com');
INSERT INTO planFormacion VALUES(0,TO_DATE('10/May/2018'),'activo','sarapupo@yahoo.es',TO_DATE('27/April/2018'),'davidsaa@hotmail.com');
INSERT INTO planFormacion VALUES(0,TO_DATE('2/April/2018'),'activo','juliana@gmail.com',TO_DATE('22/April/2018'),'luisabmdez@gmail.com');
INSERT INTO planFormacion VALUES(0,TO_DATE('10/May/2018'),'activo','david_@hotmail.com',TO_DATE('22/April/2018'),'joseduran@gmail.com');
INSERT INTO planFormacion VALUES(0,TO_DATE('3/May/2018'),'en diseno','pabloneruda@yahoo.es',TO_DATE('22/April/2018'),'santiago_rocha_@hotmail.com');
--metodologia--
INSERT INTO metodologia VALUES('presencial','1');                  
INSERT INTO metodologia VALUES('noPresencial','2');
INSERT INTO metodologia VALUES('presencial','3');
INSERT INTO metodologia VALUES('noPresencial','3');                  
INSERT INTO metodologia VALUES('noPresencial','4');
INSERT INTO metodologia VALUES('presencial','5');
INSERT INTO metodologia VALUES('noPresencial','5');                  
INSERT INTO metodologia VALUES('noPresencial','6');
INSERT INTO metodologia VALUES('presencial','6');
--forma--
INSERT INTO forma VALUES('programar','1');
INSERT INTO forma VALUES('modelarBD','2');
INSERT INTO forma VALUES('gestionar','3');
INSERT INTO forma VALUES('liderazgo','4');
INSERT INTO forma VALUES('modelarUML','5');
INSERT INTO forma VALUES('normalizar','6');
--avance--
INSERT INTO avance VALUES(1,TO_DATE('3/July/2018'),'alto','1',1);
INSERT INTO avance VALUES(2,TO_DATE('5/August/2018'),'medio','2',2);
INSERT INTO avance VALUES(3,TO_DATE('2/May/2018'),'bajo','3',3);
INSERT INTO avance VALUES(4,TO_DATE('1/June/2018'),'bajo','5',4);
INSERT INTO avance VALUES(5,TO_DATE('1/August/2018'),'alto','4',5);
INSERT INTO avance VALUES(6,TO_DATE('3/July/2018'),'alto','1',6);
INSERT INTO avance VALUES(7,TO_DATE('10/August/2018'),'alto','6',7);
INSERT INTO avance VALUES(8,TO_DATE('10/August/2018'),'alto','6',8);
INSERT INTO avance VALUES(9,TO_DATE('1/June/2018'),'bajo','5',9);
INSERT INTO avance VALUES(10,TO_DATE('2/May/2018'),'bajo','3',10);
INSERT INTO avance VALUES(11,TO_DATE('1/June/2018'),'alto','5',11);
INSERT INTO avance VALUES(12,TO_DATE('3/July/2018'),'alto','1',12);
--tienePrioridad--
INSERT INTO tienPrioridad VALUES(5,'programar',1);
INSERT INTO tienPrioridad VALUES(5,'programar',6);
INSERT INTO tienPrioridad VALUES(5,'programar',12);
INSERT INTO tienPrioridad VALUES(4,'modelarUML',4);
INSERT INTO tienPrioridad VALUES(4,'modelarUML',9);
INSERT INTO tienPrioridad VALUES(4,'modelarUML',11);
INSERT INTO tienPrioridad VALUES(3,'normalizar',7);
INSERT INTO tienPrioridad VALUES(3,'normalizar',8);
INSERT INTO tienPrioridad VALUES(2,'modelarBD',2);
INSERT INTO tienPrioridad VALUES(3,'gestionar',3);
INSERT INTO tienPrioridad VALUES(3,'gestionar',10);
INSERT INTO tienPrioridad VALUES(5,'liderazgo',5);