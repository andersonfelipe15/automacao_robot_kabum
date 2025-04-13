# 🧪 Automação de Testes - KaBuM! com Robot Framework

Este projeto tem como objetivo automatizar o fluxo de compra de um notebook no site [KaBuM!](https://www.kabum.com.br), utilizando o **Robot Framework** com a biblioteca **Browser (Playwright)**.

## 🚀 Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)
- [Browser Library (Playwright)](https://github.com/MarketSquare/robotframework-browser)
- Python 3.8+
- VS Code (recomendado)

## 📋 Pré-requisitos

1. Python instalado (recomenda-se Python 3.8 ou superior)
2. Instalar dependências:

```bash
pip install robotframework
pip install robotframework-browser
rfbrowser init

🧪 Cenários de Teste Automatizados
O fluxo automatizado realiza as seguintes etapas:

Acessa o site www.kabum.com.br

Realiza uma busca pelo termo "notebook"

Seleciona o primeiro produto da lista de resultados

Informa um CEP válido e valida os valores dos fretes disponíveis

Fecha a tela de opções de frete

Clica no botão "Comprar"

Seleciona a opção de garantia estendida de +12 meses

Clica em "Ir para o carrinho"

Valida que o produto foi corretamente adicionado ao carrinho

🧪 Execução dos Testes
Para executar os testes, utilize o comando abaixo:


robot tests/teste_compra_notebook.robot

📁 Estrutura do Projeto

📁 seu-projeto/
├── tests/
│   └── compra_kabum.robot         # Testes automatizados do fluxo de compra
├── resources/
│   └── keywords.robot             # Keywords reutilizáveis (se houver)
├── README.md
└── requirements.txt               # Dependências do projeto (opcional)


🛠️ Contribuição
Pull requests são bem-vindos! Para mudanças maiores, por favor, abra uma issue antes de propor alterações.

📄 Licença
Este projeto está sob a licença MIT.
