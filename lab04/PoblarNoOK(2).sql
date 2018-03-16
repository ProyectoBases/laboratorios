----------PoblarNoOK (2)----------

--Revisión de casos del punto 3--
--en el atributo 'cerrado' del curso está la restricción de que solo se puede ingresar 0 o 1, lo que es equivalente a True o False--
INSERT INTO curso VALUES('4','ALGO','mejora la eficiencia de tus programas',2,'programar');
--en el atributo 'estado' del plan de formacion está la restricción de que solo se puede ingresar 'activo' o 'inactivo'--
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('2/April/2018'),'bien gracias','carlos',TO_DATE('22/April/2018'),'pepita@hotmail.com');
--en el atriuto 'metodologia' de las metodologías está la restriccioón de que solo se puede ingresar si es 'presencial' o 'noPresencial'--
INSERT INTO metodologia VALUES('dificil','4');
--en el 'tipo' de avance está la restricción de que solo recibe 'bajo', 'medio', 'alto'--
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('2/April/2018'),'casito','1',4);
--en el atributo 'prioridad' de tienePrioridad está la restricción de que solo acepta dígitos del 1 al 5--
INSERT INTO tienPrioridad VALUES(6,'programar',1);

--PUNTO2: Nuevos casos--
--planFormacion evaluador repetido--
INSERT INTO planformacion VALUES(tsecuencia.NextVal,TO_DATE('3/August/2018'),'activo','anadiaz@yahoo.es',TO_DATE('28/August/2018'),'gualdronsito@hotmail.com');
--foranea de avance diferente al padre key--
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('3/August/2018'),'bajo','1',8);
--foranea de metodologia diferente al padre key--
INSERT INTO metodologia VALUES('presencial','5');
--foranea de tienePrioridad diferente al padre key--
INSERT INTO tienprioridad VALUES(5,'programarr',1);
--repite la pk de curso--
INSERT INTO curso VALUES('1','python2','aprende python en el nivel 2',0,'programar');