----------PoblarNoOK----------

--PUNTO2--
--codigo del curso nulo--
INSERT INTO curso VALUES(NULL,'python3','aprende python en el nivel 3',0,'programar');
--metodología del curso nula (tabla metodología)--
INSERT INTO metodologia VALUES(null,'1');
--Habilidades nombreCorto cadena mayor a 10 caracteres--
INSERT INTO habilidad VALUES('programarrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr','programacion de objetos');
--numero de avance como cadena--
INSERT INTO avance VALUES('hola',TO_DATE('3/August/2018'),'bajo','1',1);
--fecha plan formacion como cualquier cadena--
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,'hola','activo','pedro',TO_DATE('28/August/2018'),'gualdronsito@hotmail.com');

--PUNTO3--
--en el atributo 'cerrado' del curso no está la restricción de que solo se puede ingresar 0 o 1, lo que es equivalente a True o False--
INSERT INTO curso VALUES('4','ALGO','mejora la eficiencia de tus programas',2,'programar');
--en el atributo 'estado' del plan de formacion no está la restricción de que solo se puede ingresar 'activo' o 'inactivo'--
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('2/April/2018'),'bien gracias','carlos',TO_DATE('22/April/2018'),'pepita@hotmail.com');
--en el atriuto 'metodologia' de las metodologías no está la restriccioón de que solo se puede ingresar si es 'presencial' o 'noPresencial'--
INSERT INTO metodologia VALUES('dificil','4');
--el 'tipo' de avance recibe cualquier cadena--
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('2/April/2018'),'casito','1',4);
--'prioridad' de tienePrioridad acepta cualquier dígito--
INSERT INTO tienPrioridad VALUES(6,'programar',1);