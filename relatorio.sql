CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE Estado (
	estadoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    UF CHAR(2) NOT NULL
);

CREATE TABLE Municipio (
	municipioID INT PRIMARY KEY AUTO_INCREMENT,
    estadoID INT,
    Nome VARCHAR(80) NOT NULL,
    CodIBGE INT NOT NULL,
    FOREIGN KEY (estadoID) REFERENCES Estado(estadoID)
);

CREATE TABLE Cliente (
	clienteID INT PRIMARY KEY AUTO_INCREMENT,
    municipioID INT,
    Nome VARCHAR(80) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Celular CHAR(11),
    EndLogradouro VARCHAR(100) NOT NULL,
    EndNumero VARCHAR(10) NOT NULL,
    EndMunicipio INT NOT NULL,
    EndCep CHAR(8),
    FOREIGN KEY (municipioID) REFERENCES Municipio(municipioID)
);

CREATE TABLE ContaReceber (
	contaID INT PRIMARY KEY AUTO_INCREMENT,
    clienteID INT,
    FaturaVenda INT,
    DataConta DATE NOT NULL,
    DataVencimento DATE NOT NULL,
    Valor DECIMAL(18,2) NOT NULL,
    Situacao ENUM('1', '2', '3') NOT NULL,
    FOREIGN KEY (clienteID) REFERENCES Cliente(clienteID)
);

SELECT * FROM Estado;
SELECT * FROM Municipio;
SELECT * FROM Cliente;
SELECT * FROM ContaReceber;

SELECT * FROM ContasNPagas;








