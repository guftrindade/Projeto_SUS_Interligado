DROP TABLE IF EXISTS PrestadorEndereco
DROP TABLE IF EXISTS PrestadorServicos
DROP TABLE IF EXISTS BeneficiarioEndereco
DROP TABLE IF EXISTS Beneficiario
DROP TABLE IF EXISTS Endereco
DROP TABLE IF EXISTS Prestador
DROP TABLE IF EXISTS Servicos


CREATE TABLE Beneficiario(
	IdBeneficiario INT PRIMARY KEY IDENTITY(1,1),
	CPF NUMERIC(11) NOT NULL,
	Nome VARCHAR(500) NOT NULL,
	DtaNascimento DATE NOT NULL
)
GO


CREATE TABLE Endereco(
	IdEndereco INT PRIMARY KEY IDENTITY(1,1),
	Logradouro VARCHAR(500) NOT NULL,
	Numero VARCHAR(15) NOT NULL,
	Bairro VARCHAR(100) NOT NULL,
	CEP INT NOT NULL,
	Cidade VARCHAR(100) NOT NULL,
	Estado VARCHAR (2) NOT NULL
)


CREATE TABLE BeneficiarioEndereco(
	IdBeneficiarioEndereco INT PRIMARY KEY IDENTITY(1,1),
	IdBeneficiario INT FOREIGN KEY REFERENCES Beneficiario (IdBeneficiario),
	IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
)
go

CREATE TABLE Prestador(
	IdPrestador INT PRIMARY KEY IDENTITY (1,1),
	RazaoSocial VARCHAR(500) NOT NULL,
	CNPJ NUMERIC(14)
)
GO

CREATE TABLE Servicos(
	IdServico INT PRIMARY KEY IDENTITY (1,1),
	Descricao VARCHAR (100) NOT NULL,
)
GO

CREATE TABLE PrestadorServicos(
	IdPrestador INT FOREIGN KEY REFERENCES Prestador (IdPrestador),
	IdServico INT FOREIGN KEY REFERENCES Servicos (IdServico)
)
GO

CREATE TABLE PrestadorEndereco(
	IdPrestadorEndereco INT PRIMARY KEY IDENTITY (1,1),
	IdPrestador INT FOREIGN KEY REFERENCES Prestador (IdPrestador),
	IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
)
GO
