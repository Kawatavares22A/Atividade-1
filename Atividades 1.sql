use avaliacao_22a;
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ('The Fictional History of the World', 'John Doe', 2022, TRUE, 'História', '978-1234567890', 'Editora XYZ', 500, 'Português');

UPDATE Livros
SET disponivel = FALSE
WHERE ano_publicacao < 2000;

update Livros
set editora = 'Plume Books'
where titulo = '1984';

update Livros
set idioma = 'Inglês'
where editora = 'Penguin Books';

 UPDATE Livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE isbn = '978-0439708180';

 DELETE FROM Livros
WHERE categoria = 'Terror';
 DELETE FROM Livros
WHERE idioma = 'Francês' AND ano_publicacao < 1970;

DELETE FROM Livros
WHERE titulo = 'As Crônicas de Nárnia';

 DELETE FROM Livros
WHERE editora = 'Penguin Books';

 SELECT * FROM Livros
WHERE quantidade_paginas > 500;

 SELECT categoria, COUNT(*) as total
FROM Livros
GROUP BY categoria;

 SELECT * FROM Livros
LIMIT 5;

 SELECT SUM(quantidade_paginas) as total_paginas, AVG(quantidade_paginas) as avg_paginas
FROM Livros
WHERE categoria = 'Drama';

 SELECT AVG(ano_publicacao) as avg_ano
FROM Livros
WHERE disponivel = TRUE;

SELECT MAX(ano_publicacao) as max_ano, MIN(ano_publicacao) as min_ano
FROM Livros;

 SELECT * FROM Livros
ORDER BY ano_publicacao DESC;

 (SELECT titulo FROM Livros WHERE idioma = 'Inglês')
UNION
(SELECT titulo FROM Livros WHERE idioma = 'Português');
 
 SELECT * FROM Livros
WHERE autor = 'George Orwell';