-- Active: 1731321658920@@127.0.0.1@3306@ecommerce
SHOW DATABASES;
USE ecommerce;
--inserindo endereços para clientes
INSERT INTO endereço (Rua, Numero, Bairro, Cidade, Estado, CEP)
VALUES ('Avenida das Flores', 123, 'Centro', 'São Paulo', 'SP', '01234567'),
       ('Rua das Palmeiras', 456, 'Jardim Botânico', 'Rio de Janeiro', 'RJ', '20000123'),
       ('Rua dos Sonhos', 789, 'Cidade Feliz', 'Belo Horizonte', 'MG', '30000456'),
       ('Avenida das Palmeiras', 101, 'Centro', 'Rio Branco', 'AC', '69900000'),
       ('Rua dos Coqueiros', 202, 'Praia da Sereia', 'Maceió', 'AL', '57000000'),
       ('Rua da Paulista', 2600, 'Bela Vista', 'São Paulo', 'SP', '01310000'),
       ('Travessa das Flores', 303, 'Jardim Tropical', 'Cruzeiro do Sul', 'AC', '69912345'),
       ('Rua das Mangueiras', 404, 'Ponta Verde', 'Maceió', 'AL', '57030000'),
       ('Avenida do Equador', 505, 'Centro', 'Macapá', 'AP', '68901234'),
       ('Rua dos Tucanos', 606, 'Parque das Aves', 'Manaus', 'AM', '69020456'),
       ('Avenida da Liberdade', 707, 'Barra', 'Salvador', 'BA', '40010789'),
       ('Avenida do Equador', 505, 'Centro', 'Macapá', 'AP', '68901234'),
       ('Rua dos Tucanos', 606, 'Parque das Aves', 'Manaus', 'AM', '69020456'),
       ('Avenida da Liberdade', 707, 'Barra', 'Salvador', 'BA', '40010789'),
       ('Rua das Palmeiras', 808, 'Aldeota', 'Fortaleza', 'CE', '60040123'),
       ('Quadra das Estrelas', 909, 'Asa Sul', 'Brasília', 'DF', '70070456'),
       ('Rua das Gaivotas', 1010, 'Praia de Camburi', 'Vitória', 'ES', '29010234'),
       ('Travessa dos Ipês', 1212, 'Jardim das Flores', 'São Luís', 'MA', '65000789'),
       ('Rua dos Pantaneiros', 1313, 'Pantanal', 'Cuiabá', 'MT', '78000123'),
       ('Avenida dos Ipês Amarelos', 1414, 'Jardim das Acácias', 'Campo Grande', 'MS', '79000456'),
       ('Rua das Montanhas', 1515, 'Serra Verde', 'Belo Horizonte', 'MG', '30123456'),
       ('Avenida dos Rios', 1616, 'Beira Rio', 'Belém', 'PA', '66000789'),
       ('Rua das Palmeiras', 1717, 'Tambaú', 'João Pessoa', 'PB', '58000123'),
       ('Rua das Araucárias', 1818, 'Batel', 'Curitiba', 'PR', '80000456'),
       ('Avenida dos Coqueiros', 1919, 'Boa Viagem', 'Recife', 'PE', '50000789');

SELECT * FROM endereço;

--Inserindo Clientes
INSERT INTO cliente (Nome, Inicial_Nome_Meio, Sobrenome, CPFCNPJ, Data_Nascemento, Endereço, Telefone)
VALUES ('Ana', 'M', 'Silva', '12345678900', '1990-05-14', 1, '11987654321'),
       ('Bruno', 'A', 'Santos', '98765432100', '1985-08-22', 2, '11912345678'),
       ('Carla', 'B', 'Oliveira', '98765432000112', '1992-11-30', 3, '21998765432'),
       ('Diego', 'C', 'Pereira', '87654321000156', '1988-03-15', 4, '21987654321'),
       ('Elisa', 'D', 'Costa', '78912345600', '1995-07-25', 5, '31912345678'),
       ('Fernanda', 'E', 'Lima', '12398765400', '1991-02-10', 6, '41998765432'),
       ('Gabriel', 'F', 'Ribeiro', '98732165400', '1987-06-18', 7, '51912345678'),
       ('Helena', 'G', 'Martins', '45612378900', '1993-09-22', 8, '48987654321'),
       ('Igor', 'H', 'Fernandes', '32198712300', '1989-12-05', 9, '61998765432'),
       ('Juliana', 'I', 'Almeida', '12345678000190', '1994-04-17', 10, '71912345678'),
       ('Lucas', 'J', 'Gomes', '12365498700', '1990-01-29', 11, '81987654321'),
       ('Mariana', 'K', 'Barbosa', '98712345600', '1986-11-11', 12, '85998765432'),
       ('Nicolas', 'L', 'Rodrigues', '23456789000134', '1992-03-03', 13, '84912345678'),
       ('Olivia', 'M', 'Souza', '32145678900', '1995-08-08', 14, '92987654321'),
       ('Pedro', 'N', 'Carvalho', '34567890000178', '1988-05-20', 15, '91998765432'),
       ('Quintino', 'O', 'Mendes', '12332145600', '1991-10-12', 1, '62998765432'),
       ('Renata', 'P', 'Silveira', '98765412300', '1988-07-23', 7, '67912345678'),
       ('Sofia', 'Q', 'Nascimento', '45698732100', '1993-02-28', 11, '27987654321'),
       ('Thiago', 'R', 'Araújo', '32165478900', '1990-06-09', 6, '83998765432'),
       ('Ursula', 'S', 'Freitas', '78912398700', '1994-12-19', 2, '79912345678');

SELECT * FROM cliente;

-- Inserindo Cartões dos clientes
INSERT INTO Cartão (Cliente_idCliente, Nº_Cartão, Bandeira, Data_Validade)
VALUES (1, '1230567812345678', 'Mastercard', '12/25'),
       (2, '2295678923456789', 'Visa', '11/24'),
       (3, '3456789034567890', 'Elo', '10/23'),
       (4, '4567890145678911', 'Americam Express', '09/22'),
       (5, '5678901056789002', 'Hipercard', '08/21'),
       (6, '6789612367890123', 'Mastercard', '07/26'),
       (7, '7890123478931234', 'Visa', '06/25'),
       (8, '8901234583012345', 'Elo', '05/24'),
       (9, '9012345690123486', 'Americam Express', '04/23'),
       (10, '0123456701234567', 'Hipercard', '03/22'),
       (11, '1234567812345688', 'Mastercard', '02/21'),
       (12, '2345670003456789', 'Visa', '01/26'),
       (13, '3456789034567891', 'Elo', '12/25'),
       (14, '4567890145605901', 'Americam Express', '11/24'),
       (15, '5678901256789022', 'Hipercard', '10/23'),
       (16, '6789012367890123', 'Mastercard', '09/22'),
       (17, '7890123478901234', 'Visa', '08/21'),
       (18, '8901234589012345', 'Elo', '07/26'),
       (19, '9012345690123456', 'Americam Express', '06/25'),
       (20, '1123456701234567', 'Hipercard', '05/24'),
       (2, '1234567812345678', 'Mastercard', '04/23'),
       (10, '2345678923456789', 'Visa', '03/22'),
       (13, '3456789004567890', 'Elo', '02/21'),
       (13, '4567890145678901', 'Americam Express', '01/26'),
       (2, '5678901256789012', 'Hipercard', '12/25'),
       (6, '6789012367890334', 'Mastercard', '11/24'),
       (13, '7290123478901234', 'Visa', '10/23'),
       (8, '8901234589012355', 'Elo', '09/22');

SELECT * FROM cartão;
SELECT idCartão, Nº_Cartão FROM cartão;

--Inserindo Fornecedores

INSERT INTO Fornecedor (Nome_Fantasia, CNPJ, Endereço, Telefone)
VALUES ('Loja ABC', '12345678000190', 16, '11987654321'),
       ('Mercado XYZ', '98765432000112', 17, '21987654321'),
       ('Distribuidora LMN', '45678901000134', 18, '31987654321'),
       ('Comércio QRS', '32165498000156', 19, '41987654321'),
       ('Empresa TUV', '78912345000178', 20, '51987654321');

SELECT * FROM fornecedor;

--Inserindo Vendedores terceirizados
INSERT INTO Vendedor_Terceirizado (CNPJ, Nome_Fantasia, Endereço, Telefone)
VALUES ('12345678000190', 'Vendas ABC', 21, '11987654321'),
       ('98765432000112', 'Serviços XYZ', 22, '21987654321'),
       ('45678901000134', 'Comércio LMN', 23, '31987654321'),
       ('32165498000156', 'Distribuidora QRS', 24, '41987654321'),
       ('78912345000178', 'Empresa TUV', 25, '51987654321');

SELECT * FROM vendedor_terceirizado;

--Inserindo Produtos
INSERT INTO Produto (Categoria, Descrição, Valor)
VALUES ('Eletrônicos', 'Smartphone com 128GB de armazenamento', 1999.99),
       ('Eletrônicos', 'Notebook com 16GB de RAM e 512GB SSD', 3499.99),
       ('Eletrônicos', 'Smart TV 50 polegadas 4K', 2799.99),
       ('Eletrônicos', 'Fone de ouvido Bluetooth', 299.99),
       ('Eletrônicos', 'Tablet com 10 polegadas e 64GB', 1499.99),
       ('Eletrodomésticos', 'Geladeira Frost Free 400L', 2999.99),
       ('Eletrodomésticos', 'Máquina de lavar 10kg', 1999.99),
       ('Eletrodomésticos', 'Micro-ondas 30L', 499.99),
       ('Eletrodomésticos', 'Fogão 4 bocas', 899.99),
       ('Eletrodomésticos', 'Aspirador de pó 1200W', 399.99),
       ('Móveis', 'Sofá 3 lugares', 1299.99),
       ('Móveis', 'Mesa de jantar 6 lugares', 999.99),
       ('Móveis', 'Cama de casal com colchão', 1599.99),
       ('Móveis', 'Guarda-roupa 6 portas', 1899.99),
       ('Móveis', 'Estante para TV', 499.99),
       ('Vestuário', 'Camiseta de algodão', 49.99),
       ('Vestuário', 'Calça jeans', 99.99),
       ('Vestuário', 'Jaqueta de couro', 299.99),
       ('Vestuário', 'Tênis esportivo', 199.99),
       ('Vestuário', 'Vestido de verão', 79.99),
       ('Alimentos', 'Arroz 5kg', 19.99),
       ('Alimentos', 'Feijão 1kg', 7.99),
       ('Alimentos', 'Óleo de soja 900ml', 6.99),
       ('Alimentos', 'Macarrão 500g', 4.99),
       ('Alimentos', 'Açúcar 1kg', 3.99),
       ('Bebidas', 'Refrigerante 2L', 5.99),
       ('Bebidas', 'Suco de laranja 1L', 4.99),
       ('Bebidas', 'Cerveja 350ml', 2.99),
       ('Bebidas', 'Água mineral 500ml', 1.99),
       ('Bebidas', 'Vinho tinto 750ml', 29.99);
    
INSERT INTO Produto (Categoria, Descrição, Valor)
VALUES ('Esportes', 'Bola de Futebol Oficial', 99.90),
       ('Esportes', 'Raquete de Tênis Profissional', 299.90),
       ('Esportes', 'Luvas de Boxe', 150.00),
       ('Esportes', 'Rede de Vôlei', 120.00),
       ('Esportes', 'Kit de Natação', 89.90),
       ('Carros', 'Pneus Radiais 195/65 R15', 350.00),
       ('Carros', 'Óleo de Motor Sintético 5W30', 45.00),
       ('Carros', 'Filtro de Ar Esportivo', 80.00),
       ('Carros', 'Tapetes de Borracha', 60.00),
       ('Carros', 'Capa de Banco de Couro', 200.00),
       ('Motos', 'Capacete de Motociclista com Viseira', 250.00),
       ('Motos', 'Jaqueta de Couro para Motociclista', 450.00),
       ('Motos', 'Luvas de Motociclista', 100.00),
       ('Motos', 'Pneus para Moto 120/70 R17', 300.00),
       ('Motos', 'Kit de Ferramentas para Moto', 75.00),
       ('Ciclismo', 'Bicicleta Mountain Bike 21 Marchas', 1200.00),
       ('Ciclismo', 'Capacete de Ciclismo', 150.00),
       ('Ciclismo', 'Luva de Ciclismo', 50.00),
       ('Ciclismo', 'Garrafa de Água para Bicicleta', 30.00),
       ('Ciclismo', 'Farol de Bicicleta LED', 80.00),
       ('Fitness', 'Esteira Elétrica Dobrável', 2999.00),
       ('Fitness', 'Halteres Ajustáveis', 400.00),
       ('Fitness', 'Tapete de Yoga', 100.00),
       ('Fitness', 'Roda de Exercício Abdominal', 60.00),
       ('Fitness', 'Bola de Pilates', 80.00);
       
SELECT * FROM produto;

--Inserindo endereços dos estoque
INSERT INTO Endereço (Rua, Numero, Bairro, Cidade, Estado, CEP)
VALUES ('Rua das Flores', 101, 'Centro', 'Rio Branco', 'AC', '69900000'),
       ('Avenida Brasil', 202, 'Jardim América', 'Maceió', 'AL', '57000000'),
       ('Rua Amazonas', 303, 'Centro', 'Manaus', 'AM', '69000000'),
       ('Avenida Atlântica', 404, 'Copacabana', 'Rio de Janeiro', 'RJ', '22000000'),
       ('Rua da Liberdade', 505, 'Liberdade', 'São Paulo', 'SP', '01500000'),
       ('Avenida Paulista', 606, 'Bela Vista', 'São Paulo', 'SP', '01310000');

--Inserindo estoque
INSERT INTO Estoque (Endereço, Telefone)
VALUES (31, '31987654321'),
       (26, '31987654322'),
       (30, '31987654323'),
       (28, '31987654324'),
       (27, '31987654325'),
       (29, '31987654326');

SELECT * FROM estoque;

INSERT INTO produto_estoque(Estoque_idEstoque,Produto_idProduto, Quantidade )
VALUES (1, 1, 150),
       (1, 2, 325),
       (1, 3, 60),
       (1, 4, 325),
       (1, 5, 125),
       (2, 6, 25),
       (2, 7, 85),
       (2, 8, 5),
       (2, 9, 60),
       (2, 10, 0),
       (3, 11, 26),
       (3, 12, 25),
       (3, 13, 54),
       (3, 14, 36),
       (3, 15, 12),
       (4, 16, 150),
       (4, 17, 225),
       (4, 18, 56),
       (4, 19, 45),
       (4, 20,  100),
       (5, 21, 350),
       (5, 22, 500),
       (5, 23, 400),
       (5, 24, 235),
       (5, 25, 500),
       (6, 26, 650),
       (6, 27, 256),
       (6, 28, 2600),
       (6, 29, 2405),
       (6, 30, 132 );
       
INSERT INTO produto_fornecedor(Fornecedor_idFornecedor, Produto_IdProduto, Quantidade)
VALUES (2,21,500),
       (2,22,650),
       (2,23,900),
       (2,24,150),
       (2,16,450),
       (1,17,232),
       (1,18,123),
       (1,19,35),
       (1,20,223),
       (3,11,236),
       (3,12,327),
       (3,13,35),
       (3,14,78),
       (3,15,296),
       (4,1,100),
       (4,2,208),
       (4,3,456),
       (4,4,29),
       (4,5,122),
       (5,6,89),
       (5,7,358),
       (5,8,401),
       (5,9,162),
       (5,10,125);

SELECT * FROM fornecedor;

INSERT INTO produto_vendedor_tercerizado(Vendedor_idVendedor_Terceirizado, Produto_idProduto, Quantidade)
VALUES (1, 31, 89),
       (1, 32, 100),
       (1, 33, 150),
       (1, 34, 35),
       (1, 35, 269),
       (5, 36, 48),
       (5, 37, 45),
       (5, 38, 98),
       (5, 39, 67),
       (5, 40, 36),
       (3, 41, 2),
       (3, 42, 15),
       (3, 43, 88),
       (3, 44, 0),
       (3, 45, 25),
       (4, 46, 110),
       (4, 47, 32),
       (4, 48, 76),
       (4, 49, 81),
       (4, 50, 11),
       (2, 51, 93),
       (2, 52, 87),
       (2, 53, 15),
       (2, 54, 8),
       (2, 55, 32);
       
INSERT INTO pedido(Status_pedido, Descrição, Cliente_idCliente,Valor_Pedido)
VALUES ('Enviado', 'Smart TV 50 polegadas 4K', 3, 2799.99),
       ('Em transito','Sofá 3 lugares', 6, 1299.99),
       (DEFAULT, 'Geladeirea Frost Free 400L', 15, 2999.99),
       ('Cancelado','Vestido de verão',20, 79.99),
       ('Entregue', 'Bicicleta Mountain Bike 21 Marchas',16, 1200.00),
       (DEFAULT, 'Esteira Elétrica Dobrável', 2, 2999.00),
       ('Enviado', 'Halteres Ajustáveis', 12, 400.00),
       (DEFAULT, 'Macarrão',14, 4.99),
       ('Enviado','Capacete para Ciclismo', 3, 150.00),
       ('Entregue', 'Luvas para Motociclista', 8, 100.00);

SELECT * FROM pedido;

INSERT INTO produto_pedido(Pedido_idPedido, Produto_idProduto, Quantidade)
VALUES (11, 3, 1),
       (12, 11, 1),
       (14, 6, 3),
       (15, 46, 1),
       (16, 51, 1),
       (17, 52, 3),
       (18, 24, 2),
       (19, 48, 1),
       (20, 43, 2);

SELECT * from pagamento;

INSERT INTO pagamento(Cartão_idCartão, Pedido_idPedido, Parcelas,  Status_, Forma_Pagamento, Frete, Total_Pagar)
VALUES (617, 17, DEFAULT, 'Aprovado', 'A Vista', 25.00, 425.00),
       (637, 12, 5, 'Aprovado', 'Credito', 325, 1624.99),
       (639, 15, 10, 'Aguardando Pagamento', 'Credito',132.85, 1332.85),
       (633, 16, 3, 'Aguardando Pagamento', 'Credito', 312.45, 3311.45),
       (634, 11, 6, 'Aprovado', 'Credito', 85.62, 2885.61),
       (644, 20, 10, 'Aprovado', 'Credito', 12.25, 112.25),
       (641, 14, DEFAULT, 'Pagamento Recusado', 'A Vista', 8.90, 88.89),
       (638, 18, 10, 'Aguardando Pagamento', 'Credito', 3.15, 8.14)

