USE cadastro;

DESC gafanhotos;

ALTER TABLE gafanhotos ADD COLUMN cursopreferido int;

ALTER TABLE gafanhotos ADD FOREIGN KEY (cursopreferido) REFERENCES cursos(idcurso);
 
SELECT * FROM gafanhotos;
SELECT * FROM cursos;

UPDATE gafanhotos set cursopreferido='6' where id='1';

DELETE FROM cursos WHERE idcurso='6';

DELETE FROM cursos WHERE idcurso='28';

SELECT nome, cursopreferido FROM gafanhotos;

SELECT nome, ano FROM cursos;

SELECT gafanhotos.nome, cursos.nome, cursos.ano FROM gafanhotos 
JOIN cursos ON cursos.idcurso=gafanhotos.cursopreferido
ORDER BY gafanhotos.nome;

SELECT g.nome, c.nome, c.ano FROM gafanhotos AS g JOIN cursos AS C ON c.idcurso=g.cursopreferido
ORDER BY g.nome;

SELECT g.nome, c.nome, c.ano FROM gafanhotos AS g RIGHT OUTER JOIN cursos AS C ON c.idcurso=g.cursopreferido;