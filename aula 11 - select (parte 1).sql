USE cadastro;

SELECT * FROM gafanhotos;

SELECT * FROM cursos;

SELECT * FROM cursos ORDER BY nome DESC;

SELECT ano, nome, carga FROM cursos ORDER BY ano, nome;

SELECT * FROM cursos WHERE ano='2016' ORDER BY nome;

SELECT nome, carga FROM cursos WHERE ano='2016' ORDER BY nome;

SELECT nome, descricao, ano FROM cursos WHERE ano <= '2015' ORDER BY ano, nome;

SELECT nome, ano FROM cursos WHERE ano BETWEEN 2014 AND 2016 ORDER BY ano DESC, nome ASC;

SELECT nome, descricao, ano FROM cursos WHERE ano in (2014, 2016, 2020) ORDER BY ano;

SELECT nome, carga, totaulas FROM cursos WHERE carga > 35 AND totaulas < 30;