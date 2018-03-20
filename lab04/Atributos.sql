----------ATRIBUTOS----------

--Tabla planFormacion--

ALTER TABLE planFormacion
ADD CONSTRAINT CK_planFormacion_estado CHECK (estado IN ('inactivo','en diseno','activo'));

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