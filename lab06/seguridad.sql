--Asumiendo que uno de sus compa�eros del curso (no del equipo) es el representante de la Junta, otorguen los permisos correspondientes--

GRANT EXECUTE ON PA_JUNTA TO bd2127790;

--CREAMOS EL ROL CANDIDATOS--
CREATE ROLE Candidatoss;
--DAMOS PERMISOS AL ROL CANDIDATOS--
GRANT EXECUTE ON PA_CANDIDATO TO Candidatos;
--Asumiendo que dos de sus compa�eros de curso (no del equipo) son candidatos, as�gnenles ese rol.--

GRANT Candidatoss TO 'usuario';
GRANT Candidatoss TO 'usuario';


