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
                
CREATE TABLE tienePrioridad(prioridad VARCHAR(10) NOT NULL,
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
                    cerrado NUMBER(1) NOT NULL);

CREATE TABLE metodologia(metodologia VARCHAR(500) NOT NULL,
                        codigoCurso VARCHAR(5) NOT NULL);

CREATE TABLE forma(nombreCortoH VARCHAR(10) NOT NULL,
                    codigoCurso VARCHAR(5) NOT NULL);