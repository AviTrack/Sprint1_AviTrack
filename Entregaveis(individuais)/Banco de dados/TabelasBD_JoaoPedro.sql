-- BANCO 1
create database BDProjetoIndividual;
use BDProjetoIndividual;
create table cadastroEmpresa 
(idCadastro int primary key auto_increment,
nomeEmpresa varchar (30) not null,
cnpjEmpresa char (18) not null,
cepEmpresa char(9) not null,
telefoneEmpresa varchar(13) not null,
emailEmpresa varchar (100) unique not null,
ufEmpresa char (2) not null,
representanteEmpresa varchar (50));
-- BANCO 2
use BDProjetoIndividual;
create table cadastroFuncionario (
idFuncionario int primary key auto_increment,
nomeFuncionario varchar (50) NOT NULL,
cpfFuncionario char (11) not null unique,
cepFuncionario char(8) not null,
telefoneFuncionario char (11) not null,
emailFuncionario varchar (30) not null unique,
cargoFuncionario varchar (30));


-- BANCO 3
use BDProjetoIndividual;
create table cadastroSensor (
idSensor int primary key auto_increment,
localSetorSensor varchar (30) not null,
dataHoraSensor datetime not null,
temperaturaSensor decimal (4,2) not null,
responsavelSensor varchar (30) not null);

INSERT INTO cadastroEmpresa (nomeEmpresa, cnpjEmpresa, cepEmpresa, telefoneEmpresa, emailEmpresa, ufEmpresa, representanteEmpresa) values
('Daiane Consultoria Financeira Ltda', '02.059.492/0001-16', '13903-152', '(19)2880-0521', 'diretoria@daianeericardoconsultoriafinanceiraltda.com.br', 'SP', 'Regina'),
('Granja Chicken Little Agro', '48.812.083/0001-40', '13630-805', '(19)2891-0133', 'contabilidade@granjachickenlittleltda.com.br', 'SP', 'Roberto'),
('Frango Forte', '13.218.377/0001-63', '14780-700', '(17)2538-6254', 'ouvidoria@frangoforteltda.com.br', 'SP', 'Alex'),
('KFChicken', '08.288.466/0001-46', '06509-060', '(11)3524-6647', 'administracao@KFChicken.com.br', 'SP', 'Fred');
select*from cadastroEmpresa;

INSERT INTO cadastroFuncionario (nomeFuncionario, cpfFuncionario, cepFuncionario, telefoneFuncionario, emailFuncionario, cargoFuncionario) values
	('Lucas Almeida', '12345678901', '01001000', '11987654321', 'lucas.almeida@email.com', 'Analista de TI'),
    ('Mariana Souza', '98765432100', '20230110', '21999887766', 'mariana.souza@email.com', 'Gerente de Projetos'),
    ('Fernando Lima', '45678912333', '30140040', '31988776655', 'fernando.lima@email.com', 'Suporte Técnico');
    select*from cadastroFuncionario;
    
    INSERT INTO cadastroSensor (localSetorSensor, dataHoraSensor, temperaturaSensor, responsavelSensor) values
	('A', '2025-05-14 00:00:01', 23.8, 'Joaquim Grava'),
    ('B', '2025-05-14 20:50:37', 22.9, 'Lionel Messi'),
	('C', '2025-03-18 20:20:20', 23.0, 'Ailton');
    select*from cadastroSensor;
    
UPDATE cadastroFuncionario SET cargoFuncionario = 'Analista' WHERE idFuncionario = 1;
UPDATE cadastroFuncionario SET cargoFuncionario = 'Gerente' WHERE idFuncionario = 2;
UPDATE cadastroFuncionario SET cargoFuncionario = 'Suporte' WHERE idFuncionario = 3;
DELETE FROM cadastroFuncionario WHERE idFuncionario = 1;
SELECT * FROM cadastroEmpresa;
SELECT * FROM cadastroFuncionario;
SELECT * FROM cadastroSensor;

INSERT INTO cadastroFuncionario (nomeFuncionario, cpfFuncionario, cepFuncionario, telefoneFuncionario, emailFuncionario, cargoFuncionario) values
	('Robson Vieira', '81398231732', '12313212', '11001110101', 'robson.vieira1233243@email.com', 'Analista'),
    ('João Pedro', '98812397217', '44444444', '1232132132', 'joaoo.pedro557@email.com', 'Coordenador'),
    ('Edilson Ramos', '21221312042', '09809809', '9280182312', 'edilson12.ramoooos@email.com', 'Diretor');
SELECT nomeFuncionario AS 'Nome do Funcionário', 
	   cpfFuncionario AS 'CPF', telefoneFuncionario AS 'Telefone do Funcionário',
       emailFuncionario AS 'E-mail do Funcionário',
       cargoFuncionario AS 'Cargo do Funcionário'
FROM cadastroFuncionario;

DESCRIBE cadastroSensor;
DESCRIBE cadastroFuncionario;
DESCRIBE cadastroEmpresa;