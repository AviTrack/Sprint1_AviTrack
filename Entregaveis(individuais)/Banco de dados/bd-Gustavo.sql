
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



