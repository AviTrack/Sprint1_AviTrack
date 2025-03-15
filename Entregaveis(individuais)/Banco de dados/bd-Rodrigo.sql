use sprint1;

CREATE TABLE cadastroEmpresarial (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
empresa VARCHAR(50),
cnpj CHAR(14),
cep CHAR (8),
telefone CHAR(11),
email VARCHAR(50),
representante VARCHAR(50),
responsavelAtendimento VARCHAR(50)
);

INSERT INTO cadastroEmpresarial (empresa, cnpj, cep, telefone, email, representante, responsavelAtendimento) VALUES
	('Granja Ouro Branco', '12345678000199', '75804000', '64987654321', 'contato@ourobranco.com.br', 'Carlos Mendes', 'Mariana Silva'),
    ('Frango Forte Agro', '98765432000188', '75805500', '64999887766', 'suporte@frangoforte.com.br', 'Roberta Lima', 'Fernanda Oliveira'),
    ('Granja Vale do Frango', '54321678000277', '75790000', '64988776655', 'contato@valedofrango.com.br', 'José Alves', 'Ricardo Almeida'),
    ('Avícola Supremo LTDA', '15975368000133', '75900000', '62966554433', 'vendas@avicolasupremo.com.br', 'Ana Pereira', 'Bruno Santos'),
    ('Frangotech Produção', '78965432000411', '75830000', '64977443322', 'operacoes@frangotech.com.br', 'Gustavo Ferreira', 'Lucas Martins');

select * from cadastroEmpresarial;

CREATE TABLE cadastroEmpresa (
id INT PRIMARY KEY AUTO_INCREMENT,
funcionario VARCHAR(50),
cpf CHAR(11),
cep CHAR(8),
telefone CHAR(11),
email VARCHAR(50),
salario FLOAT,
cargo VARCHAR(30)
);

INSERT INTO cadastroEmpresa (funcionario, cpf, cep, telefone, email, salario, cargo) VALUES
	('Lucas Almeida', '12345678901', '01001000', '11987654321', 'lucas.almeida@email.com', 4500.00, 'Analista de TI'),
    ('Mariana Souza', '98765432100', '20230110', '21999887766', 'mariana.souza@email.com', 5200.50, 'Gerente de Projetos'),
    ('Fernando Lima', '45678912333', '30140040', '31988776655', 'fernando.lima@email.com', 3800.75, 'Suporte Técnico');

select * from cadastroEmpresa;

CREATE TABLE cadastroSensor(
id INT PRIMARY KEY AUTO_INCREMENT,
setor VARCHAR(20),
dataHora DATETIME,
valorRecebido DOUBLE,
responsavelSetor VARCHAR(50)
);

INSERT INTO cadastroSensor (setor, dataHora, valorRecebido, responsavelSetor) VALUES
    ('Setor A-03', '2024-03-01 08:30:00', 25.7, 'Lucas Almeida'),
    ('Setor B-11', '2024-03-01 10:15:00', 30.2, 'Mariana Souza'),
    ('Setor C-07', '2024-03-01 14:45:00', 18.9, 'Fernando Lima');

select * from cadastroSensor;