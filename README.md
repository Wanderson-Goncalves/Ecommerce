# Projeto de Simulação de E-Commerce com SQL

Este projeto simula um sistema de e-commerce simples, demonstrando a criação de tabelas, inserção de dados e  algumas consultas SQL para gerenciar informações sobre vendedores terceirizados. As operações são divididas em diferentes arquivos para uma melhor organização.

## Estrutura do Projeto

- `scriptTables.sql`: Contém os comandos SQL para criar as tabelas.
- `scriptInsert.sql`: Contém os comandos SQL para inserir dados nas tabelas.
- `scriptQueries.sql`: Contém as consultas SQL para buscar informações.

## Requisitos

- MySQL ou outro banco de dados relacional compatível.
- Cliente SQL (como MySQL Workbench) ou linha de comando para executar os scripts.

## Como Usar

### 1. Criação das Tabelas

Execute o arquivo `scriptTables.sql` para criar as tabelas necessárias:

```sql
-- Arquivo: scriptTables.sql

CREATE TABLE Endereço (
    idEndereço INT AUTO_INCREMENT PRIMARY KEY,
    Rua VARCHAR(45) NOT NULL,
    Numero INT NOT NULL,
    Bairro VARCHAR(45) NOT NULL,
    Cidade VARCHAR(45) NOT NULL,
    Estado VARCHAR(15) NOT NULL,
    CEP VARCHAR(8) NOT NULL
);

CREATE TABLE Vendedor_Terceirizado (
    idVendedor_Terceirizado INT AUTO_INCREMENT PRIMARY KEY,
    CNPJ VARCHAR(15) NOT NULL UNIQUE,
    Nome_Fantasia VARCHAR(20) NOT NULL,
    Endereço INT NOT NULL,
    Telefone VARCHAR(11) NOT NULL,
    CONSTRAINT Endereço_Vendedor_Terceirizado FOREIGN KEY (Endereço) REFERENCES Endereço(idEndereço)
);

CREATE TABLE Estoque (
    idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    Endereço INT NOT NULL,
    Telefone VARCHAR(11) NOT NULL,
    CONSTRAINT Endereço_Estoque FOREIGN KEY (Endereço) REFERENCES Endereço(idEndereço)
);

CREATE TABLE Produto_Estoque (
    Produto_idProduto INT,
    Estoque_idEstoque INT,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Produto_idProduto, Estoque_idEstoque),
    CONSTRAINT fk_Produto_idProduto FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto),
    CONSTRAINT fk_Estoque_idEstoque FOREIGN KEY (Estoque_idEstoque) REFERENCES Estoque(idEstoque)
);

CREATE TABLE Produto_Vendedor_Tercerizado (
    Vendedor_idVendedor_Terceirizado INT,
    Produto_idProduto INT,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Vendedor_idVendedor_Terceirizado, Produto_idProduto),
    CONSTRAINT fk_Vendedor_Terceirizado FOREIGN KEY (Vendedor_idVendedor_Terceirizado) REFERENCES Vendedor_Terceirizado(idVendedor_Terceirizado),
    CONSTRAINT fk_Tercerizado_Fornecedor_IdProduto FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto)
);
