SELECT * FROM cursos;

SELECT totaulas, count(*) FROM cursos GROUP BY totaulas ORDER BY totaulas;

SELECT * FROM cursos WHERE totaulas=12;

SELECT carga, count(nome) FROM cursos WHERE totaulas=30 GROUP BY carga;

SELECT ano, count(*) FROM cursos group by ano having count(ano) >= 5 order by count(*) desc;

SELECT carga, count(*) FROM cursos WHERE ano>2015 GROUP BY carga HAVING carga>(SELECT AVG(carga) FROM cursos);