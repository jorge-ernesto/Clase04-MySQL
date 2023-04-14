USE php1g10;
SELECT * FROM agenda;
SELECT paterno,nombre FROM agenda;

SELECT id, CONCAT_WS(' ',paterno, materno,nombre) AS persona FROM agenda;

UPDATE agenda SET nombre='María Inés' WHERE id=1
UPDATE agenda SET nombre='Bertha' WHERE id=3
UPDATE agenda SET nombre='César Martín' WHERE id=2

DELETE FROM agenda WHERE id=3

/*
INSERT INTO agenda(paterno,materno,nombre,fnacimiento) 
VALUES('rojas','GONzaLeS','María Inés','1985-12-29') ;
*/

/*
INSERT INTO agenda(paterno,materno,nombre,fnacimiento) 
VALUES('López','camPOS','César Martín','1992-05-13') ;
*/