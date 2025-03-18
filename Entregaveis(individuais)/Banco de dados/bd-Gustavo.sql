
-- GUSTAVO PIMENEL COSTA 1ADS A 
-- Tabelas Individuais sobre Projeto Sprint 1 
-- TABELAS: cadastroEmpresa(cliente), cadastroEmpresa(funcionario), cadastroSensor




CREATE DATABASE tabelasPI; 

use tabelasPI;

-- cadastroEmpresa(cliente) 1ª

create table Empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nomeempresa VARCHAR (30) NOT NULL,
CNPJ CHAR(20) NOT NULL,
CEP CHAR(9) NOT NULL, 
TELEFONE CHAR(15) NOT NULL,
EMAIL VARCHAR (100),
REPRESENTANTE VARCHAR (30) NOT NULL,
responsavelAtendimento VARCHAR (30) NOT NULL,
tamanho VARCHAR(12),
CONSTRAINT PORTE CHECK(tamanho IN ('Pequena','Média','Grande')),
qtdFuncionarios INT NOT NULL
);
SELECT*FROM Empresa;

INSERT INTO Empresa Values
(default, 'Avitruck Solutions','13.796.848/0001-10', '09876-909','(17) 3512-3021','avitrucksolution@yahoo.com','Tamires Silva','Anderson Sodela','Pequena', 100),
(default, 'Amaro Sol','30.598.742/0001-21', '89776-656','(18) 2274-3713','amarosol@yahoo.com','Saiana Andrade','Bálde Ste','Grande', 7422 ),
(default, 'Levita tu','15.446.775/0001-62', '02558-685','(73) 3169-6290','levitatu@hotmail.com','Cleonice Teores','José Sugaro','Média', 1200 ),
(default, 'Soul all','67.653.827/0001-75', '79009-090','(83) 3166-7116','soulalloi@yahoo.com','Senivaldo Manga','Yuri Arrola','Grande', 98000 ),
(default, 'Gerartabem','55.518.510/0001-47', '23932-155','(14) 2295-5261','gerartabemtu@yahoo.com','Gilberto Saia','Miriana Serebes','Média', 856 ),
(default, 'Buten','84.304.827/0001-89', '59050-091','(14) 2223-5783','butentucu@gmail.com','José Crespin','André Calmim','Média', 1163 );

ALTER TABLE Empresa ADD COLUMN ramo VARCHAR(25)
	CONSTRAINT especialidade CHECK(ramo IN('Avicultura'));

UPDATE Empresa SET ramo = 'Avicultura' 	WHERE idEmpresa = 1;

UPDATE Empresa SET ramo = 'Avicultura' 	WHERE idEmpresa = 2;

UPDATE Empresa SET ramo = 'Avicultura' 	WHERE idEmpresa = 3;

UPDATE Empresa SET ramo = 'Avicultura' 	WHERE idEmpresa = 4;

UPDATE Empresa SET ramo = 'Avicultura' 	WHERE idEmpresa = 5;

UPDATE Empresa SET ramo = 'Avicultura' 	WHERE idEmpresa = 6;

ALTER TABLE Empresa RENAME COLUMN REPRESENTANTE to respresentEmpresa;

ALTER TABLE Empresa DROP COLUMN EMAIL; 

DELETE FROM Empresa WHERE idEmpresa = 2;

DELETE FROM Empresa WHERE idEmpresa = 6;

SELECT * FROM Empresa;

SELECT * FROM Empresa WHERE tamanho = 'Pequena';
SELECT * FROM Empresa WHERE tamanho = 'Média';

SELECT CNPJ AS 'Cadastro Nacional da Pessoa Jurídica',
 responsavelAtendimento AS 'O cara da responsa'
 FROM Empresa; 
 
 

ALTER TABLE Empresa DROP CONSTRAINT PORTE;

TRUNCATE TABLE Empresa;

DROP TABLE Empresa; 



-- ---------------------------------------------------------------------------------------------------
-- cadastroEmpresa(funcionario) 2ª 

USE tabelasPI;

CREATE TABLE funcionario(
idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
nomefuncionario VARCHAR(30) NOT NULL,
CPF CHAR(14) NOT NULL,
CEP CHAR(9) NOT NULL,
telefone CHAR(15),
email VARCHAR(50), 
pisoSalarial VARCHAR(12),
CONSTRAINT valor CHECK(pisoSalarial IN('alto','mediano','baixo')), 
salario INT NOT NULL,
CARGO VARCHAR(70) NOT NULL, 
nacionalidade VARCHAR(20) NOT NULL
); 

INSERT INTO funcionario VALUES
	(default,'Jairson lecal','615.707.117-63','89218-210','(48) 98934-7650','jailsonlecal@numero.com.br','mediano', 7000,'Desenvolvedor de Maquinas','Brasileiro'),
	(default,'Nadir Tora','518.832.251-08','72916-348','(61) 98461-8437','nadiria@numero.com.br','baixo', 2000,'Faxineira','Brasileira'),
    (default,'Jamon La Pomba','244.863.326-60','89052-252','(47) 99728-0370','lapombajamon@numero.com.br','alto', 10000,'Líder de Gerenciamento','Columbiano'),
    (default,'Deliverson Joia','867.057.248-62','89218-210','(48) 98934-7650','delivery@numero.com.br','baixo', 1900,'Faxineiro','Brasileiro'),
    (default,'Austin Solomon','062.907.293-06','24924-510','(21) 99728-1927','solomunmu@numero.com.br','alto', 12000,'Gerente de Exportação','Austriaco'),
    (default,'Flores Bella','620.611.171-71','57040-526','(82) 99829-8631','floreta@numero.com.br','mediano', 6000,'Gerente de Galpão','Venezuelana');
    
SELECT * FROM funcionario;



ALTER TABLE funcionario ADD COLUMN idadeAtual INT;

 UPDATE funcionario SET idadeAtual = 45
	 WHERE idFuncionario =1; 
 UPDATE funcionario SET idadeAtual = 23
	 WHERE idFuncionario =2; 
 UPDATE funcionario SET idadeAtual = 32
	 WHERE idFuncionario =3; 
 UPDATE funcionario SET idadeAtual = 29
	 WHERE idFuncionario =4; 
 UPDATE funcionario SET idadeAtual = 38
	 WHERE idFuncionario =5; 
 UPDATE funcionario SET idadeAtual = 49
	 WHERE idFuncionario =6; 
     
     
ALTER TABLE Funcionario RENAME COLUMN salario to Dinherinho;

SELECT * FROM funcionario;

ALTER TABLE Funcionario DROP COLUMN CEP; 

DELETE FROM Funcionario WHERE idFuncionario = 3;

DELETE FROM Funcionario WHERE idFuncionario = 5;

SELECT * FROM Funcionario;

SELECT * FROM Funcionario WHERE pisoSalarial = 'alto';
SELECT * FROM Funcionario WHERE pisoSalarial = 'mediano';

SELECT CPF AS 'Cadastro de Pessoa Fisíca',
pisoSalarial AS 'Olha o tanto de dinheirinho'
 FROM Funcionario; 

ALTER TABLE funcionario DROP CONSTRAINT valor;

TRUNCATE TABLE funcionario;

DROP TABLE funcionario; 


-- ---------------------------------------------------------------------------------------------------------------------------------------------------

-- cadastroSensor 3ª

USE tabelasPI;

CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
setor VARCHAR(100) NOT NULL,
dataHora DATETIME NOT NULL,
temperatura DECIMAL(3, 1) NOT NULL,
responsavelSetor VARCHAR(30),
categoriaSensor VARCHAR(20) NOT NULL,
nomeSensor VARCHAR(10) NOT NULL, 
garantiaSensor VARCHAR (7) NOT NULL
);  

INSERT INTO sensor VALUES
	(default,'Setor de Desenvolvimento dos Frangos', '2025-09-02 14:30:00',28.5,'Nadilson Solores','Temperatura','LM-35','2 ANO'),
    (default,'Setor de Nascimento de novos Frangos', '2025-11-12 20:15:25',35.5,'Joana Montana','Temperatura','LM-35','2 ANO'),
    (default,'Setor de Análise de Frangos', '2025-02-20 15:02:20',15.0,'Ziraldo Dolores','Temperatura','LM-35','2 ANO'),
    (default,'Setor de Reprodução', '2025-01-15 04:47:00',30.2,'Adolfo Rodira','Temperatura','LM-35','1 ANO'),
    (default,'Setor de Alimentação', '2025-07-25 00:39:45',27.9,'Taína Zaira','Temperatura','LM-35','1 ANO'), 
    (default,'Setor de Pesagem', '2025-06-30 23:45:42',26.4,'Nelson Collor','Temperatura','LM-35','1 ANO');
    
    
SELECT * FROM sensor;

ALTER TABLE sensor ADD COLUMN funcao VARCHAR(25);

	UPDATE sensor SET funcao = 'Monitorar'
		WHERE idSensor = 1; 
	UPDATE sensor SET funcao = 'Monitorar'
		WHERE idSensor = 2;
	UPDATE sensor SET funcao = 'Monitorar'
		WHERE idSensor = 3; 
	UPDATE sensor SET funcao = 'Monitorar'
		WHERE idSensor = 4; 
	UPDATE sensor SET funcao = 'Monitorar'
		WHERE idSensor = 5; 
	UPDATE sensor SET funcao = 'Monitorar'
		WHERE idSensor = 6; 

ALTER TABLE sensor RENAME COLUMN responsavelSetor to pessoaResponsavel;

SELECT * FROM sensor;

ALTER TABLE sensor DROP COLUMN nomeSensor; 

DELETE FROM sensor WHERE idSensor = 2;

DELETE FROM sensor WHERE idsensor = 6;


SELECT pessoaResponsavel AS 'Chefe que manda e desmanda',
garantiaSensor AS 'Tem tempo, fica tranquilo'
 FROM sensor; 


TRUNCATE TABLE funcionario;

DROP TABLE funcionario; 
    
    
    
    
    
    
    
    