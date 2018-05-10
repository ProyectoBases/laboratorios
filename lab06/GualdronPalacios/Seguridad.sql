--Asumiendo que uno de sus compañeros del curso (no del equipo) es el representante de la Junta, otorguen los permisos correspondientes--
GRANT SELECT ON planFormacion TO bd2127790;
GRANT UPDATE ON planFormacion TO bd2127790;
GRANT INSERT ON planFormacion TO bd2127790;

GRANT SELECT ON tienePrioridad TO bd2127790;
GRANT UPDATE ON tienePrioridad TO bd2127790;
GRANT INSERT ON tienePrioridad TO bd2127790;

GRANT SELECT ON curso TO bd2127790;
GRANT UPDATE ON curso TO bd2127790;
GRANT INSERT ON curso TO bd2127790;
GRANT DELETE ON curso TO bd2127790;

GRANT SELECT ON candidato TO bd2127790;
GRANT INSERT ON candidato TO bd2127790;

GRANT EXECUTE ON PA_JUNTA TO bd2127790;

--CREAMOS EL ROL CANDIDATOS--
CREATE ROLE Candidatoss;
--DAMOS PERMISOS AL ROL CANDIDATOS--
GRANT SELECT ON candidato TO candidatoss;
GRANT UPDATE ON candidato TO candidatoss;
GRANT INSERT ON candidato TO candidatoss;
GRANT EXECUTE ON PA_CANDIDATO TO Candidatoss;
--Asumiendo que dos de sus compañeros de curso (no del equipo) son candidatos, asígnenles ese rol.--


GRANT Candidatoss TO bd2125666;
GRANT Candidatoss TO bd2135429;
