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


SHOW TABLES;

SELECT * FROM endereço;
SELECT cidade, estado FROM endereço;