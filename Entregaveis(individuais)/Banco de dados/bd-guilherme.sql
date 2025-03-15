create database avitrack;

use avitrack;

drop table arduino;

create table empresa (
	idEmpresa int primary key auto_increment,
    NomeEmpresa varchar(40) not null,
	EmailEmpresa varchar(50) not null unique,
    Senha varchar(30) not null,
    TelefoneEmpresa varchar(30),
    cpnj char(18) not null,
    tamanho varchar(18)
);

create table arduino (
		idArduino int primary key auto_increment,
        Localizacao varchar(30) not null,
        ConexaoEmpresa varchar(50) not null,
        Temperatura decimal(3,1)  not null
);

create table funcionario (
    idUsuario int primary key auto_increment,
    Nome varchar(30) not null,
    Cargo varchar(30) not null,
    identificacao varchar(30) not null unique
);


insert into empresa (nomeEmpresa, EmailEmpresa, Senha, TelefoneEmpresa, cpnj, tamanho) values
('Natália e Isabel Mudanças Ltda', 'representantes@nataliaeisabelmudancasltda.com.br', 'fhafnw2ff2@', '(11) 2726-4873', '28.784.369/0001-51', 'Grande'),
('Amanda e Gabrielly Locações de Automóveis Ltda', 'tesouraria@felipeemarioferragensltda.com.br', 'trocado992', '(15) 3990-1738', '43.526.770/0001-85', 'Pequena'),
('Miguel e Bernardo Filmagens Ltda', 'ti@miguelebernardofilmagensltda.com.br', 'camisa55', '(11) 2816-6007', '20.493.476/0001-19', 'Media'),
('João e Thales Assessoria Jurídica Ltda', 'estoque@joaoethalesassessoriajuridicaltda.com.br', 'doidoi89', '(18) 3898-6849', '54.293.190/0001-01', 'Grande'),
('Ruan e Brenda Adega Ltda', 'fiscal@ruanebrendaadegaltda.com.br', 'ps2queimado999', '(16) 2730-2841', '56.480.029/0001-72', 'Grande');

insert into arduino (Localizacao , ConexaoEmpresa, Temperatura) values
('Area leste', 'Natália e Isabel Mudanças Ltda', '22.0'),
('Area sul', 'Amanda e Gabrielly Locações de Automóveis Ltda', '33.0'),
('Area leste', 'Miguel e Bernardo Filmagens Ltda', '25.5'),
('Area norte', 'João e Thales Assessoria Jurídica Ltda', '12.1'),
('Area oeste', 'Ruan e Brenda Adega Ltda', '21.5');


insert into funcionario (nome , cargo, identificacao) values
('João Kauê Erick de Paula', 'Gerente', '22371628910'),
('Caio felipe dos santos', 'supervisor', '52311628010'),
('ana julia da silva', 'cordenadora', '82371648911'),
('Joana santos', 'Assistente', '22371628910'),
('matheus gonçalves ', 'Analista', '22371628910');

select * from arduino;

select * from empresa;

select * from funcionario;

update arduino set localizacao = 'area sul' where idarduino = 1;