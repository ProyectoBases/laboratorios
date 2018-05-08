--Asumiendo que uno de sus compañeros del curso (no del equipo) es el representante de la Junta, otorguen los permisos correspondientes--

GRANT EXECUTE ON PA_JUNTA TO bd2127790;

--CREAMOS EL ROL CANDIDATOS--
CREATE ROLE Candidatos_;
--DAMOS PERMISOS AL ROL CANDIDATOS--
GRANT EXECUTE ON PA_CANDIDATO TO Candidatos_;
--Asumiendo que dos de sus compañeros de curso (no del equipo) son candidatos, asígnenles ese rol.--


GRANT Candidatos_ TO bd2125666;
GRANT Candidatos_ TO bd2135429;
