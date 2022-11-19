use cadastro;

/* 1. Uma lista com o nome de todas as gafanhotas */
SELECT nome FROM gafanhotos WHERE sexo='F';

/* 2. Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015*/
SELECT * FROM gafanhotos WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';

/*3. Uma lista com o nome de todos os homens que trabalham como programadores*/
SELECT nome FROM gafanhotos WHERE sexo='M' and profissao='Programador';

/*4. Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J*/
SELECT * FROM gafanhotos WHERE sexo='F' and nacionalidade='Brasil' and nome LIKE 'J%';

/*5. Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 kg*/
SELECT nome, nacionalidade FROM gafanhotos WHERE nome LIKE '%Silva%' and nacionalidade!='Brasil' and peso<'100';

/*6. Qual é a maior altura entre gafanhots homens que moram no Brasil?*/
SELECT MAX(altura) FROM gafanhotos WHERE sexo='M' and nacionalidade='Brasil'; 

/*7. Qual é a média de peso dos ganhotos cadastrados?*/
SELECT AVG(peso) FROM gafanhotos;

/*8. Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?*/
SELECT MIN(peso) FROM gafanhotos WHERE sexo='F' and nacionalidade!='Brasil' and nascimento BETWEEN '1990-01-01' and '2000-12-31';

/*9. Quantas gafanhotos mulheres têm mais de 1.90m de altura?*/
SELECT count(*) FROM gafanhotos WHERE sexo='F' and altura>'1.90';

