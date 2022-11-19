USE cadastro;

CREATE TABLE gafanhoto_assiste_curso (
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    PRIMARY KEY(id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
)  DEFAULT charset=utf8;

INSERT INTO gafanhoto_assiste_curso VALUES (default, '2014-03-01', '1','2');

SELECT * FROM gafanhoto_assiste_curso;

SELECT g.nome, idcurso FROM gafanhotos g join gafanhoto_assiste_curso a 
on g.id=a.idgafanhoto ORDER BY g.nome;

SELECT g.nome, c.nome FROM gafanhotos g join gafanhoto_assiste_curso a 
on g.id=a.idgafanhoto JOIN cursos c ON c.idcurso=a.idcurso ORDER BY g.nome;