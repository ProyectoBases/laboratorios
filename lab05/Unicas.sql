----------UNIQUE CONSTRAINT----------

ALTER TABLE planFormacion ADD CONSTRAINT UK_planFormacion_evaluador
      UNIQUE (evaluador);