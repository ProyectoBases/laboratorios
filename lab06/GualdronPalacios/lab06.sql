----------CICLO UNO. E.----------

----Tabla Candidato---
CREATE TABLE candidato(correo VARCHAR(50) NOT NULL,
                        nombres VARCHAR(50) NOT NULL);
---Importacion de Personas---
CREATE VIEW importacion AS
SELECT mail, CONCAT(nombres,CONCAT(' ',apellidos)) AS nombres FROM MBDAA01.PERSONAS
GROUP BY mail, CONCAT(nombres,CONCAT(' ',apellidos));
---Importacion a Candidato---
INSERT INTO candidato (SELECT * FROM importacion WHERE mail != 'diana.martinez-tmail.escuelaing.edu.co');