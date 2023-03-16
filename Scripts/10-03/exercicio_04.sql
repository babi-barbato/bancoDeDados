-- criar banco de dados
create database Aluno;

-- criar tabela empresa;
create table empresa (idEmpresa int primary key auto_increment,
nomeEmpresa varchar(40),
representante varchar(40)
);
-- criar tabela escola;
create table escola (idEscola int primary key auto_increment,
nomeEscola varchar(40),
bairro varchar(60)
);

-- criar tabela aluno
create table aluno (ra int primary key auto_increment,
nome varchar(40),
hobby varchar(40),
fkEmpresa int,
foreign key (fkEmpresa) references Empresa(idEmpresa), -- foregin key (var) references tabela(idTabela)
fkEscola int,
foreign key (fkEscola) references Escola(idEscola)
);

-- inserir valores da empresa
insert into empresa values (null, "C6 Bank", "Bárbara");
insert into empresa values (null, "Stefanini", "Camila");
insert into empresa values (null, "Logically", "Érika");
insert into empresa values (null, "Box Delivery", "Júlia");
select * from empresa;

-- inserir valores da escola
insert into escola values (null, "Colégio USCS", "Santo Antônio"),
(null, "ETEC Getulio Vargas", "Ipiranga"),
(null, "Colégio Objetivo", "Boa Vista"),
(null, "ETEC Jorge Street", "Jardim Sao Caetano");
select * from escola;

-- inserir valores dos alunos
insert into aluno values (null, "Bárbara Barbato", "Jogar Bola", 2, 1);
insert into aluno values (null, "João Almeida", "Assistir TV", 3, 4),
(null, "Felipe Costa", "Dormir", 1, 3),
(null, "Julia Martins", "Jogar Video Game", 3, 2),
(null, "Mateu dos Santos", "Assistir Netflix", 4, 1),
(null, "Gabriel Silva", "Sair com amigos", 1, 2);

-- mostrar os valores
select aluno.*,nomeEmpresa,representante,nomeEscola,bairro  from aluno,escola,empresa where fkEmpresa = idEmpresa and fkEscola = idEscola;
