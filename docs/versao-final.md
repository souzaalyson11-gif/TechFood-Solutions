# Entrega 6: Versão Final e Revisão

Este documento consolida o encerramento do projeto **TechFood-Solutions**, apresentando as considerações finais, a revisão bibliográfica completa, a estrutura planejada para os slides de apresentação e o roteiro de demonstração prática do protótipo.

---

## 18. CONCLUSÃO

O desenvolvimento da plataforma integrada **TechFood-Solutions** cumpriu com sucesso todos os objetivos gerais e específicos delimitados no início do projeto. A automação do fluxo de pedidos online demonstrou eficácia na redução do tempo de atendimento simulado, enquanto o mecanismo de baixa integrada mitigou gargalos comuns de falha de comunicação entre o balcão de vendas e o estoque físico de insumos do restaurante.

A Engenharia de Software e a aplicação das metodologias ágeis (Scrum/Kanban) mostraram-se fundamentais para mitigar os riscos técnicos identificados ao longo do cronograma. Como trabalho futuro, recomenda-se a integração de gateways de pagamento real em ambientes de produção (Pix/Cartão) e o desenvolvimento de módulos baseados em inteligência artificial para previsão de demanda de estoque sazonal. A equipe conclui que a transformação digital contínua é o pilar indispensável para a sustentabilidade financeira de pequenos e médios estabelecimentos no setor de alimentação.

---

## 19. REFERÊNCIAS BIBLIOGRÁFICAS (Consolidada)

* BALLOU, Ronald H. **Gerenciamento da Cadeia de Suprimentos/Logística Empresarial**. 5. ed. Porto Alegre: Bookman, 2006.
* PORTER, Michael E. **Estratégia Competitiva: Técnicas para Análise de Indústrias e da Concorrência**. Edição Revista. Rio de Janeiro: Elsevier, 2006.
* PRESSMAN, Roger S.; MAXIM, Bruce R. **Engenharia de Software: uma abordagem profissional**. 8. ed. Porto Alegre: AMGH, 2016.
* SOMMERVILLE, Ian. **Engenharia de Software**. 9. ed. São Paulo: Addison-Wesley, 2011.

---

## 20. ESTRUTURA DOS SLIDES DA APRESENTAÇÃO FINAL (Rascunho)

Roteiro de 7 slides planejado para a defesa do projeto perante a banca examinadora:

* **Slide 1: Capa** — Nome do projeto (TechFood-Solutions), logotipo e integrantes do grupo.
* **Slide 2: Contexto e Problema** — A desorganização operacional em restaurantes e o desperdício de insumos no estoque.
* **Slide 3: Objetivos e Escopo** — Apresentação do objetivo geral de centralizar a operação web e os limites do escopo.
* **Slide 4: Fundamentação e Requisitos** — Engenharia de requisitos e os principais Requisitos Funcionais (Autenticação, Pedidos, Baixa Automática).
* **Slide 5: Arquitetura Técnica** — Exibição do Diagrama de Blocos/Mermaid demonstrando o fluxo da camada cliente até o PostgreSQL.
* **Slide 6: Demonstração do Protótipo** — Gravação ou teste ao vivo das rotas de cadastro e logs de conexão.
* **Slide 7: Conclusão e Próximos Passos** — Resultados obtidos, trade-offs aceitos e sugestões de evolução do sistema.

---

## 21. ENSAIO DA DEMONSTRAÇÃO PRÁTICA (Script de Apresentação)

Roteiro planejado para guiar a equipe durante os 5 minutos de teste em tempo real do sistema para a banca:

1. **Minuto 1 (Abertura)**: O apresentador inicia na página inicial do repositório, explica brevemente o propósito do sistema e abre o terminal local mostrando o comando `npm run dev` rodando o servidor.
2. **Minuto 2 (Fluxo de Cadastro)**: Realizar o cadastro de um usuário de teste (ex: `cliente_teste@email.com`) utilizando uma ferramenta como Postman/Insomnia ou a própria tela web, mostrando o status retornando `201 Created`.
3. **Minuto 3 (Validação de Erro)**: Forçar o erro de negócio do requisito **RF-01** (tentar cadastrar o mesmo e-mail duplicado) para provar para a banca que o sistema valida as regras descritas no plano de testes (**CT-01**).
4. **Minuto 4 (Simulação de Negócio/Estoque)**: Mostrar no banco de dados a contagem atual de um item no estoque e executar uma requisição simulando a venda do prato. Exibir o log de banco de dados provando que a redução de estoque ocorreu em tempo real.
5. **Minuto 5 (Fechamento)**: Mostrar os logs gerados finais no terminal (sem travamentos) e abrir espaço para as perguntas dos professores avaliadores.
