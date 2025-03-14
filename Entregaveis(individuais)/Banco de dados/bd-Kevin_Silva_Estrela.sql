-- Nome: Kevin Silva Estrela 	Sala: 1 ADSA 	RA: 01251049

CREATE DATABASE projeto_pi;
USE projeto_pi;


CREATE TABLE empresa (
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR (100) NOT NULL,
    cnpj CHAR (18) NOT NULL,
    telefoneEmpresa VARCHAR (18) NOT NULL,
    emailEmpresa VARCHAR (100) NOT NULL,
    enderecoEmpresa VARCHAR (100) NOT NULL
);


CREATE TABLE funcionarioEmpresa (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    nomeFuncionario VARCHAR (100) NOT NULL,
    cpf CHAR (11) NOT NULL,
    telefoneFuncionario VARCHAR (30) NOT NULL,
    emailFuncionario VARCHAR (100) NOT NULL,
    senhaFuncionario VARCHAR (50) NOT NULL,
    cargoFuncionario VARCHAR (30)
);


CREATE TABLE sensor (
    idSensor INT PRIMARY KEY AUTO_INCREMENT,
    nomeSensor VARCHAR (20) NOT NULL,
    temperatura DECIMAL(3, 1) NOT NULL,
    dataHoraTemperatura DATETIME,
    localSetor VARCHAR (50) NOT NULL
);


INSERT INTO empresa (nomeEmpresa, cnpj, telefoneEmpresa, emailEmpresa, enderecoEmpresa)
VALUES
	('Breno e Mirella Locações de Automóveis ME', '45.337.864/0001-31', '(11) 2765-5229', 'atendimento@pietraecamilaeletronicame.com.br', 'Rua Francisco Gomes da Silva'),
    ('Sônia e Francisca Ltda', '08.034.574/0001-92', '(11) 3793-9459', 'compras@soniaefranciscaltda.com.br', 'Rua José Maria Lisboa 463'),
    ('Julia e Samuel Pães e Doces Ltda', '58.202.510/0001-21', '(17) 3686-7791', 'orcamento@juliaesamuelpaesedocesltda.com.br', 'Travessa dos Judiciários'),
    ('Nair e Diego Restaurante Ltda', '42.239.288/0001-00', '(12) 3571-8933', 'marketing@nairediegorestauranteltda.com.br', 'Avenida Getúlio Dorneles Vargas, s/n'),
    ('Priscila e Juan Adega ME', '02.611.369/0001-66', '(12) 3726-2872', 'auditoria@priscilaejuanadegame.com.br', 'Rua João Nogueira Bustamante');
    
    
INSERT INTO funcionarioEmpresa (nomeFuncionario, cpf, telefoneFuncionario, emailFuncionario, senhaFuncionario)
VALUES
	('Vera Teresinha Luciana Moura', '46044563057', '86986918165', 'igorhugocavalcanti@bigfoot.com', 'flpflEduBD'),
    ('Mário Breno Gonçalves', '03194451782', '83985336964', 'mario_goncalves@globo.com', 'kIdDnHafs1'),
    ('Emily Ayla Rafaela Pires', '11743951841', '79992151488', 'emilyaylapires@petrobras.com.br', 'nO3KXTy9Gk'),
    ('Renato Vitor Ryan Alves', '20526834293', '98982156752', 'renatovitoralves@gdsambiental.com.br', 'oyzfZd1aNy'),
    ('Tânia Letícia da Cruz', '49269173194', '81989994208', 'tanialeticiadacruz@goldenhotel.com.br', 'lGHs8KEPli');
    
    
INSERT INTO sensor (nomeSensor, temperatura, dataHoraTemperatura, localSetor)
VALUES
	('LM35', 23.5, '2025-05-14 00:00:01', 'Setor A'),
    ('LM35', 25.8, '2025-05-14 20:50:37', 'Setor D'),
    ('LM35', 31.4, '2025-05-18 11:27:44', 'Setor F'),
    ('LM35', 30.0, '2025-05-14 04:19:59', 'Setor I'),
    ('LM35', 22.6, '2025-05-14 23:42:11', 'Setor M');


ALTER TABLE funcionarioEmpresa
ADD CONSTRAINT chkCargo CHECK (cargoFuncionario in ('Analista', 'Gerente', 'Superintendente'));


UPDATE funcionarioEmpresa SET cargoFuncionario = 'Analista'
WHERE idFuncionario = 1;

UPDATE funcionarioEmpresa SET cargoFuncionario = 'Gerente'
WHERE idFuncionario = 2;

UPDATE funcionarioEmpresa SET cargoFuncionario = 'Superintendente'
WHERE idFuncionario = 3;

UPDATE funcionarioEmpresa SET cargoFuncionario = 'Analista'
WHERE idFuncionario = 4;

UPDATE funcionarioEmpresa SET cargoFuncionario = 'Gerente'
WHERE idFuncionario = 5;


DELETE FROM funcionarioEmpresa
WHERE idFuncionario = 1;


SELECT * FROM empresa;
SELECT * FROM funcionarioEmpresa;
SELECT * FROM sensor;

SELECT nomeFuncionario AS 'Nome do Funcionário', 
	   cpf AS 'CPF', telefoneFuncionario AS 'Telefone do Funcionário',
       emailFuncionario AS 'E-mail do Funcionário', 
       senhaFuncionario AS 'Senha do Funcionário',
       cargoFuncionario AS 'Cargo do Funcionário'
FROM funcionarioEmpresa
WHERE cargoFuncionario = 'Gerente';

DESCRIBE funcionarioEmpresa;
