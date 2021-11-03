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

ALTER TABLE tbBrinquedo
ADD cod_brinquedo varchar(20)  unique not null  ;

describe tbBrinquedo
