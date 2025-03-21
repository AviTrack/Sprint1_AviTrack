CREATE DATABASE bdIndividual;
USE bdIndividual;

CREATE TABLE cliente(
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nomeCliente VARCHAR (100) NOT NULL,
    cnpjCliente CHAR (18) NOT NULL,
    telefoneCliente VARCHAR (18) NOT NULL,
    emailCliente VARCHAR (100) NOT NULL,
    cepCliente VARCHAR(15) NOT NULL,
    logradouroCliente VARCHAR(45) NOT NULL,
    numCliente CHAR(3) NOT NULL
);
CREATE TABLE funcionarioCliente(
	idFuncionarioCliente INT PRIMARY KEY AUTO_INCREMENT,
    nomeFuncCliente VARCHAR(40) NOT NULL,
    emailFuncCliente VARCHAR(60) NOT NULL,
    senhaFuncCliente VARCHAR(20) NOT NULL
);
CREATE TABLE areaSensor(
	idAreaSensor INT PRIMARY KEY AUTO_INCREMENT,
    qtdSensor INT NOT NULL,
    localSensor VARCHAR(100)
);
CREATE TABLE sensor(
    idSensor INT PRIMARY KEY AUTO_INCREMENT,
    temperaturaSensor DECIMAL(4,2) NOT NULL,
    dataSensor DATETIME
);

CREATE TABLE localSensor(
    idLocalSensor INT PRIMARY KEY AUTO_INCREMENT,
    descricaoLocal VARCHAR(100) NOT NULL
);

INSERT INTO cliente (nomeCliente, cnpjCliente, telefoneCliente, emailCliente, cepCliente, logradouroCliente, numCliente) 
VALUES 
('TechAgro Solutions', '12.345.678/0001-99', '(11) 98765-4321', 'contato@techagro.com', '12345-678', 'Rua das Palmeiras', '101'),
('AgroVision Ltda', '98.765.432/0001-55', '(21) 99876-5432', 'contato@agrovision.com', '87654-321', 'Avenida das Colheitas', '202');

INSERT INTO funcionarioCliente (nomeFuncCliente, emailFuncCliente, senhaFuncCliente) 
VALUES 
('Carlos Silva', 'carlos@xyz.com', '1234'),
('Mariana Souza', 'mariana@abc.com', '4321');

INSERT INTO localSensor (descricaoLocal) 
VALUES 
('Setor Principal'),
('Setor de Refrigeração');

INSERT INTO sensor (temperaturaSensor, dataSensor) 
VALUES 
(22.5, '2025-03-20 10:30:00'),
(18.9, '2025-03-20 11:00:00');

SELECT * FROM cliente;
SELECT * FROM funcionarioCliente;

DELETE FROM cliente WHERE idCliente = 1;

DELETE FROM funcionarioCliente WHERE idFuncionarioCliente = 2;

UPDATE cliente SET telefoneCliente = '(11) 99999-8888' WHERE idCliente = 2;

UPDATE funcionarioCliente SET emailFuncCliente = 'novoemail@abc.com' WHERE idFuncionarioCliente = 1;

UPDATE localSensor 
SET descricaoLocal = 'Galpão de Produção' 
WHERE idLocalSensor = 1;

UPDATE sensor 
SET temperaturaSensor = 23.0 
WHERE idSensor = 1;

DELETE FROM localSensor 
WHERE idLocalSensor = 2;

DELETE FROM sensor 
WHERE idSensor = 2;
