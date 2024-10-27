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

CT2 - Visualização do Dashboard
    [Documentation]     Esse teste verifica a visualização do dashboard de vendas
	[Tags]    visualizar_vendas
	    Acessar a pagina home page do site Trama
		Acessar a pagina de login do sistema
		Selecionar Campo "Empresa"
		Inserir credencias requeridas (CNPJ e senha) ja cadastradas no banco
		Clicar em "Entrar"
		Clicar no botão de "Dashboard"
        Verificar o texto da página como "DETALHES DAS VENDAS"
 