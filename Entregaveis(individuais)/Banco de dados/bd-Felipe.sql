CREATE DATABASE bdIndividual;
USE bdIndividual;


CREATE TABLE sensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    dtInsta DATE,
    statusSensor  VARCHAR(8) CONSTRAINT chrStatus CHECK(statusSensor in('ativo','desativo')),
    numSerie CHAR(3)
);

CREATE TABLE clienteEmpresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR(40),
    cnpj CHAR(14),
    porteDaEmpresa VARCHAR(7) constraint chkPorte check(porteDaEmpresa in('Grande','Medio','Pequeno')),
    EnderecoEmpresa VARCHAR(60),
    emailEmpresa VARCHAR(40)
);

CREATE TABLE funcionarioCliente(
	idFuncionarioCliente INT PRIMARY KEY AUTO_INCREMENT,
    nomeFuncCliente VARCHAR(40),
    emailFuncCliente VARCHAR(60)
    -- idAreaSensor
);

-- CRIANDO A TABELA DA AREA DO SENSOR ONDE O ID DA AREA AREA PRA TABELA SENSOR E PARA A TABELA FUNCIONARIO CLIENTE
CREATE TABLE areaSensor(
	idAreaSensor INT PRIMARY KEY AUTO_INCREMENT,
    qtdSensor INT
    -- idSensor
);

INSERT INTO sensor (dtInsta, statusSensor, numSerie) VALUES 

('2025-03-10', 'ativo', 'A01'),
('2025-03-12', 'desativo', 'B02'),
('2025-03-15', 'ativo', 'C03'),
('2025-03-18', 'ativo', 'D04'),
('2025-03-20', 'desativo', 'E05');

INSERT INTO clienteEmpresa (nomeEmpresa, cnpj, porteDaEmpresa, EnderecoEmpresa, emailEmpresa) 
VALUES 
('Tech Solutions', '12345678000199', 'Grande', 'Rua A, 100, São Paulo', 'contato@techsolutions.com'),
('Green Energy', '98765432000155', 'Medio', 'Av. B, 250, Rio de Janeiro', 'suporte@greenenergy.com'),
('NanoTech', '45612378000166', 'Pequeno', 'Rua C, 45, Belo Horizonte', 'info@nanotech.com'),
('InovaTI', '85236974000188', 'Grande', 'Rua D, 75, Curitiba', 'atendimento@inovati.com'),
('SmartIndustries', '36985214700012', 'Medio', 'Av. E, 300, Porto Alegre', 'contato@smartindustries.com');

INSERT INTO funcionarioCliente (nomeFuncCliente, emailFuncCliente) 
VALUES
 
('Carlos Silva', 'carlos.silva@techsolutions.com'),
('Mariana Souza', 'mariana.souza@greenenergy.com'),
('João Pereira', 'joao.pereira@nanotech.com'),
('Fernanda Lima', 'fernanda.lima@inovati.com'),
('Roberto Alves', 'roberto.alves@smartindustries.com');

INSERT INTO areaSensor (qtdSensor) 
VALUES 
(5),
(3),
(7),
(4), 
(6);


-- TABELA SENSOR
UPDATE sensor SET numSerie = 'B01' 
WHERE idSensor = 1;
ALTER TABLE sensor RENAME COLUMN numSerie to numeroDeSerie;


-- TABELA FUNCIONARIO
ALTER TABLE funcionarioCliente ADD COLUMN teleFuncCliente CHAR(11);

-- TABELA CLIENTEEMPRESA
ALTER TABLE clienteEmpresa RENAME COLUMN cnpj to cnpjDaEmpresa;

-- TABELA AREASENSOR
DELETE FROM areaSensor WHERE idAreaSensor = 3;


-- SELECTS DAS TABELAS
SELECT 
	idSensor as 'indentificação do Sensor',
    dtInsta as 'data da Instalação do Sensor',
    statusSensor as 'Status do Sensor',
    numeroDeSerie as 'Número de Serie do Sensor'
FROM sensor;


SELECT 	
		idEmpresa as 'Indentificação da Empresa', 
		nomeEmpresa as 'Nome da Empresa', 
        cnpj as 'CNPJ da Empresa',
        porteDaEmpresa as 'Porte da Empresa',
        EnderecoEmpresa as 'Endereço da Empresa',
        emailEmpresa as 'Email da Empresa'
FROM clienteEmpresa;

SELECT 
		idFuncionarioCliente as 'Indentificação do Funcionario do Cliente', 
		nomeFuncCliente as 'Nome do Funcionario do Cliente',
        emailFuncCliente as 'Email do Funcionario do Clente' 
        
FROM funcionarioCliente;


SELECT 
		idAreaSensor as 'Indentificação da area de onde o Sensor pertence', 
		qtdSensor as 'Quantos Sensores tem naquela Area'
        
FROM areaSensor;














