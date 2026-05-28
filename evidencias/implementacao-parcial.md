# Entrega 4: Implementação Parcial e Evidências

Este documento detalha o estado atual do desenvolvimento do sistema **TechFood-Solutions**, apresentando os componentes técnicos já codificados, as evidências de funcionamento do protótipo e o manual técnico de reprodução do ambiente local.

---

## 12. RELATÓRIO DE DESENVOLVIMENTO (Implementação Parcial)

A fase inicial de implementação do sistema **TechFood-Solutions** concentrou-se na estruturação da arquitetura base do software, na configuração do ambiente de desenvolvimento back-end e na modelagem inicial do banco de dados relacional. O objetivo principal foi consolidar a fundação técnica do sistema para garantir que os módulos complexos (pedidos e sincronização de estoque) operem de forma integrada nas próximas etapas.

Até o momento, as seguintes camadas e componentes foram desenvolvidos:

1. **Estrutura de Servidor Web (Back-end)**: Inicialização do ambiente utilizando Node.js associado ao framework Express. Foram configurados os middlewares essenciais para tratamento de requisições JSON, gerenciamento de rotas e segurança básica de cabeçalhos.
2. **Camada de Persistência (Banco de Dados)**: Configuração do driver de conexão com o SGBD PostgreSQL. Foram elaborados os scripts SQL iniciais de migração (DDL) para criação automática das tabelas essenciais da aplicação: `usuarios`, `produtos` e `estoque`.
3. **Módulo de Autenticação e Rotas Iniciais (Protótipo)**: Desenvolvimento das primeiras rotas da API (`/api/usuarios/cadastro` e `/api/usuarios/login`). Este módulo valida os campos recebidos diretamente no servidor de acordo com as restrições estipuladas na especificação de requisitos da Entrega 2.

---

## 13. PASSO A PASSO PARA REPRODUÇÃO

Para clonar, configurar e executar o protótipo parcial da aplicação em uma estação de trabalho local, siga detalhadamente as instruções descritas abaixo:

### 13.1 Pré-requisitos Técnicos
Certifique-se de ter instalado e configurado no sistema operacional:
* **Node.js** (versão estável 18.x ou superior)
* **Gerenciador de Pacotes NPM** (instalado automaticamente junto ao Node.js)
* **SGBD PostgreSQL** (instância local ativa ou credenciais de um banco em nuvem)
* Um terminal de comandos (Git Bash, Terminal Linux ou PowerShell)

### 13.2 Instruções de Configuração

1. **Clonar o Repositório Oficial**:
   Abra o terminal e execute o comando para clonar o repositório do projeto:
   ```bash
   git clone https://github.com
   cd TechFood-Solutions
   ```

2. **Instalar as Dependências do Projeto**:
   Baixe todos os pacotes e frameworks necessários listados no arquivo `package.json`:
   ```bash
   npm install
   ```

3. **Configurar as Variáveis de Ambiente**:
   Crie um arquivo texto na raiz do projeto com o nome exato de `.env` e defina as variáveis de conexão com o banco de dados conforme o exemplo:
   ```env
   PORT=3000
   DB_HOST=localhost
   DB_USER=seu_usuario_postgres
   DB_PASSWORD=sua_senha_postgres
   DB_NAME=techfood_db
   ```

4. **Inicializar o Servidor em Modo de Desenvolvimento**:
   Execute o script de inicialização contínua para subir o servidor local:
   ```bash
   npm run dev
   ```
   *O terminal deverá exibir a mensagem de confirmação indicando o status ativo da aplicação (ex: `[Server] Servidor rodando com sucesso na porta 3000`).*

---

## 14. EVIDÊNCIAS DE IMPLEMENTAÇÃO E LOGS

Abaixo está consolidado o painel visual com as evidências do funcionamento, estrutura do repositório, documentação e artefatos técnicos desenvolvidos para o sistema **TechFood-Solutions**.

<p align="center">
  <img src="painel-evidencias.jpg" alt="Painel Consolidado de Evidências" width="100%">
</p>


| ID | Cenário / Componente Avaliado | Status do Teste | Evidência Técnica |
| :--- | :--- | :--- | :--- |
| **EVID-01** | Estrutura e Organização do Repositório Git |  Sucesso | Conforme painel visual (Evidência 1) |
| **EVID-02** | Fundamentação Teórica e Revisão Técnica |  Sucesso | Conforme painel visual (Evidência 2 e 5) |
| **EVID-03** | Métricas de Resultados e Tabelas Consolidadas |  Sucesso | Conforme painel visual (Evidência 3) |
| **EVID-04** | Scripts SQL de Análise e Artefatos Técnicos |  Sucesso | Conforme painel visual (Evidência 4) |
| **EVID-05** | Alinhamento de Escopo e README do Projeto |  Sucesso | Conforme painel visual (Evidência 6) |
