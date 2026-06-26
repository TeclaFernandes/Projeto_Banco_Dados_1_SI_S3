CREATE DATABASE devweb;
USE devweb;

CREATE TABLE cliente(
	cod_cliente INT PRIMARY KEY AUTO_INCREMENT,
    cnpj VARCHAR(20) NOT NULL,
    nome VARCHAR(20) NOT NULL
);

CREATE TABLE projeto(
	id int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    cliente INT NOT NULL,
    data_inicio VARCHAR(20) NOT NULL,
    data_fim VARCHAR(20) NOT NULL,
    
    FOREIGN KEY (cliente) REFERENCES cliente(cod_cliente)
	);
    
CREATE TABLE especialidade (
	cod_especialidade INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL
    
);    
CREATE TABLE dev(
	cod_dev INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(20) NOT NULL,
    custo_hora FLOAT NOT NULL,
    especialidade INT NOT NULL,
    nivel ENUM ('junior', 'pleno', 'senior') NOT NULL
    
);

CREATE TABLE especializa(
	cod_especialidade INT NOT NULL,
    cod_dev INT NOT NULL,
    PRIMARY KEY (cod_especialidade, cod_dev),
    
	FOREIGN KEY (cod_especialidade) REFERENCES especialidade(cod_especialidade),
    FOREIGN KEY (cod_dev) REFERENCES dev(cod_dev)
);
CREATE TABLE trabalha (
	cod_dev INT NOT NULL,
    id_projeto INT NOT NULL,
    inicio VARCHAR(20) NOT NULL,
    fim VARCHAR(20) NOT NULL,
    
    PRIMARY KEY (cod_dev, id_projeto),
    FOREIGN KEY (cod_dev) REFERENCES dev(cod_dev),
    FOREIGN KEY (id_projeto) REFERENCES projeto(id)
    
);

SHOW TABLES;