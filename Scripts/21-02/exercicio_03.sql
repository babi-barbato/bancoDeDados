create database Revista;

use Revista;

create table Revista (
  idRevista int primary key,
  nome varchar(50),
  categoria varchar(30)
);

insert into Revista (idRevista,nome)  values 
	(1,"Quatro Rodas"),
	(2,"Epoca"),
	(3,"Veja "),
    (4,"isto é");
    
-- Exibir todos os dados da tabela.
select * from revista;

-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.
update Revista set categoria = "Jornal" where idRevista = 3;
update Revista set categoria = "Jornal" where idRevista = 4;
update Revista set categoria = "Carros" where idRevista = 1;
update Revista set categoria = "Geral" where idRevista = 2;
select * from revista;

-- Insira mais 3 registros completos. Exibir novamente os dados da tabela.
insert into Revista  values 
	(5,"Caras", "Fofoca"),
	(6,"OFuxico", "Fofoca"),
	(7,"Autoesporte", "Carros");
select * from revista;

-- Exibir a descrição da estrutura da tabela.
desc revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres. Exibir novamente a descrição da estrutura da tabela
alter table Revista modify column categoria varchar(40);
desc revista;

-- Renomeie a coluna nome para nomeRevista. Exibir novamente os dados da tabela
alter table Revista rename column nome to nomeRevista;
desc revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15). Exibir os dados da tabela.
alter table Revista add periodicidade varchar(15);
desc revista;

-- Atualize a tabela, preenchendo os valores da coluna periodicidade. Exiba novamente os dados da tabela.
update Revista set periodicidade = "mensal" where idRevista = 1;
update Revista set periodicidade = "semanal" where idRevista = 2;
update Revista set periodicidade = "semanal" where idRevista = 3;
update Revista set periodicidade = "semanal" where idRevista = 4;
update Revista set periodicidade = "mensal" where idRevista = 5;
update Revista set periodicidade = "semanal" where idRevista = 6;
update Revista set periodicidade = "mensal" where idRevista = 7;
select * from revista;

-- Insira os dados de uma nova revista, com todos os seus dados. Exiba novamente os dados da tabela.
insert into revista values (8,"Superinteressante","Científica","mensal");
select * from revista;

-- Excluir a coluna periodicidade da tabela. Exibir novamente os dados da tabela.
alter table Revista drop column periodicidade;
select * from revista;

-- Criar a tabela Editora, nesse mesmo banco de dados, com os campos: idEditora (int e chave primária), nomeEditora (varchar, tamanho 40), dataFund (tipo date – representa a data da fundação da editora – podem inventar). 
-- idEditora terá o valor inicial 1000 e será incrementado automaticamente pelo sistema)
create table editora (
   idEditora int primary key auto_increment,
   nomeEditora varchar(40),
   dataFund date
) auto_increment = 1000;  

-- Inserir dados na tabela Editora
insert into Revista  values 
	(1001,"Fundamento", "2005-10-02"),
	(1002,"Aleph", "1998-03-23"),
	(1003,"Suma", "2000-06-15");