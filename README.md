# TechFood-Solutions

A TechFood Solutions é uma empresa fictícia que desenvolve aplicativos e sistemas para restaurantes e serviços de delivery. A empresa oferece soluções digitais para cadastro de clientes, pedidos online, controle de estoque e gestão de entregas, ajudando restaurantes a organizar melhor suas operações e melhorar o atendimento aos clientes.

---

## 1. INTRODUÇÃO (Contexto e Problema)

No cenário atual, o setor de alimentação fora do lar, que engloba restaurantes, lanchonetes e serviços de *delivery*, enfrenta uma concorrência feroz e margens de lucro cada vez mais apertadas. A transformação digital tornou-se obrigatória para a sobrevivência desses negócios. No entanto, muitos estabelecimentos de pequeno e médio porte ainda dependem de processos manuais ou utilizam múltiplos sistemas descentralizados que não se comunicam entre si. 

O grande problema enfrentado por esses restaurantes é a **desorganização operacional**. A falta de centralização gera falhas graves: pedidos que atrasam ou são anotados errados, falta de controle real sobre o estoque (resultando em desperdício de insumos ou falta de ingredientes em horários de pico) e ausência de um histórico confiável de dados dos clientes. Sem uma ferramenta integrada, a gestão se torna ineficiente, elevando os custos operacionais e prejudicando drasticamente a experiência do cliente final.

## 2. OBJETIVOS

### 2.1 Objetivo Geral
Desenvolver um sistema web integrado de gestão e *delivery* para restaurantes, chamado **TechFood-Solutions**, com o propósito de centralizar as operações de atendimento, controle de estoque e gerenciamento de entregas em uma única plataforma digital.

### 2.2 Objetivos Específicos
1. **Automatizar o fluxo de pedidos**: Criar uma interface digital para cadastro de clientes e realização de pedidos online, reduzindo o tempo de atendimento e a ocorrência de erros manuais.
2. **Implementar o controle de estoque em tempo real**: Desenvolver um módulo automatizado que dê baixa nos insumos do estoque à medida que os pratos e pedidos forem validados e vendidos.
3. **Otimizar a gestão de entregas**: Desenvolver um painel de controle logístico para o monitoramento do status das entregas, auxiliando os entregadores e fornecendo transparência ao cliente final.

## 3. ESCOPO

### 3.1 O que o projeto inclui (Escopo Incluso)
* Interface web responsiva para o cliente final realizar cadastro e pedidos.
* Painel administrativo interno para o restaurante gerenciar o cardápio e os preços.
* Módulo de controle de estoque com alertas para produtos com baixa quantidade.
* Painel de monitoramento de pedidos em tempo real (Recebido, Em Preparo, Saiu para Entrega, Entregue).
* Banco de dados para armazenamento seguro de dados de clientes, produtos e vendas.

### 3.2 O que o projeto NÃO inclui (Escopo Não Incluso)
* Integração com gateways de pagamento real (cartão de crédito/Pix em produção) — o sistema aceitará apenas simulação de pagamento na entrega.
* Desenvolvimento de aplicativos nativos para Android/iOS (o sistema será estritamente Web).
* Sistema de geolocalização por mapa em tempo real via GPS para o entregador (o status será atualizado manualmente pelo painel).
* Módulo avançado de emissão de notas fiscais eletrônicas (NF-e).

## 4. LISTA DE RISCOS INICIAIS

1. **Risco 1 - Atraso no cronograma de desenvolvimento**: Devido à complexidade de integrar três módulos distintos (pedidos, estoque e entregas), a equipe pode enfrentar gargalos técnicos, atrasando as datas de entrega.
2. **Risco 2 - Incompatibilidade de Banco de Dados**: Dificuldades na modelagem e relacionamento de dados entre o consumo de estoque e a geração de pedidos, podendo causar inconsistência nas informações apresentadas.
3. **Risco 3 - Problemas na Responsividade da Interface**: O sistema pode apresentar falhas de usabilidade ou quebras de layout quando acessado por dispositivos móveis (smartphones dos clientes), prejudicando a experiência do usuário.

4. ---

## 5. FUNDAMENTAÇÃO TEÓRICA

O desenvolvimento do sistema **TechFood-Solutions** fundamenta-se em três pilares principais: a arquitetura de sistemas web, a engenharia de requisitos para a garantia de qualidade de software, e a administração de recursos voltada ao controle de estoque logístico.

### 5.1 Sistemas Web e Transformação Digital no Setor Alimentar
A migração de processos manuais para plataformas digitais no ecossistema de restaurantes não é apenas uma tendência, mas uma necessidade de sobrevivência mercadológica. De acordo com Porter (2006), a tecnologia da informação redefine a cadeia de valor das empresas, permitindo vantagens competitivas por meio da otimização operacional e da redução de custos. Sistemas baseados na web oferecem flexibilidade e acessibilidade, permitindo que gestores controlem a operação de qualquer dispositivo conectado, agilizando o fluxo que vai do recebimento do pedido até a entrega ao cliente.

### 5.2 Engenharia de Requisitos e Critérios de Aceitação
Para que um software atenda com precisão às demandas do usuário, a etapa de elicitação e especificação de requisitos é indispensável. Conforme preconiza Pressman (2016), os Requisitos Funcionais descrevem o comportamento e as funções que o sistema deve executar, enquanto os Requisitos Não Funcionais estabelecem restrições de desempenho, segurança e usabilidade. Complementarmente, Somerville (2011) destaca que os Critérios de Aceitação servem como um contrato técnico e de negócios, definindo de antemão as condições exatas que uma funcionalidade deve cumprir para ser validada como concluída e livre de erros.

### 5.3 Gestão de Estoque Automatizada
A integração entre o fluxo de vendas e o controle de insumos é um fator crítico para a lucratividade no setor de alimentação. Conforme abordado por Ballou (2006), a automação do controle de estoque reduz significativamente os custos de manutenção e evita tanto a ruptura (falta de produto para venda) quanto o desperdício de itens perecíveis. A baixa automatizada em tempo real garante dados confiáveis para a tomada de decisão do gerente do estabelecimento.

---

## 6. ESPECIFICAÇÃO DE REQUISITOS E CRITÉRIOS DE ACEITAÇÃO

Abaixo estão detalhados os Requisitos Funcionais (RF) e Não Funcionais (RNF) planejados para o sistema, acompanhados de seus respectivos Critérios de Aceitação.

### 6.1 Requisitos Funcionais (RF)


| ID | Descrição do Requisito | Critérios de Aceitação |
| :--- | :--- | :--- |
| **RF-01** | **Cadastro e Autenticação de Usuários:** O sistema deve permitir que clientes e administradores criem contas e façam login de forma segura. | • O sistema deve validar e impedir e-mails duplicados.<br>• Senhas devem ter no mínimo 6 caracteres.<br>• Exibir mensagem de erro clara em caso de credenciais inválidas. |
| **RF-02** | **Realização de Pedidos Online:** O cliente deve ser capaz de selecionar itens do cardápio, adicioná-los ao carrinho e finalizar o pedido simulando pagamento na entrega. | • O carrinho deve calcular o valor total automaticamente.<br>• O usuário deve receber uma tela de confirmação com o número do pedido após finalizar.<br>• Bloquear a finalização se o carrinho estiver vazio. |
| **RF-03** | **Controle de Estoque com Baixa Automática:** O sistema deve atualizar a quantidade de insumos disponíveis assim que um prato correspondente for vendido. | • A quantidade do ingrediente deve diminuir exatamente no volume configurado na receita.<br>• Se o item atingir a quantidade mínima, o painel deve exibir um alerta visual.<br>• Impedir a venda de pratos cujos ingredientes estejam zerados. |
| **RF-04** | **Atualização do Status de Entrega:** O painel administrativo deve permitir que o atendente altere o status do pedido (Recebido, Em Preparo, Saiu para Entrega, Entregue). | • Cada alteração de status deve atualizar a tela do cliente em tempo real ou ao atualizar a página.<br>• O sistema deve registrar o horário exato de cada mudança de status para fins de relatório. |

### 6.2 Requisitos Não Funcionais (RNF)


| ID | Descrição do Requisito | Critérios de Aceitação |
| :--- | :--- | :--- |
| **RNF-01**| **Interface Responsiva:** O layout do sistema deve ser adaptável a diferentes tamanhos de tela (computadores, tablets e celulares). | • Elementos visuais não podem quebrar ou se sobrepor em telas de smartphones (largura de até 360px).<br>• O menu de navegação deve virar um menu hambúrguer no celular. |
| **RNF-02**| **Desempenho e Tempo de Resposta:** As páginas de consulta de cardápio e finalização de pedido devem carregar de maneira rápida. | • O tempo máximo de carregamento de uma página interna não deve ultrapassar 3 segundos sob conexões normais de internet. |

---

## 7. REFERÊNCIAS BIBLIOGRÁFICAS

* BALLOU, Ronald H. **Gerenciamento da Cadeia de Suprimentos/Logística Empresarial**. 5. ed. Porto Alegre: Bookman, 2006.
* PORTER, Michael E. **Estratégia Competitiva: Técnicas para Análise de Indústrias e da Concorrência**. Edição Revista. Rio de Janeiro: Elsevier, 2006.
* PRESSMAN, Roger S.; MAXIM, Bruce R. **Engenharia de Software: uma abordagem profissional**. 8. ed. Porto Alegre: AMGH, 2016.
* SOMMERVILLE, Ian. **Engenharia de Software**. 9. ed. São Paulo: Addison-Wesley, 2011.

