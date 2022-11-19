SELECT * FROM cursos;

SELECT * FROM cursos WHERE nome LIKE 'a%';

SELECT * FROM cursos WHERE nome LIKE '%a';

SELECT * FROM cursos WHERE nome LIKE '%a%';

SELECT * FROM cursos WHERE nome NOT LIKE '%a%';

UPDATE cursos set nome='PáOO' WHERE idcurso='9';

SELECT * FROM cursos WHERE nome LIKE 'PH%P_';

SELECT * FROM cursos WHERE nome LIKE 'p__t%';

SELECT * FROM gafanhotos WHERE nome LIKE '%_silva%';

SELECT * FROM gafanhotos WHERE nome LIKE '%SILVA';

SELECT DISTINCT nacionalidade FROM gafanhotos ORDER BY nacionalidade;

SELECT COUNT(*) FROM cursos;

SELECT COUNT(*) FROM cursos WHERE carga > 40;

SELECT MAX(carga) FROM cursos;

SELECT MAX(totaulas) FROM cursos WHERE ano='2016'; 

SELECT nome, min(totaulas) FROM cursos WHERE ano='2016';

SELECT SUM(totaulas) FROM cursos WHERE ano=2016;

SELECT AVG(totaulas) FROM cursos WHERE ano=2016;