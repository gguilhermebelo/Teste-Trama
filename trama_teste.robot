*** Settings ***
Documentation    Essa suíte testa o site da Trama
Resource         trama_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador



*** Test Cases ***
CT1 - Cadastro de conta com CPF inativo
	[Documentation]    Esse teste verifica o cadastro um usuario com um cpf inativo
	[Tags]             cadastro_CPFInativo
    Acessar a pagina home do site
    Clicar no Botão de Login
	Entrar na Aba "AINDA NÃO TENHO UMA CONTA"
    Preencher dados válidos uma nova conta, mas inserir no campo "CPF" numeros inexistente
	Verificar Impedimento de Cadastro


CT2 - Realizar Login com credenciais já definidas
    [Documentation]    Esse teste verifica o login de um usuario ativo
	[Tags]             cadastro_Login 
	Acessar a pagina home do site
    Clicar no Botão de Login
	Selecionar Campo "Empresa"
	Inserir credencias requeridas (CNPJ e senha) ja cadastradas no banco
	Clicar em "Entrar"
	Verificar se o título da página é TRAMA - MODA SUSTENTÁVEL

CT3 - Login Cliente
	[Documentation]    Esse teste verifica o login de um usuario ativo
	[Tags]             login_cliente
	Acessar a pagina home do site
	Clicar no Botão de Login 
	Selecionar Campo "Cliente"
	Inserir credencias requeridas (CPF e senha) ja cadastradas no banco
	Clicar em "Entrar"
	Verificar se o título é TRAMA - MODA SUSTENTÁVEL

CT4 - Visualização do Dashboard
    [Documentation]     Esse teste verifica a visualização do dashboard de vendas
	[Tags]    visualizar_vendas
	Acessar a pagina home do site
	Clicar no Botão de Login
	Selecionar Campo "Empresa"
	Inserir credencias (CNPJ e senha) ja cadastradas no banco
	Clicar em "Entrar"
	Clicar no botão de "Dashboard"
    Verificar o texto da página como "DETALHES DAS VENDAS"
 


