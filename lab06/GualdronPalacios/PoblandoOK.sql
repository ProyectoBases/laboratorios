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
INSERT INTO candidato VALUES('yoha_toro@hotmail.com','yohanna toro');
INSERT INTO candidato VALUES('ricardogarc@hotmail.com','ricardo garcia');

--habilidad--
INSERT INTO habilidad VALUES('programar','programacion de objetos');
INSERT INTO habilidad VALUES('modelarBD','modelar bases de datos');
INSERT INTO habilidad VALUES('gestionar','gestionar proyectos');
INSERT INTO habilidad VALUES('liderazgo','direccion de proyectos');
INSERT INTO habilidad VALUES('modelarUML','modelado UML');
INSERT INTO habilidad VALUES('normalizar','normalizacion de bases de datos');
INSERT INTO habilidad VALUES('surfear','truco en las olas');

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
INSERT INTO posee VALUES('yoha_toro@hotmail.com','programar');
INSERT INTO posee VALUES('ricardogarc@hotmail.com','modelarBD');

--curso--
INSERT INTO curso VALUES('1','python2','aprende python 2',0,'programar',
'<?xml version="1.0"?>
<tDetalle>
  <cupos cantidadMaxima="20" cantidadMinima="4"></cupos>
  <descripcion> En este curso se va a profundizar en las estructuras de datos en python 2
  </descripcion>
  <requisitos> Tener conocimiento de algun lenguaje de programacion
  </requisitos>
  <duracion meses="2"></duracion>
  <perfil titulo="Programador en python 2"></perfil>
</tDetalle>');
INSERT INTO curso VALUES('2','MBDA','mejora habilidades de modelacion bd',0,'modelarBD',
'<?xml version="1.0"?>
<tDetalle>
  <cupos cantidadMaxima="15" cantidadMinima="5"></cupos>
  <descripcion> En este curso se va a profundizar en el modelado de bases de datos enfocandonos en la parte fisica
  </descripcion>
  <requisitos> Saber el modelado conceptual y logico en un nivel medio-alto
  </requisitos>
  <duracion meses="6"></duracion>
  <perfil titulo="Modelador de bases de datos"></perfil>
</tDetalle>');
INSERT INTO curso VALUES('3','GPRO','mejora tus habilidades de gestionar',1,'gestionar',
'<?xml version="1.0"?>
<tDetalle>
  <cupos cantidadMaxima="13" cantidadMinima="4"></cupos>
  <descripcion> En este curso se va a tratar de mejorar las habilidades para coordinar un equipo, tácticas para la toma de decisiones, etc
  </descripcion>
  <requisitos> Tener experiencia en administracion de empresas
  </requisitos>
  <duracion meses="5"></duracion>
  <perfil titulo="Gestor de proyectos"></perfil>
</tDetalle>');
INSERT INTO curso VALUES('4','LPRO','refuerza tu habilidad en direccion de proyectos',0,'liderazgo',
'<?xml version="1.0"?>
<tDetalle>
  <cupos cantidadMaxima="15" cantidadMinima="5"></cupos>
  <descripcion> En este curso se va a tratar de mejorar las habilidades para liderar un equipo, como aprovechar mejor las habilidades de los subordinados, etc
  </descripcion>
  <requisitos> Tener experiencia en administracion de empresas
  </requisitos>
  <duracion meses="4"></duracion>
  <perfil titulo="Director de proyectos"></perfil>
</tDetalle>');
INSERT INTO curso VALUES('5','MUML','mejora tus habilidades de modelado UML',1,'modelarUML',
'<?xml version="1.0"?>
<tDetalle>
  <cupos cantidadMaxima="25" cantidadMinima="5"></cupos>
  <descripcion> En este curso se va a profundizar en el modelado UML y como saber aprovecharlo para la solucion de problemas informaticos
  </descripcion>
  <requisitos> Tener algun conocimiento de UML
  </requisitos>
  <duracion meses="6"></duracion>
  <perfil titulo="Modelador UML"></perfil>
</tDetalle>');
INSERT INTO curso VALUES('6','NMBD','mejora tus habilidades para normalizacion',1,'normalizar',
'<?xml version="1.0"?>
<tDetalle>
  <cupos cantidadMaxima="25" cantidadMinima="6"></cupos>
  <descripcion> En este curso se va a profundizar en designar y aplicar una serie de reglas a las relaciones obtenidas tras el paso del modelo entidad-relación al modelo relacional
  </descripcion>
  <requisitos> Saber modelar bases de datos
  </requisitos>
  <duracion meses="7"></duracion>
  <perfil titulo="Normalizador de bases de datos"></perfil>
</tDetalle>');
INSERT INTO curso VALUES('7','TELO','mejora tus habilidades para surfear',1,'surfear',
'<?xml version="1.0"?>
<tDetalle>
  <cupos cantidadMaxima="10" cantidadMinima="3"></cupos>
  <descripcion> En este curso se aprenderan las tecnicas para los giros en las olas
  </descripcion>
  <requisitos> No temerle al mar
  </requisitos>
  <duracion meses="6"></duracion>
  <perfil titulo="Surfista"></perfil>
</tDetalle>');

--planFormacion--
INSERT INTO planFormacion VALUES(0,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','anadiaz@yahoo.es',TO_DATE('5-1-2018','DD-MM-YYYY'),'gualdronsito@hotmail.com');
INSERT INTO planFormacion VALUES(1,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','hector_gonzalez@hotmail.com',TO_DATE('5-1-2018','DD-MM-YYYY'),'pepito@hotmail.com');
INSERT INTO planFormacion VALUES(2,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','carlitos_@gmail.com',TO_DATE('5-1-2018','DD-MM-YYYY'),'pepita@hotmail.com');
INSERT INTO planFormacion VALUES(3,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','juan_@gmail.com',TO_DATE('5-1-2018','DD-MM-YYYY'),'nataliaplc@gmail.com');
INSERT INTO planFormacion VALUES(4,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','camila__@hotmail.com',TO_DATE('5-1-2018','DD-MM-YYYY'),'diego_cardenas@hotmail.com');
INSERT INTO planFormacion VALUES(5,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','juanalol@gmail.com',TO_DATE('5-1-2018','DD-MM-YYYY'),'alejoguzm@hotmail.com');
INSERT INTO planFormacion VALUES(6,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','sergioarb_@gmail.com',TO_DATE('5-1-2018','DD-MM-YYYY'),'camilacano@yahoo.es');
INSERT INTO planFormacion VALUES(7,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','camilo__@gmail.com',TO_DATE('5-1-2018','DD-MM-YYYY'),'vale_gon@hotmail.com');
INSERT INTO planFormacion VALUES(8,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','sarapupo@yahoo.es',TO_DATE('5-1-2018','DD-MM-YYYY'),'davidsaa@hotmail.com');
INSERT INTO planFormacion VALUES(9,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','juliana@gmail.com',TO_DATE('5-1-2018','DD-MM-YYYY'),'luisabmdez@gmail.com');
INSERT INTO planFormacion VALUES(10,TO_DATE('5-1-2018','DD-MM-YYYY'),'activo','david_@hotmail.com',TO_DATE('5-1-2018','DD-MM-YYYY'),'joseduran@gmail.com');
INSERT INTO planFormacion VALUES(11,TO_DATE('5-1-2018','DD-MM-YYYY'),'en diseno','pabloneruda@yahoo.es',TO_DATE('5-1-2018','DD-MM-YYYY'),'santiago_rocha_@hotmail.com');

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
INSERT INTO avance VALUES(1,TO_DATE('5-1-2018','DD-MM-YYYY'),'alto','1',1);
INSERT INTO avance VALUES(2,TO_DATE('5-1-2018','DD-MM-YYYY'),'medio','2',2);
INSERT INTO avance VALUES(3,TO_DATE('5-1-2018','DD-MM-YYYY'),'bajo','3',3);
INSERT INTO avance VALUES(4,TO_DATE('5-1-2018','DD-MM-YYYY'),'bajo','5',4);
INSERT INTO avance VALUES(5,TO_DATE('5-1-2018','DD-MM-YYYY'),'alto','4',5);
INSERT INTO avance VALUES(6,TO_DATE('5-1-2018','DD-MM-YYYY'),'alto','1',6);
INSERT INTO avance VALUES(7,TO_DATE('5-1-2018','DD-MM-YYYY'),'alto','6',7);
INSERT INTO avance VALUES(8,TO_DATE('5-1-2018','DD-MM-YYYY'),'alto','6',8);
INSERT INTO avance VALUES(9,TO_DATE('5-1-2018','DD-MM-YYYY'),'bajo','5',9);
INSERT INTO avance VALUES(10,TO_DATE('5-1-2018','DD-MM-YYYY'),'bajo','3',10);
INSERT INTO avance VALUES(11,TO_DATE('5-1-2018','DD-MM-YYYY'),'alto','5',11);

--tienePrioridad--
INSERT INTO tienePrioridad VALUES('alta','programar',1);
INSERT INTO tienePrioridad VALUES('alta','modelarUML',4);
INSERT INTO tienePrioridad VALUES('alta','modelarUML',9);
INSERT INTO tienePrioridad VALUES('alta','modelarUML',11);
INSERT INTO tienePrioridad VALUES('media','normalizar',7);
INSERT INTO tienePrioridad VALUES('media','normalizar',8);
INSERT INTO tienePrioridad VALUES('baja','modelarBD',2);
INSERT INTO tienePrioridad VALUES('media','gestionar',3);
INSERT INTO tienePrioridad VALUES('media','gestionar',10);
INSERT INTO tienePrioridad VALUES('alta','liderazgo',5);