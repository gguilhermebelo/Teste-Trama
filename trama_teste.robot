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
	Verificar se o título da página


