--Asumiendo que uno de sus compañeros del curso (no del equipo) es el representante de la Junta, otorguen los permisos correspondientes--

GRANT EXECUTE ON PA_JUNTA TO bd2127790;

--CREAMOS EL ROL CANDIDATOS--
CREATE ROLE Candidatoos;
--DAMOS PERMISOS AL ROL CANDIDATOS--
GRANT EXECUTE ON PA_CANDIDATO TO Candidatoos;
--Asumiendo que dos de sus compañeros de curso (no del equipo) son candidatos, asígnenles ese rol.--

<<<<<<< HEAD
=======
GRANT Candidatoos TO bd2125666;
GRANT Candidatoos TO bd2135429;
>>>>>>> 2c98d3ddd608cd67c29d019d4e1b7a2b9b7ab537
