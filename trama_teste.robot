*** Settings ***
Documentation    Essa suíte testa o site da Trama
Resource         trama_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

# branch yasmin

*** Test Cases ***
CT1 - Login Cliente
	[Documentation]    Esse teste verifica o login de um usuario ativo
	[Tags]             login_cliente
		Acessar a pagina home page do site Trama
		Acessar a pagina de login do sistema
		Selecionar Campo "Cliente"
		Inserir credencias requeridas (CPF e senha) ja cadastradas no banco
		Clicar em "Entrar"
		Verificar se o título da página é TRAMA - MODA SUSTENTÁVEL

CT2 - Cadastro de produto sem imagem
    [Documentation]     Esse teste verifica o cadastro de um produto sem preço
	[Tags]    cadastro_produto
	    Acessar a pagina home page do site Trama
		Acessar a pagina de login do sistema
		Selecionar Campo "Empresa"
		Inserir credencias requeridas (CNPJ e senha) ja cadastradas no banco
		Clicar em "Entrar"
		Preencher dados válidos para o novo produto menos a imagem
		Clicar em "Seus Produtos"
		Verificar o valor do src da imagem