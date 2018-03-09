----------Tablas----------

--CRUD candidato--
CREATE TABLE candidato(correo VARCHAR(50) NOT NULL,
                        nombres VARCHAR(50) NOT NULL);
                        
CREATE TABLE posee(correoCandidato VARCHAR(50) NOT NULL, 
                    nombreCortoH VARCHAR(10) NOT NULL);
--CRUD habilidades--
CREATE TABLE habilidad(nombreCorto VARCHAR(10) NOT NULL,
                        nombre VARCHAR(50) NOT NULL);
--CRUD planFormacion--
CREATE TABLE planFormacion(numero NUMBER NOT NULL,
                            fecha DATE NOT NULL,
                            estado VARCHAR(50) NOT NULL,
                            evaluador VARCHAR(50) NOT NULL,
                            fechaFin DATE,
                            correoCandidato VARCHAR(50) NOT NULL);
                
CREATE TABLE tienPrioridad(prioridad NUMBER(1) NOT NULL,
                            nombreCortoH VARCHAR(10) NOT NULL,
                            numeroPF NUMBER NOT NULL);
--CRUD avance--         
CREATE TABLE avance(numero NUMBER NOT NULL,
                    fecha DATE NOT NULL,
                    tipo VARCHAR(50) NOT NULL,
                    codigoCurso VARCHAR(5) NOT NULL,
                    numeroPF NUMBER NOT NULL);
--CRUD curso--         
CREATE TABLE curso(codigo VARCHAR(5) NOT NULL,
                    nombre VARCHAR(50) NOT NULL,
                    detalle VARCHAR(50),
                    cerrado NUMBER(1) NOT NULL,
                    nombreCortoH VARCHAR(10) NOT NULL);

CREATE TABLE metodologia(metodologia VARCHAR(500) NOT NULL,
                        codigoCurso VARCHAR(5) NOT NULL);

CREATE TABLE forma(nombreCortoH VARCHAR(10) NOT NULL,
                    codigoCurso VARCHAR(5) NOT NULL);
         

----------XTABLAS----------

DROP TABLE forma;

DROP TABLE tienPrioridad;

DROP TABLE posee;

DROP TABLE metodologia;

DROP TABLE avance;

DROP TABLE curso;

DROP TABLE planFormacion;

DROP TABLE habilidad;

DROP TABLE candidato;


--TSECUENCIA--

CREATE SEQUENCE tsecuencia
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE tsecuenciaAvance
INCREMENT BY 1
START WITH 1;

--XSequence--

DROP SEQUENCE tsecuencia;

DROP SEQUENCE tsecuenciaAvance;


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


----------XPOBLAR----------

DELETE FROM forma;

DELETE FROM tienPrioridad;

DELETE FROM posee;

DELETE FROM metodologia;

DELETE FROM avance;

DELETE FROM curso;

DELETE FROM planFormacion;

DELETE FROM habilidad;

DELETE FROM candidato;


----------ATRIBUTOS----------

--Tabla planFormacion--

ALTER TABLE planFormacion
ADD CONSTRAINT CK_planFormacion_estado CHECK (estado IN ('activo','inactivo'));

--Tabla tienePrioridad--

ALTER TABLE tienPrioridad
ADD CONSTRAINT CK_tienPrioridad_prioridad CHECK (prioridad IN (1,2,3,4,5));

--Tabla avance--

ALTER TABLE avance
ADD CONSTRAINT CK_avance_tipo CHECK (tipo IN ('bajo','medio','alto'));

--Tabla curso--

ALTER TABLE curso
ADD CONSTRAINT CK_curso_cerrado CHECK (cerrado IN (0,1));

ALTER TABLE metodologia
ADD CONSTRAINT CK_metodologia_metodologia CHECK (metodologia IN ('presencial','noPresencial'));


----------PRIMARY KEY----------

--PK candidato--

ALTER TABLE candidato
ADD CONSTRAINT PK_candidato PRIMARY KEY (correo);

ALTER TABLE posee
ADD CONSTRAINT PK_posee PRIMARY KEY (correoCandidato, nombreCortoH);

--PK habilidades--

ALTER TABLE habilidad
ADD CONSTRAINT PK_habilidad PRIMARY KEY (nombreCorto);

--PK planFormacion--

ALTER TABLE planFormacion
ADD CONSTRAINT PK_planFormacion PRIMARY KEY (numero);

ALTER TABLE tienPrioridad
ADD CONSTRAINT PK_tienPrioridad PRIMARY KEY (nombreCortoH, numeroPF);

--PK avance--

ALTER TABLE avance
ADD CONSTRAINT PK_avance PRIMARY KEY (numero);

--PK curso--

ALTER TABLE curso
ADD CONSTRAINT PK_curso PRIMARY KEY (codigo);

ALTER TABLE metodologia
ADD CONSTRAINT PK_metodologia PRIMARY KEY (metodologia, codigoCurso);

ALTER TABLE forma
ADD CONSTRAINT PK_forma PRIMARY KEY (nombreCortoH, codigoCurso);


----------UNIQUE CONSTRAINT----------

ALTER TABLE planFormacion ADD CONSTRAINT UK_planFormacion_evaluador
      UNIQUE (evaluador);

      
----------FOREIGN KEY----------

--FK candidato--

ALTER TABLE posee
ADD CONSTRAINT FK_posee_candidato
   FOREIGN KEY (correoCandidato)
   REFERENCES candidato (correo);

ALTER TABLE posee
ADD CONSTRAINT FK_posee_habilidad
   FOREIGN KEY (nombreCortoH)
   REFERENCES habilidad (nombreCorto);

--FK planFormacion--

ALTER TABLE planFormacion
ADD CONSTRAINT FK_planFormacion_candidato
   FOREIGN KEY (correoCandidato)
   REFERENCES candidato (correo);
   
ALTER TABLE tienPrioridad
ADD CONSTRAINT FK_tienPrioridad_habilidad
   FOREIGN KEY (nombreCortoH)
   REFERENCES habilidad (nombreCorto);
   
ALTER TABLE tienPrioridad
ADD CONSTRAINT FK_tienPrioridad_planFormacion
   FOREIGN KEY (numeroPF)
   REFERENCES planFormacion (numero);

--FK avance--

ALTER TABLE avance
ADD CONSTRAINT FK_avance_curso
   FOREIGN KEY (codigoCurso)
   REFERENCES curso (codigo);
   
ALTER TABLE avance
ADD CONSTRAINT FK_avance_planFormacion
   FOREIGN KEY (numeroPF)
   REFERENCES planFormacion (numero);

--FK curso--

ALTER TABLE curso
ADD CONSTRAINT FK_curso_habilidad
   FOREIGN KEY (nombreCortoH)
   REFERENCES habilidad (nombreCorto);

ALTER TABLE metodologia
ADD CONSTRAINT FK_metodologia_curso
   FOREIGN KEY (codigoCurso)
   REFERENCES curso (codigo);

ALTER TABLE forma
ADD CONSTRAINT FK_forma_habilidad
   FOREIGN KEY (nombreCortoH)
   REFERENCES habilidad (nombreCorto);
   
ALTER TABLE forma
ADD CONSTRAINT FK_forma_curso
   FOREIGN KEY (codigoCurso)
   REFERENCES curso (codigo);


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


----------Consultas-----------

--Consultar cursos para una habilidad específica--
SELECT x.nombre
FROM curso x, habilidad y
WHERE x.nombreCortoH = y.nombreCorto AND y.nombreCorto = 'programar'; /*por ejemplo 'programar'*/
--Consultar estado de formación por habilidades--
SELECT nombreCorto, COUNT(x.nombreCortoH), COUNT(y.correoCandidato) --#########FALTA########--
FROM habilidad, curso x, candidato, posee y
WHERE x.nombreCortoH = nombreCorto AND nombreCorto = y.nombreCortoH AND correo = y.correoCandidato
GROUP BY nombreCorto;
--Consultar información de candidatos--
SELECT nombres, nombreCortoH AS habilidad, correo
FROM candidato x, posee y
WHERE x.correo = y.correoCandidato;
--INVENTAR CONSULTA NUEVA es la última de Junta Administradora--
--Consultar posibles cursos a inscribir--


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
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('3/May/2018'),'activo','anadiaz@yahoo.es',TO_DATE('28/August/2018'),'gualdronsito@hotmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('5/July/2018'),'activo','hector_gonzalez@hotmail.com',TO_DATE('20/August/2018'),'pepito@hotmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('2/April/2018'),'activo','carlitos_@gmail.com',TO_DATE('22/April/2018'),'pepita@hotmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('10/May/2018'),'activo','juan_@gmail.com',TO_DATE('28/April/2018'),'nataliaplc@gmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('1/June/2018'),'activo','camila__@hotmail.com',TO_DATE('22/April/2018'),'diego_cardenas@hotmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('3/May/2018'),'activo','juanalol@gmail.com',TO_DATE('25/April/2018'),'alejoguzm@hotmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('10/April/2018'),'activo','sergioarb_@gmail.com',TO_DATE('22/April/2018'),'camilacano@yahoo.es');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('10/April/2018'),'activo','camilo__@gmail.com',TO_DATE('22/April/2018'),'vale_gon@hotmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('10/May/2018'),'activo','sarapupo@yahoo.es',TO_DATE('27/April/2018'),'davidsaa@hotmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('2/April/2018'),'activo','juliana@gmail.com',TO_DATE('22/April/2018'),'luisabmdez@gmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('10/May/2018'),'activo','david_@hotmail.com',TO_DATE('22/April/2018'),'joseduran@gmail.com');
INSERT INTO planFormacion VALUES(tsecuencia.NextVal,TO_DATE('3/May/2018'),'activo','pabloneruda@yahoo.es',TO_DATE('22/April/2018'),'santiago_rocha_@hotmail.com');
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
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('3/July/2018'),'alto','1',1);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('5/August/2018'),'medio','2',2);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('2/May/2018'),'bajo','3',3);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('1/June/2018'),'bajo','5',4);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('1/August/2018'),'alto','4',5);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('3/July/2018'),'alto','1',6);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('10/August/2018'),'alto','6',7);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('10/August/2018'),'alto','6',8);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('1/June/2018'),'bajo','5',9);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('2/May/2018'),'bajo','3',10);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('1/June/2018'),'alto','5',11);
INSERT INTO avance VALUES(tsecuenciaAvance.NextVal,TO_DATE('3/July/2018'),'alto','1',12);
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