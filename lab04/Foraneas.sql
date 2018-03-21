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
   
ALTER TABLE tienePrioridad
ADD CONSTRAINT FK_tienePrioridad_habilidad
   FOREIGN KEY (nombreCortoH)
   REFERENCES habilidad (nombreCorto);
   
ALTER TABLE tienePrioridad
ADD CONSTRAINT FK_tienePrioridadPlanFormacion
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