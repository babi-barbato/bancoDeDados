-- Criar as tabelas
create table atleta ( idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);

-- Inserir dados da tabela
insert into atleta values (1,'Julia Almeida','Futebol','3'),
(2,'Bárbara Barbato','Futebol','6'),
(3,'Marco Antonio','Futebol','2'),
(4,'Claudia Oliveira','Natação','4'),
(5,'Thiago Menezes','Natação','8'),
(6,'Giovana Cardoso','Basquete','5'),
(7,'Guilherme Alves','Basquete','8'),
(8,'Paloma Ribeiro','Volei','1'),
(9,'Nicolas Santos','Volei','1'),
(10,'Jose Castro','Surf','5');

-- Exibir todos os dados da tabela.
select * from atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
select nome,qtdMedalha from atleta;

-- Exibir apenas as modalidades e os nomes dos atletas, nessa ordem.
select modalidade,nome from atleta;

-- Exibir os dados dos atletas de uma determinada modalidade.
select * from atleta where modalidade = 'Futebol';

-- Exibir os dados dos atletas que tenham 3 medalhas ou mais.
select * from atleta where qtdMedalha >= 3;

-- Exibir os dados dos atletas cujo idAtleta seja menor do que um determinado valor.
select * from atleta where idAtleta <= 4;

-- Exibir apenas os nomes dos atletas de uma determinada modalidade.
select nome from atleta where modalidade = 'volei';

-- Exibir os dados dos atletas cujo idAtleta esteja entre um valor e outro (por exemplo,entre 3 e 7).
select * from atleta where idAtleta between 2 and 5;

-- Exibir os dados de todos os atletas cujo idAtleta seja diferente de um determinado valor.
select * from atleta where idAtleta <> 8;

-- Exibir os dados da tabela ordenados pela modalidade.
select * from atleta order by modalidade;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
select * from atleta order by qtdMedalha desc;

-- Exibir os dados da tabela, dos atletas cujo nome contenha uma determinada letra.
select * from atleta where nome like '%e%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
select * from atleta where nome like 'J%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com uma determinada letra.
select * from atleta where nome like '%a';

-- Exibir os dados da tabela, dos atletas cujo nome tenha uma determinada letra como penúltima letra.
select * from atleta where nome like '%r_';

-- Altere a quantidade de medalhas de um atleta.
update atleta set qtdMedalha = '4' where idAtleta = 9;

-- Altere o nome e a quantidade de medalhas de um atleta.
update atleta set qtdMedalha = '4', nome = 'Mateu Gonsa' where idAtleta = 10;

-- Exclua um atleta.
delete from atleta where idAtleta = 1;

-- Eliminar a tabela.
drop table atleta;