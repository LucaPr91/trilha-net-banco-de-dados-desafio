--1 - Buscar o nome e ano dos filmes
SELECT 
	Nome,
	ano
from [Filmes]

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	Nome,
	Ano,
	Duracao
from Filmes
ORDER BY Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
	Nome,
	Ano,
	Duracao
from Filmes
where nome = 'De Volta para o Futuro'


--4 - Buscar os filmes lançados em 1997
SELECT
	Nome,
	Ano,
	duracao
FROM Filmes
WHERE Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT
	Nome,
	Ano,
	duracao
FROM Filmes
WHERE Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
	Nome,
	Ano,
	duracao
FROM Filmes
WHERE duracao > 100 and duracao < 150
order by duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano,
		COUNT(Nome) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero
SELECT
	F.Nome,
	G.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg on f.Id = fg.IdFilme
INNER JOIN Generos g on g.Id = fg.IdGenero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
	F.Nome,
	G.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg on f.Id = fg.IdFilme
INNER JOIN Generos g on g.Id = fg.IdGenero
WHERE G.Genero = 'Mistério' 

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	F.NOME,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes F
INNER join ElencoFilme EF ON F.ID = EF.IdFilme
INNER join Atores A ON A.ID = EF.IdAtor

