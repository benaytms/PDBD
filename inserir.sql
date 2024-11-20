USE LOJA;

INSERT INTO Estado (Nome, UF)
VALUES ('Paraná', 'PR'), ('São Paulo', 'SP'), ('Minas Gerais', 'MG');

INSERT INTO Municipio (Nome, CodIBGE, estadoID)
VALUES ('Curitiba', 4106902, 1), ('Guarulhos', 3518800, 2), ('Uberlândia', 3170206, 3);

INSERT INTO Cliente (Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCep, municipioID)
VALUES ('Wellignton Souza', '71871085918', '41933645482', 'Rua Benjamin Valente', '12', 41, '82400140', 1), 
('Vinicius Costa', '24715945819', '18934358758', 'Viela Côcos', '25', 35, '07273061', 2), 
('Leticia Victoria', '68827857672', '31932596436', 'Rua dos Acantos', '1469', 31, '38412194', 3);

INSERT INTO ContaReceber (FaturaVenda, DataConta, DataVencimento, Valor, Situacao, clienteID)
VALUES (1001, '2024-01-01', '2024-02-01', 465.00, '1', 1),
(1002, '2023-06-02', '2023-07-02', 652.00, '3', 2),
(1003, '2019-04-23', '2019-05-23', 1056.00, '2', 3);
