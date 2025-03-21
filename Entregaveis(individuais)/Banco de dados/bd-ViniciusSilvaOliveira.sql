CREATE DATABASE avitrackViniciusSilva;

USE avitrackViniciusSilva;
 
CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    cnpj CHAR(18) NOT NULL UNIQUE,
    rua VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
    complemento VARCHAR(10),
    cep CHAR(9) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL,
    telefone CHAR(15),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE funcionario_cliente (
	id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR (50) NOT NULL,
    cpf CHAR(14) NOT NULL UNIQUE,
    telefone CHAR(15),
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(30) NOT NULL,
	cargo VARCHAR(30)
);

CREATE TABLE sensor_temperatura (
	id_sensor INT PRIMARY KEY AUTO_INCREMENT,
    area VARCHAR(50) NOT NULL,
    data_hora_instalacao DATETIME NOT NULL,
    temperatura VARCHAR(20),
    responsavel VARCHAR(30)
);

INSERT INTO cliente (nome, cnpj, rua, numero, complemento, cep, cidade, uf, telefone, email) VALUES
('Rebeca e Rafael Frangos do Sul', '19.242.579/0001-27', 'Rua Natal Batistela', 676, 'Galpão A', '13737-617', 'Mococa', 'SP', '(19) 99462-7101', 'contato@frangosdosul.com'),
('Jorge e Sabrina Avícola Boa Vista', '55.442.275/0001-77', 'Rua Florianópolis', 580, NULL, '07727-530', 'Caieiras', 'SP', '(11) 99818-5265', 'contato@avicola.com'),
('Manuel e Helena Granja Pioneira', '67.054.288/0001-58', 'Rua Ângelo Pastorello', 505, NULL, '13607-060', 'Maceió', 'AL', '(82) 97777-7777', 'pioneira@granja.com');

INSERT INTO funcionario_cliente (nome,cpf, telefone, email, senha, cargo) VALUES
('Rosa Yasmin Farias', '925.398.433-36', '(11) 98304-3433', 'func@frangosdosul.com', 'T2b3XPG3gE', 'Monitor'),
('Heitor Breno da Luz', '058.580.685-37', '(11) 98380-0217', 'func@avicola.com', 'OJildCudwK', 'Monitor'),
('Mário Raul Calebe Assis', '732.990.062-15', '(11) 93456-7890', 'func@granja.com', 'waE5XDkTpG', 'Supervisor');

INSERT INTO sensor_temperatura (area, data_hora_instalacao, temperatura, responsavel) VALUES
('Galpão 1', '2025-03-01 08:00:00', '25.5°C', 'Carlos Silva'),
('Ala Norte', '2025-03-05 10:30:00', '23.8°C', 'Mariana Souza'),
('Setor 3', '2025-03-10 14:15:00', '26.2°C', 'João Mendes');

SELECT * FROM cliente;

SELECT * FROM funcionario_cliente;

SELECT * FROM sensor_temperatura;

ALTER TABLE sensor_temperatura ADD COLUMN status_sensor CHAR(10);

ALTER TABLE sensor_temperatura
	ADD CONSTRAINT chkStatus
		CHECK (status_sensor IN('Ativo', 'Inativo'));

UPDATE sensor_temperatura SET status_sensor = 'Inativo' WHERE id_sensor =1;

UPDATE sensor_temperatura SET status_sensor = 'Inativo' WHERE id_sensor =2;

UPDATE sensor_temperatura SET status_sensor = 'Inativo' WHERE id_sensor =2;

DELETE FROM sensor_temperatura WHERE id_sensor = 3;