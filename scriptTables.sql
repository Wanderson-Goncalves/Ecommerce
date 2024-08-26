-- Active: 1724235575615@@127.0.0.1@3306@ecommerce

CREATE DATABASE ecommerce;
USE ecommerce;

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
    CPFCNPJ CHAR(12) NOT NULL ,
    Telefone VARCHAR(11) NOT NULL,
    constraint cpfcnpj_cliente UNIQUE(CPFCNPJ),
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
    Status_Pedido ENUM("Processando", "Em transito", "Cancelado", "Enviado", "Entregue") DEFAULT "Processando",
    Descrição VARCHAR(100) NOT NULL,
    Valor_Pedido FLOAT NOT NULL, 
    constraint Pedido_Cliente FOREIGN KEY (Cliente_idCliente)
        REFERENCES Cliente(idCliente)
);


CREATE TABLE Fornecedor(
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Fantasia VARCHAR(20),
    CNPJ VARCHAR(15) NOT NULL UNIQUE,
    Endereço int NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    constraint Endereço_Fornecedor FOREIGN KEY (Endereço)
        REFERENCES Endereço(idEndereço)
);


CREATE TABLE Vendedor_Terceirizado(
    idVendedor_Terceirizado INT AUTO_INCREMENT PRIMARY KEY,
    CNPJ VARCHAR(15) NOT NULL UNIQUE,
    Nome_Fantasia VARCHAR(20) NOT NULL,
    Endereço INT NOT NULL,
    Telefone VARCHAR(11) NOT NULL,
    constraint Endereço_Vendedor_Terceirizado FOREIGN KEY (Endereço)
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
    Telefone VARCHAR(11) NOT NULL,
    constraint Endereço_Estoque FOREIGN KEY (Endereço)
        REFERENCES Endereço(idEndereço)
);

CREATE TABLE Produto_Estoque(
    Produto_idProduto INT,
    Estoque_idEstoque INT,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Produto_idProduto, Estoque_idEstoque),
    constraint fk_Produto_idProduto FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto),
    constraint fk_Estoque_idEstoque FOREIGN KEY (Estoque_idEstoque) REFERENCES Estoque(idEstoque)
);

CREATE TABLE Produto_Fornecedor(
    Fornecedor_idFornecedor INT,
    Produto_IdProduto INT,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Fornecedor_idFornecedor, Produto_IdProduto),
    constraint fk_Fornecedor_idFornecedor FOREIGN KEY (Fornecedor_idFornecedor) REFERENCES Fornecedor(idFornecedor),
    constraint fk_Produto_Fornecedor_IdProduto FOREIGN KEY (Produto_IdProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE Produto_Vendedor_Tercerizado(
    Vendedor_idVendedor_Terceirizado INT,
    Produto_idProduto INT,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Vendedor_idVendedor_Terceirizado, Produto_IdProduto),
    constraint fk_Vendedor_Terceirizado FOREIGN KEY (Vendedor_idVendedor_Terceirizado) REFERENCES Vendedor_Terceirizado(idVendedor_Terceirizado),
    constraint fk_Tercerizado_Fornecedor_IdProduto FOREIGN KEY (Produto_IdProduto) REFERENCES Produto(idProduto)
);


CREATE TABLE Produto_Pedido(
    Pedido_idPedido INT,
    Produto_idProduto INT,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Pedido_idPedido, Produto_IdProduto),
    constraint fk_Pedido_idPendido FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido),
    constraint fk_Produto__Pedido_IdProduto FOREIGN KEY (Produto_IdProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE Pagamento(
    Cartão_idCartão INT,
    Pedido_idPedido INT,
    Parcelas ENUM("1","2","3","4","5","6","7","8","9","10") DEFAULT "1",
    Status_ ENUM("Aprovado", "Aguardando Pagamento", "Pagamento Recusado") DEFAULT "Aguardando Pagamento",
    Forma_Pagamento ENUM("Credito", "A Vista"),
    Frete FLOAT,
    Total_Pagar FLOAT,
    PRIMARY KEY (Cartão_idCartão, Pedido_idPedido),
    constraint fk_Pagamento_Pedido_idPendido FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido),
    constraint fk_Pagamento_Cartão_idCartão FOREIGN KEY (Cartão_idCartão) REFERENCES Cartão(idCartão)
);