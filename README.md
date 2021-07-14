# Projeto_SUS_Interligado <img align="center" height="50" src="https://user-images.githubusercontent.com/67704261/125553462-c103317d-eba3-4cfc-9c6e-9368875854a9.png" />
Projeto desenvolvido com o objetivo de aprimorar os conhecimentos em desenvolvimetno Full Stack 

### Sobre:
Neste projeto, iremos criar um banco de dados interligado com todas as informações de um paciente, podendo ao ser consultado em qualquer lugar do Brasil, o médico responsável pelo atendimento ter acesso a todas as informações do paciente como alergias, vacinas, comorbidades, medicações, histórico de consultas, receitas médicas anteriores, tratamentos realizados e mais outras informações de saúde que poderam ser acrescentadas ao longo do desenvolvimento.

Ainda em estudo, algumas informações serão apresentadas apenas para o médico de confiança do paciente para fins de proteção de dados.

<p align="center">
  <img align="center" height="250" src="https://user-images.githubusercontent.com/67704261/125553639-2adffd6c-2c88-4299-b8a0-52ba3f3c01c6.png" />
</p>



### Objetivo 1:

#### Tabela com as Informações do Beneficiário - 
- CPF (obrigatório)
- Nome (obrigatório)
- Data de nascimento (obrigatório)
- Endereço (obrigatório)

#### Tabela com as Informações dos Prestadores de Serviço (Médicos/Hospitais/Clinicas/Convênios) - 
- Prestador	
-   PrestadorId
		- RazaoSocial varchar(500)
		- CNPJ		numeric(15,0)
  
- Serviço 
  - Descrição
  - Valor
	
	- Prestador	
			PrestadorId
			RazaoSocial varchar(500)
			CNPJ		numeric(15,0)
						
	- Serviço
			ServicoId
			Descricao varchar(500)
					
	- PrestadorServicoValor
			ServicoId int
			PrestadorId int
			Valor money
					
	- PrestadorEnderecoAtendimento
			PrestadorEnderecoAtendimentoId primary Key identity(1,1)
			PrestadorId
			CEP
			Complemento
			Bairro
			Cidade
			UF
