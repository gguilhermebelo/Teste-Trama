*** Settings ***
Library	SeleniumLibrary
Library    Screenshot



*** Variables ***
${BROWSER}	chrome 
${URL}		http://localhost/trama/SemLogin/index.html
${NOME}    Yasmin
${SOBRENOME}    Carmona
${CPF}    420.298.938-46
${CNPJ}    98.509.568/0001-37
${SENHA}	senha@1234
${SENHAHASH}    $2y$10$7yV6LQE5BalsmA3QQL
${TITULO}     TRAMA - MODA SUSTENTÁVEL
${TEXTO_DETALHE}    DETALHES DAS VENDAS


*** Keywords ***
Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window

Fechar o navegador
    Sleep    2
	Close Browser

Acessar a pagina home page do site Trama
	Go To	url=${URL}

Acessar a pagina de login do sistema
    Click Element    xpath://a[@href='../Login/login.html']


Selecionar Campo "Cliente"
    Click Element    xpath://input[@id='cliente']


Inserir credencias requeridas (CPF e senha) ja cadastradas no banco
    Input Text    xpath://input[@id='cpf']        ${CPF}
    Input Text    xpath://input[@id='senha']      ${SENHA}

Clicar em "Entrar"
    Click Button  xpath://input[@value='ENTRAR']

Verificar se o título da página é TRAMA - MODA SUSTENTÁVEL
    Title Should Be    title=${TITULO}

Selecionar Campo "Empresa"
    Click Element    xpath://input[@id='empresa']

Inserir credencias requeridas (CNPJ e senha) ja cadastradas no banco
    Input Text    xpath://input[@id='cnpj']        ${CNPJ}
    Input Text    xpath://input[@id='senha']      ${SENHAHASH}


Clicar no botão de "Dashboard"
    Click Element    xpath:/html/body/header/a[2]/button

Verificar o texto da página como "DETALHES DAS VENDAS"
    Element Text Should Be    xpath=//h5[contains(text(),'DETALHES DAS VENDAS')]    ${TEXTO_DETALHE}
    Sleep    2
    Take Screenshot    detalhe_vendas_evidencia