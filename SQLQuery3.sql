SELECT 
Nome, Ano 
FROM Filmes;

SELECT 
Nome, Ano 
From Filmes 
ORDER BY Ano Asc;

SELECT 
Nome, Ano, Duracao 
From Filmes 
WHERE Nome = 'De Volta para o Futuro';

SELECT 
Nome, Ano, Duracao 
FROM Filmes
WHERE Ano = 1997;

SELECT 
Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

SELECT 
Ano, count(*) AS Quantidade 
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

SELECT 
PrimeiroNome, UltimoNome, Genero 
FROM Atores 
WHERE Genero = 'M';

SELECT 
PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'F'
ORDER BY Genero ASC;


SELECT 
Filmes.Nome, Generos.Genero 
From Filmes INNER JOIN Generos
ON Filmes.ID = Generos.ID;

SELECT
Filmes.Nome, Generos.Genero FROM Filmes INNER JOIN Generos 
ON Filmes.ID = Generos.ID 
WHERE Genero = 'Mistério';

SELECT
Filmes.Nome, 
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel 
FROM Filmes 
INNER JOIN Atores
ON Filmes.ID = Atores.ID 
INNER JOIN ElencoFilme 
ON Atores.Id = ElencoFilme.IdFilme