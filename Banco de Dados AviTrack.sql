CREATE DATABASE avitrack;
USE avitrack;
CREATE TABLE empresaCliente(
		idEmpresaCliente INT PRIMARY KEY AUTO_INCREMENT,
        nomeEmpresaCliente VARCHAR(50) NOT NULL,
		cnpjEmpresaCliente CHAR(15) NOT NULL,
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
        temperatura DECIMAL(4.2) NOT NULL,
        data_horaSensor DATETIME NOT NULL,
        setorSensor VARCHAR(100) NOT NULL,
        responsavelSensor VARCHAR(50) NOT NULL
);

INSERT INTO empresaCliente (nomeEmpresaCliente, cnpjEmpresaCliente, emailEmpresaCliente, telefoneEmpresaCliente, cepEmpresaCliente, ufEmpresaCliente, cidadeEmpresaCliente, ruaEmpresaCliente, numeroEmpresaCliente) 
VALUES 
('Empresa A', '12.345.678/0001-99', 'contato@empresaA.com.br', '(11)98765-4321', '12345-678', 'SP', 'São Paulo', 'Rua das Flores', '123'),
('Empresa B', '98.765.432/0001-88', 'contato@empresaB.com.br', '(21)99876-5432', '23456-789', 'RJ', 'Rio de Janeiro', 'Avenida Brasil', '456'),
('Empresa C', '11.223.344/0001-77', 'contato@empresaC.com.br', '(31)98765-4321', '34567-890', 'MG', 'Belo Horizonte', 'Rua da Paz', '789'),
('Empresa D', '22.334.455/0001-66', 'contato@empresaD.com.br', '(41)99987-6543', '45678-901', 'PR', 'Curitiba', 'Rua das Américas', '321'),
('Empresa E', '33.445.566/0001-55', 'contato@empresaE.com.br', '(51)98876-5432', '56789-012', 'RS', 'Porto Alegre', 'Avenida dos Estados', '654');



INSERT INTO funcionarioEmpresa(nomeFuncionarioEmpresa,cargoFuncionarioEmpresa,emailFuncionarioEmpresa,senhaFuncionarioEmpresa,nomeEmpresa) 
VALUES
('','','','',''),
('','','','',''),
('','','','',''),
('','','','',''),
('','','','',''),
('','','','','');

INSERT INTO sensor VALUES();












-- Grupo 04 de Pesquisa e Inovação 
-- Mateus da Silva de Souza
-- João Pedro
-- Guilherme Dias
-- Felipe Macedo
-- Rodrigo  Martins
-- Kevin Silva
-- Gustavo Pimentel
-- Vinicius Silva


