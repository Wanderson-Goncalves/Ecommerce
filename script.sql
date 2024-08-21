-- Active: 1724235575615@@127.0.0.1@3306@ecommerce
SHOW DATABASES;

USE ecommerce;
SHOW TABLES;

create TABLE Endereço(
    idEndereço INT AUTO_INCREMENT PRIMARY KEY,
    Rua VARCHAR(45) NOT NULL,
    Numero INT NOT NULL,
    Bairro VARCHAR(45) NOT NULL,
    Cidade VARCHAR(45) NOT NULL,
    Estado VARCHAR(15) NOT NULL,
    CEP VARCHAR(8) NOT NULL
);

CREATE TABLE Cliente(
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    idEndCliente INT,
    Nome VARCHAR(10) NOT NULL,
    Inicial_Nome_Meio CHAR(4) NOT NULL,
    Sobrenome VARCHAR(15) NOT NULL,
    Data_Nascemento DATE NOT NULL,
    CPF CHAR(12) NOT NULL,
    Telefone VARCHAR(12) NOT NULL,
    constraint cpf_cliente UNIQUE(CPF),
    constraint Endereço_do_Cliente FOREIGN KEY (idEndCliente) REFERENCES Endereço(IdEndereço)

);