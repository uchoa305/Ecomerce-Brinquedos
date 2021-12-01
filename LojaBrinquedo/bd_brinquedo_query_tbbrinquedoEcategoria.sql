create database dbBrinquedos;

USE dbBrinquedos ;

Create table if not exists tbCategoria( 
	id int auto_increment not null, 
    status bit not null, 
    nome_categoria varchar(50) not null,
    descricao_categoria varchar(150) null, 
    CONSTRAINT PK_ID PRIMARY KEY(id)
) ;

Create table if not exists tbBrinquedo( 
	id int auto_increment not null, 
    status bit not null, 
    nome_brinquedo varchar(100) not null,
    preco_brinquedo float not null, 
    descricao_brinquedo varchar(200) not null, 
    foto_brinquedo blob null,
    id_categoria int not null, 
    CONSTRAINT PK_ID PRIMARY KEY(id),
	FOREIGN KEY (id_categoria) REFERENCES tbCategoria(id)
    
) DEFAULT CHARSET = UTF8MB4 ;

Create table if not exists tbAdmin( 
	id int auto_increment not null, 
    status bit not null, 
    nome_adm varchar(100) not null,
    login varchar(50) not null, 
	senha varchar(250) not null,
    email varchar(100) not null,
    CONSTRAINT PK_ID PRIMARY KEY(id)
) DEFAULT CHARSET = UTF8MB4 ;

ALTER TABLE tbBrinquedo
ADD cod_brinquedo varchar(20)  unique not null  ;

describe tbBrinquedo;
ALTER TABLE tbBrinquedo MODIFY foto_brinquedo VARCHAR(200);

INSERT INTO tbCategoria(status,nome_categoria, descricao_categoria) values(true,"Aviao","voa");
INSERT INTO tbCategoria(status,nome_categoria, descricao_categoria) values(true,"Caminhão","Anda e carrega coisas");
INSERT INTO tbCategoria(status,nome_categoria, descricao_categoria) values(true,"Carros","Roda e ostenta");
INSERT INTO tbCategoria(status,nome_categoria, descricao_categoria) values(true,"Bonecas","Para quem quiser brincar seila");
INSERT INTO tbCategoria(status,nome_categoria, descricao_categoria) values(true,"Bebes","brinquedos para bebes com menos de 2 anos");
INSERT INTO tbCategoria(status,nome_categoria, descricao_categoria) values(true,"Action Figurie","colecionaveis");


DELETE FROM tbBrinquedo WHERE id=29;



DELETE FROM tbCategoria WHERE id=20;

select * from tbBrinquedo;
select * from tbCategoria;

ALTER TABLE tbCategoria
ADD faixa_etaria varchar(20)  not null;

ALTER TABLE tbCategoria
ADD cod_linha int  not null;