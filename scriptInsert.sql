--inserindo endereços
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

INSERT INTO Fornecedor (Nome_Fantasia, CNPJ, Endereço, Telefone)
VALUES ('Loja ABC', '12345678000190', 16, '11987654321'),
       ('Mercado XYZ', '98765432000112', 17, '21987654321'),
       ('Distribuidora LMN', '45678901000134', 18, '31987654321'),
       ('Comércio QRS', '32165498000156', 19, '41987654321'),
       ('Empresa TUV', '78912345000178', 20, '51987654321');

SELECT * FROM fornecedor;

INSERT INTO Vendedor_Terceirizado (CNPJ, Nome_Fantasia, Endereço, Telefone)
VALUES ('12345678000190', 'Vendas ABC', 21, '11987654321'),
       ('98765432000112', 'Serviços XYZ', 22, '21987654321'),
       ('45678901000134', 'Comércio LMN', 23, '31987654321'),
       ('32165498000156', 'Distribuidora QRS', 24, '41987654321'),
       ('78912345000178', 'Empresa TUV', 25, '51987654321');

SELECT * FROM vendedor_terceirizado;

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
SELECT * FROM produto;