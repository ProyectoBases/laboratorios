--Asumiendo que uno de sus compañeros del curso (no del equipo) es el representante de la Junta, otorguen los permisos correspondientes--

GRANT EXECUTE ON PA_JUNTA TO bd2127790;

--CREAMOS EL ROL CANDIDATOS--
CREATE ROLE Candidatoos;
--DAMOS PERMISOS AL ROL CANDIDATOS--
GRANT EXECUTE ON PA_CANDIDATO TO Candidatoos;
--Asumiendo que dos de sus compañeros de curso (no del equipo) son candidatos, asígnenles ese rol.--

GRANT Candidatoos TO bd2125666;
GRANT Candidatoos TO 'usuario';
