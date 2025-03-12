-- Active: 1739973101391@@127.0.0.1@3306@teste
CREATE DATABASE avitrack;
USE avitrack;
CREATE TABLE empresaCliente(
		idEmpresaCliente INT PRIMARY KEY AUTO_INCREMENT,
        nomeEmpresaCliente VARCHAR(50) NOT NULL,
		cnpjEmpresaCliente CHAR(18) NOT NULL,
        emailEmpresaCliente VARCHAR(50) NOT NULL,
        telefoneEmpresaCliente VARCHAR(15) NOT NULL,
        cepEmpresaCliente VARCHAR(15) NOT NULL,
        ufEmpresaCliente  CHAR(2) NOT NULL,
        cidadeEmpresaCliente VARCHAR(40)NOT NULL,
        ruaEmpresaCliente VARCHAR(40)NOT NULL,
		numeroEmpresaCliente VARCHAR(10)NOT NULL
);
CREATE TABLE funcionarioEmpresa(
    idFuncionarioEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeFuncionarioEmpresa VARCHAR(50) NOT NULL,
	cargoFuncionarioEmpresa VARCHAR(30) NOT NULL,
    emailFuncionarioEmpresa VARCHAR(70) NOT NULL UNIQUE,
    senhaFuncionarioEmpresa VARCHAR(30) NOT NULL,
    nomeEmpresa VARCHAR(50) NOT NULL
 );
CREATE TABLE sensor(
        idSensor INT PRIMARY KEY AUTO_INCREMENT,
        temperatura DECIMAL(4,2) NOT NULL,
        data_horaSensor DATETIME NOT NULL,
        setorSensor VARCHAR(100) NOT NULL,
        responsavelSensor VARCHAR(50) NOT NULL
);

INSERT INTO empresaCliente (nomeEmpresaCliente, cnpjEmpresaCliente, emailEmpresaCliente, telefoneEmpresaCliente, cepEmpresaCliente, ufEmpresaCliente, cidadeEmpresaCliente, ruaEmpresaCliente, numeroEmpresaCliente) 
VALUES 
('Larissa e Carolina Chiken Ltda', '12.345.678/0001-99', 'atendimento@larissaecarolinachikenltda.com.br', '(11)98765-4321', '12345-678', 'SP', 'São Paulo', 'Rua das Flores', '123'),
('Levi e Arthur aviário Ltda', '98.765.432/0001-88', 'comunicacoes@leviearthuraviariotda.com.br', '(21)99876-5432', '23456-789', 'RJ', 'Rio de Janeiro', 'Avenida Brasil', '456'),
('Granja Luiz e Giovanni Ltda', '11.223.344/0001-77', 'sac@luizegiovannigranjaltda.com.br', '(31)98765-4321', '34567-890', 'MG', 'Belo Horizonte', 'Rua da Paz', '789'),
('Aviário João e Lucas Ltda', '22.334.455/0001-66', 'financeiro@joaoelucasaviarioltda.com.br', '(41)99987-6543', '45678-901', 'PR', 'Curitiba', 'Rua das Américas', '321'),
('Granja Julia e Gustavo Ltda', '33.445.566/0001-55', 'diretoria@juliaegustavogranjaltda.com.br', '(51)98876-5432', '56789-012', 'RS', 'Porto Alegre', 'Avenida dos Estados', '654');

INSERT INTO funcionarioEmpresa(nomeFuncionarioEmpresa,cargoFuncionarioEmpresa,emailFuncionarioEmpresa,senhaFuncionarioEmpresa,nomeEmpresa) 
VALUES
('João Manoel Anderson da Mata','Representante','joao_manoel_damata@mindesign.com.br','ojBKH2BhOg','Larissa e Carolina Chiken Ltda'),
('Teresinha Stella Nina Rocha','Monitor','teresinhastellarocha@fileno.com.br','u28If4tXn3','Larissa e Carolina Chiken Ltda'),
('Miguel Francisco Martins','Representante','miguel_martins@yogoothies.com.br','howaw54QZG','Levi e Arthur aviário Ltda'),
('Alice Rosa Santos','Monitor','alice_rosa_santos@iaru.com.br','howaw54QZG','Levi e Arthur aviário Ltda'),
('Yago Bento Santos','Representante','yagoyagosantos@zaniniengenharia.com.br','7ws3PAgmep','Granja Luiz e Giovanni Ltda'),
('Clarice Rosângela da Cruz','Monitor','claricerosangeladacruz@oi15.com.br','RawyI8nFzs','Granja Luiz e Giovanni Ltda'),
('Letícia Emilly Esther Moreira','Representante','leticia_moreira@acritica.com.br','up9cqZLi1G','Aviário João e Lucas Ltda'),
('Bento Henrique Alexandre Ramos','Monitor','bento-ramos94@spires.com.br','nfnEAhzFZc','Aviário João e Lucas Ltda'),
('Priscila Ayla Jennifer Monteiro','Representante','priscila_ayla_monteiro@htmail.com','eCzBPJgwEE','Granja Julia e Gustavo Ltda'),
('Edson Felipe Porto','Monitor','edson-porto76@ynail.com.br','h8Q5QCATC0','Granja Julia e Gustavo Ltda');

INSERT INTO sensor(temperatura,data_horaSensor,setorSensor,responsavelSensor)
VALUES
(16.10,'2023-12-31 14:30:00',"Sul","Teresinha Stella Nina Rocha"),
(19.10,'2023-12-31 15:30:00',"Leste","Alice Rosa Santos"),
(18.10,'2023-12-31 16:30:00',"Oeste","ique Alexandre Ramos"),
(20.10,'2023-12-31 17:30:00',"Norte","Edson Felipe Porto");


SELECT nomeEmpresaCliente as 'Nome da Empresa', cnpjEmpresaCliente as 'CNPJ da Empresa', emailEmpresaCliente as 'Email da Empresa', telefoneEmpresaCliente as 'Telefone da Empresa', cepEmpresaCliente as 'Cep da Empresa', ufEmpresaCliente as 'Estado da Empresa',
cidadeEmpresaCliente as 'Cidadade da Empresa',ruaEmpresaCliente as 'Rua da Empresa',numeroEmpresaCliente as 'Número da Empresa'  FROM empresaCliente;


SELECT nomeFuncionarioEmpresa as 'Nome do Funcionário', cargoFuncionarioEmpresa as 'Cargo do Funcionario',emailFuncionarioEmpresa as 'Email do Funcionário',senhaFuncionarioEmpresa as 'Senha do Funcionário',
 nomeEmpresa as 'Funcionário Representa'FROM funcionarioEmpresa;
 
 SELECT temperatura as 'Temperatura Celsius',  data_horaSensor as 'Hora Registrada', setorSensor as 'Local do Sensor',responsavelSensor as 'Responsavel so Sensor'  FROM sensor;
 
 
UPDATE empresaCliente SET nomeEmpresaCliente = "Chiken Carolina Ltda" WHERE idEmpresaCliente =  1;
UPDATE empresaCliente SET nomeEmpresaCliente = "Aviário Levi Ltda" WHERE idEmpresaCliente =  2;

UPDATE funcionarioEmpresa SET cargoFuncionarioEmpresa = "Monitor" WHERE idFuncionarioEmpresa =  1;
UPDATE funcionarioEmpresa SET cargoFuncionarioEmpresa = "Representante" WHERE idFuncionarioEmpresa =  2;
UPDATE funcionarioEmpresa SET cargoFuncionarioEmpresa = "Monitor" WHERE idFuncionarioEmpresa =  3;
UPDATE funcionarioEmpresa SET cargoFuncionarioEmpresa = "Representante" WHERE idFuncionarioEmpresa =  4;

UPDATE sensor SET responsavelSensor = "João Manoel Anderson da Mata" WHERE idSensor =  1;
UPDATE sensor SET responsavelSensor = "Miguel Francisco Martins" WHERE idSensor =  2;

DELETE FROM empresaCliente WHERE idEmpresaCliente = 1;
DELETE FROM empresaCliente WHERE idEmpresaCliente = 2;

DELETE FROM funcionarioEmpresa WHERE idFuncionarioEmpresa = 1;
DELETE FROM funcionarioEmpresa WHERE idFuncionarioEmpresa = 2;

DELETE FROM sensor WHERE idSensor = 1;
DELETE FROM sensor WHERE idSensor = 2;

-- Grupo 04 de Pesquisa e Inovação 
-- Mateus da Silva de Souza
-- João Pedro
-- Guilherme Dias
-- Felipe Macedo
-- Rodrigo  Martins
-- Kevin Silva
-- Gustavo Pimentel
-- Vinicius Silva