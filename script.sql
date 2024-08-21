-- Active: 1724235575615@@127.0.0.1@3306@ecommerce


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
    Endereço INT,
    Nome VARCHAR(10) NOT NULL,
    Inicial_Nome_Meio CHAR(4) NOT NULL,
    Sobrenome VARCHAR(15) NOT NULL,
    Data_Nascemento DATE NOT NULL,
    CPF CHAR(12) NOT NULL UNIQUE,
    Telefone VARCHAR(12) NOT NULL,
    constraint cpf_cliente UNIQUE(CPF),
    constraint Endereço_do_Cliente FOREIGN KEY (Endereço) 
        REFERENCES Endereço(IdEndereço)
);

CREATE TABLE Cartão(
    idCartão INT AUTO_INCREMENT PRIMARY KEY,
    Cliente_idCliente INT NOT NULL,
    Nº_Cartão VARCHAR(16) UNIQUE NOT NULL,
    Data_Validade CHAR(5) NOT NULL,
    Bandeira ENUM("Mastercard", "Visa", "Elo", "Americam Express", "Hipercard") NOT NULL,
    constraint Responsavel_Cartão FOREIGN KEY (Cliente_idCliente)
        REFERENCES Cliente(idCliente)
);

CREATE TABLE Pedido(
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    Cliente_idCliente INT NOT NULL,
    Status_Pedido ENUM("Processando", "Em transito", "Cancelado", "Enviado", "Entregue") NOT NULL,
    Descrição VARCHAR(45) NOT NULL,
    Valor_Pedido FLOAT NOT NULL, 
    constraint Pedido_Cliente FOREIGN KEY (Cliente_idCliente)
        REFERENCES Cliente(idCliente)
);

CREATE TABLE Fornecedor(
    idFoenecedor INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Fantasia VARCHAR(20),
    CNPJ VARCHAR(45) NOT NULL UNIQUE,
    Endereço int NOT NULL,
    constraint Endereço_Fornecedor FOREIGN KEY (Endereço)
        REFERENCES Endereço(idEndereço)
);

CREATE TABLE Terceiro_Vendedor(
    idTerceiro_Vendedor INT AUTO_INCREMENT PRIMARY KEY,
    CNPJ VARCHAR(45) NOT NULL UNIQUE,
    Nome_Fantasia VARCHAR(20) NOT NULL,
    Endereço INT NOT NULL,
    constraint Endereço_Terceiro_Vendedor FOREIGN KEY (Endereço)
        REFERENCES Endereço(idEndereço)
);

CREATE TABLE Produto(
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    Categoria VARCHAR(20) NOT NULL,
    Descrição VARCHAR(100) NOT NULL,
    Valor FLOAT NOT NULL
);

CREATE TABLE Estoque(
    idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    Endereço INT NOT NULL,
    constraint Endereço_Estoque FOREIGN KEY (Endereço)
        REFERENCES Endereço(idEndereço)
);


