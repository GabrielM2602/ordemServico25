CREATE DATABASE dbOs2025;

USE dbOs2025;

CREATE TABLE tbusuarios(
	id_user INT PRIMARY KEY,
    usuario VARCHAR(15) NOT NULL,
    fone VARCHAR(15),
    login VARCHAR(15) NOT NULL UNIQUE,
    senha VARCHAR(250) NOT NULL,
    perfil VARCHAR(20) NOT NULL
);

SELECT * FROM tbusuarios;

DESCRIBE tbusuarios;

INSERT INTO tbusuarios (id_user, usuario, fone, login, senha, perfil) VALUES (1, "Gabriel", "6640028922", "Gabriel", "123321", "Admin");

CREATE TABLE tbclientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nomecli VARCHAR(50) NOT NULL,
    endecli VARCHAR(100),
    fonecli VARCHAR(15) NOT NULL,
    emailcli VARCHAR(50) UNIQUE
);

INSERT INTO tbclientes (nomecli, endecli, fonecli, emailcli) VALUES ("slk não compensa", "Rua 18", "66123321222", "slk@gmail.com");

SELECT * FROM tbclientes;

CREATE TABLE tbos(
	os INT PRIMARY KEY AUTO_INCREMENT,
    data_os TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    tipo VARCHAR(15) NOT NULL,
    situacao VARCHAR(20) NOT NULL,
    equipamento VARCHAR(150) NOT NULL,
    defeito VARCHAR(150),
    servico VARCHAR(150),
    tecnico VARCHAR(30),
    valor DECIMAL(10, 2),
    id_cliente INT NOT NULL, 
    FOREIGN KEY(id_cliente) REFERENCES tbclientes(id_cliente)
);




















