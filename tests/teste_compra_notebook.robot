
*** Settings ***
Library           Browser
Resource          ../resources/keywords.robot
Resource          ../variables/vars.robot

*** Test Cases ***
Fluxo de Compra de Notebook na KaBuM
    Abrir Site KaBuM
    Buscar Produto    notebook
    Selecionar Primeiro Produto
    Preencher CEP E Validar Frete    13180-160
    Fechar Modal Frete
    Clicar Comprar
    Selecionar Garantia Extra
    Ir Para Carrinho
    Validar Produto No Carrinho
