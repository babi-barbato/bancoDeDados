-- Criar tabelas
create table musica (idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

-- Inserir dados da tabela
insert into musica values (1,'Enchanted','Taylor Swift','pop'),
(2,'Bad blood','Taylor Swift','pop'),
(3,'Animals','Maroon 5','pop'),
(4,'Deixa em off','Turma do Pagode','pagode'),
(5,'Lancinho','Turma do Pagode','pagode'),
(6,'Até que durou','Menos é mais','pagode'),
(7,'Evoque Prata','Mc Menor HR','funk');

-- a) Exibir todos os dados da tabela.
select * from musica;

-- b) Exibir apenas os títulos e os artistas das músicas.
select titulo,artista from musica;

-- c) Exibir apenas os gêneros e os artistas, nessa ordem.
select genero,artista from musica;

-- d) Exibir os dados das músicas de um determinado gênero.
select * from musica where genero like 'pop';

-- e) Exibir os dados das músicas de um determinado artista.
select * from musica where artista like 'Turma do Pagode';

-- f) Exibir apenas os títulos das músicas de um determinado gênero.
select titulo from musica where genero like 'pagode';

-- g) Exibir apenas os títulos e o gênero das músicas de um determinado artista.
select titulo,genero from musica where artista like 'Taylor Swift';

-- h) Exibir os dados das músicas cujo idMusica esteja entre um valor e outro (por exemplo, entre 2 e 5).
select * from musica where idMusica between 2 and 5;

-- i) Exibir os dados das músicas cujo idMusica seja menor ou igual a um valor.
select * from musica where idMusica <= 3;

-- j) Exibir os dados das músicas cujo idMusica seja maior do que um valor.
select * from musica where idMusica > 4;

-- k) Exibir os dados das músicas cujo idMusica seja diferente de 2 valores, como 2 e 5, por exemplo.
select * from musica where idMusica <> 2 and idMusica <> 5;

-- l) Exibir os dados da tabela ordenados pelo título da música.
select * from musica order by titulo;

-- m) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
select * from musica order by artista desc;

-- n) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
select * from musica where titulo like 'a%';

-- o) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
select * from musica where artista like '%t';

-- p) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
select * from musica where genero like '_a%';

-- q) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
select * from musica where titulo like '%o_';

-- r) Altere o gênero de uma música.
update musica set genero = 'pop' where idMusica = 7;

-- s) Altere o nome do artista e o gênero de uma música.
update musica set genero = 'funk', artista = 'Xororó' where idMusica = 5;

-- t) Exclua uma música da tabela.
delete from musica where idMusica = 2;

-- u) Elimine a tabela.
drop table musica;