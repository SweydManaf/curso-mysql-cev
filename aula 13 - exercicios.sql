 USE cadastro;
 SELECT * FROM gafanhotos;
 
 /*1. Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos*/
 SELECT profissao, count(*) FROM gafanhotos GROUP BY profissao; 
 
 /*2. Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005?*/
 SELECT sexo, count(*) FROM gafanhotos WHERE nascimento>'2005-01-01' GROUP BY sexo;
 
 /*3. Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de oigem 
 e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3 gafanhotos
 com essa nacionalidade.*/
 SELECT nacionalidade, count(*) FROM gafanhotos WHERE nacionalidade!='Brasil' GROUP BY nacionalidade HAVING count(*)>3;
 
/*4. Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e 
 que estão acima da média de altura de todos os cadastrados*/
SELECT altura, peso, count(*) FROM gafanhotos WHERE peso>100 GROUP BY altura HAVING altura>(SELECT AVG(altura) FROM gafanhotos);