
# VENDORIT - Sistema de Gestão de Produtos

VENDORIT é um sistema de gestão de produtos voltado para pequenos e médios comércios, que permite controle de estoque, cadastro de produtos, geração de relatórios, e um sistema de vendas (PDV). O sistema também oferece suporte ao modo offline com sincronização de dados ao reconectar à internet.

## Funcionalidades Principais

- **Controle de Estoque**: Cadastro de produtos, controle de entradas e saídas, alertas de reposição.
- **Sistema de Vendas (PDV)**: Registros de vendas, emissão de recibos, integração com leitores de código de barras.
- **Relatórios**: Geração de relatórios de vendas e movimentações de estoque.
- **Controle de Usuários**: Diferentes níveis de permissão (admin, gerente, vendedor).
- **Modo Offline**: Operação offline com sincronização de dados ao voltar a ficar online.

## Tecnologias Utilizadas

- **Frontend**: Delphi
- **Backend**: PHP (API RESTful)
- **Banco de Dados**: MySQL (online) e SQLite (modo offline)
- **Comunicação**: API REST entre o frontend e o backend
- **CI/CD**: (opcional) GitHub Actions/CI para automação de testes e builds

## Pré-requisitos

Antes de começar, certifique-se de ter as seguintes ferramentas instaladas:

- [Delphi 12 CE](https://www.embarcadero.com/br/products/delphi/starter/free-download) para a interface gráfica.
- [VS Code](https://code.visualstudio.com/) para edição do código PHP.
- [MySQL](https://www.mysql.com/downloads/) para o banco de dados principal.
- [SQLite](https://www.sqlite.org/download.html) para o modo offline.
- [Git](https://git-scm.com/) para controle de versão.
- [Composer](https://getcomposer.org/) para gerenciar dependências do PHP.

## Instalação

1. **Clone este repositório**:
   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio


2. **Instale as dependências PHP** (backend):
   ```bash
   composer install
   ```

3. **Configuração do Banco de Dados**:
   - Crie um banco de dados MySQL e configure as credenciais no arquivo `.env`.
   - Execute as migrações:
     ```bash
     php artisan migrate
     ```

4. **Configuração do Delphi**:
   - Abra o projeto Delphi com a IDE e configure as dependências necessárias.
   - Execute a aplicação Delphi para carregar a interface.

5. **Servidor Local PHP**:
   Para iniciar o backend PHP localmente:
   ```bash
   php -S localhost:8000 -t public
   ```

6. **Servidor MySQL**:
   Inicie o servidor MySQL e garanta que o banco de dados esteja conectado.

## Como Executar

1. **Delphi**: Execute o frontend na IDE Delphi.
2. **PHP Backend**: Inicie o servidor PHP com o comando `php -S localhost:8000`.
3. **Banco de Dados**: Garanta que o MySQL esteja em execução e acessível.

A aplicação Delphi se comunicará com a API PHP para todas as operações CRUD e movimentações de estoque.

## CI/CD (Integração Contínua e Entrega Contínua)

Para automação de testes e builds, usamos [GitHub Actions](https://docs.github.com/en/actions) como ferramenta CI/CD.

### Configuração do CI/CD

1. **Crie o arquivo `.github/workflows/ci.yml`** no repositório:

   ```yaml
   name: CI Pipeline

   on:
     push:
       branches:
         - main
     pull_request:
       branches:
         - main

   jobs:
     build:
       runs-on: ubuntu-latest

       steps:
         - name: Checkout repository
           uses: actions/checkout@v2

         - name: Set up PHP
           uses: shivammathur/setup-php@v2
           with:
             php-version: '7.4'

         - name: Install dependencies
           run: composer install

         - name: Run tests
           run: phpunit --configuration phpunit.xml
   ```

2. **Ative o GitHub Actions** no seu repositório:
   - Acesse o seu repositório no GitHub.
   - Vá para a aba **Actions**.
   - Ative o GitHub Actions para começar a execução do pipeline sempre que houver um push na branch `main`.

O pipeline acima realiza:
- Build da aplicação PHP.
- Instalação de dependências via Composer.
- Execução de testes automatizados via PHPUnit.

## Testes

- Utilize [PHPUnit](https://phpunit.de/) para testar as funcionalidades do backend.
- Para o frontend Delphi, testes manuais serão necessários inicialmente.

## Contribuição

Sinta-se à vontade para abrir issues e pull requests com sugestões de melhorias, correções de bugs ou novas funcionalidades.

## Licença

Este projeto está licenciado sob a [MIT License](./LICENSE).

