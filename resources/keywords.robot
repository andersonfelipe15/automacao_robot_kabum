*** Keywords ***
# Seção onde são definidas palavras-chave reutilizáveis (blocos de ações)

Abrir Site KaBuM
    New Browser    chromium    headless=${False}    # Abre um navegador Chromium com interface visível (headless desativado)
    New Page    ${URL_KABUM}                        # Abre uma nova aba com a URL definida na variável ${URL_KABUM}
    Set Browser Timeout    30s                      # Define timeout padrão de 30 segundos para comandos que esperam elementos

Buscar Produto
    [Arguments]    ${termo}                         # Define o argumento ${termo}, que será o produto a ser buscado
    Wait For Elements State    id=input-busca    visible        # Aguarda o campo de busca ficar visível
    Fill Text    id=input-busca    ${termo}                     # Preenche o campo com o termo informado
    Press Keys    id=input-busca    Enter                       # Pressiona Enter para realizar a busca

Selecionar Primeiro Produto
    Click    text=Notebook Gamer Acer Nitro V15 Intel Core i5-13420H    # Clica no produto com esse nome exato
    Wait For Elements State    [data-testid="ZipCodeInput"]    visible  # Aguarda o campo de CEP ficar visível

Preencher CEP E Validar Frete
    [Arguments]    ${cep}                                      # Define o argumento ${cep}, que será o valor de CEP a preencher
    Click    [data-testid="ZipCodeInput"]                      # Clica no campo de entrada de CEP
    Fill Text    [data-testid="ZipCodeInput"]    ${cep}        # Preenche o campo com o valor do CEP
    Press Keys    [data-testid="ZipCodeInput"]    Enter        # Pressiona Enter para simular o cálculo de frete

Fechar Modal Frete
    Wait For Elements State    button.sc-bBXrwG.kBHzWh    visible    # Aguarda o botão de fechar modal ficar visível
    Click    button.sc-bBXrwG.kBHzWh                               # Clica no botão para fechar o modal de frete

Clicar Comprar
    Click    (//button[contains(., 'COMPRAR')])[1]    # Clica no primeiro botão COMPRAR usando XPath
    Wait For Elements State    text=12 Meses de garantia    visible    # Aguarda o botão de garantia adicional aparecer

Selecionar Garantia Extra
    Click    text=12 Meses de garantia        # Clica no botão de 12 meses de garantia estendida

Ir Para Carrinho
    Click    text=Adicionar serviços          # Clica no botão "Adicionar serviços" para prosseguir
    Wait For Elements State    id=navigation-address-v2 >> role=button[name="Ir para o pagamento"]    visible
    # Aguarda o botão "Ir para o pagamento" ficar visível no carrinho

Validar Produto No Carrinho
    Wait For Elements State    id=navigation-address-v2 >> role=button[name="Ir para o pagamento"]    visible
    # Valida que o botão "Ir para o pagamento" ainda está visível, confirmando que o produto foi adicionado ao carrinho
