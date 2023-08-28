SELECT titulo FROM livros; /*Exercício 1*/

SELECT nome FROM autores WHERE nascimento < '1900-01-01'; /*Exercício 2*/

SELECT livros.titulo FROM livros INNER JOIN autores ON livros.autor_id = autores.id AND autores.nome = 'J.K. Rowling'; /*Exercício 3*/

SELECT alunos.nome FROM alunos INNER JOIN matriculas ON alunos.id = matriculas.aluno_id AND matriculas.curso = 'Engenharia de Software'; /*Exercício 4*/

SELECT produto, SUM(receita) as soma_receita FROM vendas GROUP BY produto; /*Exercício 5*/

SELECT nome, COUNT(*) as total_livros FROM autores INNER JOIN livros ON livros.autor_id = autores.id GROUP BY nome; /*Exercício 6*/

SELECT matriculas.curso, COUNT(alunos.id) AS total_alunos FROM matriculas INNER JOIN alunos ON matriculas.aluno_id = alunos.id GROUP BY curso; /*Exercício 7*/

SELECT vendas.produto, AVG(receita) as media_receita FROM vendas GROUP BY produto; /*Exercício 8*/

SELECT produto, SUM(receita) AS receita_total FROM vendas GROUP BY produto HAVING SUM(receita) > 10000; /*Exercício 9*/

SELECT nome, COUNT(*) as total_livros FROM autores INNER JOIN livros ON livros.autor_id = autores.id GROUP BY nome HAVING COUNT(*) > 2; /*Exercício 10*/

SELECT livros.titulo, autores.nome FROM livros LEFT JOIN autores ON livros.autor_id = autores.id; /*Exercício 11*/

SELECT alunos.nome, matriculas.curso FROM alunos LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id; /*Exercício 12*/

SELECT autores.nome, livros.titulo FROM autores LEFT JOIN livros ON livros.autor_id = autores.id; /*Exercício 13*/

SELECT matriculas.curso, alunos.nome FROM alunos RIGHT JOIN matriculas ON matriculas.aluno_id = alunos.id; /*Exercício 14*/
