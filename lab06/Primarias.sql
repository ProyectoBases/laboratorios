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

ALTER TABLE tienePrioridad
ADD CONSTRAINT PK_tienePrioridad PRIMARY KEY (nombreCortoH, numeroPF);

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