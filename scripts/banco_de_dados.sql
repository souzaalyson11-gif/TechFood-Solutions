-- PROJETO INTEGRADO: TECHFOOD-SOLUTIONS
-- ARTEFATO TÉCNICO: SCRIPT DE MODELAGEM E CONSULTAS DE BANCO DE DADOS (SQL)

-- 1. CRIAÇÃO DAS TABELAS (DDL)

-- Tabela de Usuários/Clientes
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipo_usuario VARCHAR(20) DEFAULT 'cliente', -- cliente, administrador
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Controle de Estoque de Insumos
CREATE TABLE estoque (
    id SERIAL PRIMARY KEY,
    nome_insumo VARCHAR(100) NOT NULL,
    quantidade_disponivel DECIMAL(10,2) NOT NULL,
    quantidade_minima DECIMAL(10,2) NOT NULL,
    unidade_medida VARCHAR(10) NOT NULL -- kg, un, litros
);

-- Tabela de Produtos/Cardápio
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    insumo_id INT REFERENCES estoque(id),
    quantidade_insumo_por_prato DECIMAL(10,2) NOT NULL
);

-- Tabela de Pedidos
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuarios(id),
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Recebido', -- Recebido, Em Preparo, Saiu para Entrega, Entregue
    valor_total DECIMAL(10,2) NOT NULL
);

-- 2. POPULAÇÃO INICIAL DE TESTE (DML)

INSERT INTO estoque (nome_insumo, quantidade_disponivel, quantity_minima, unidade_medida) VALUES
('Carne de Hambúrguer', 50.00, 10.00, 'un'),
('Pão de Hambúrguer', 60.00, 12.00, 'un'),
('Queijo Prato', 5.00, 1.00, 'kg');

INSERT INTO produtos (nome_produto, preco, insumo_id, quantidade_insumo_por_prato) VALUES
('Hambúrguer Clássico', 25.00, 1, 1.00),
('Cheeseburguer Duplo', 32.00, 1, 2.00);

INSERT INTO usuarios (nome, email, senha, tipo_usuario) VALUES
('Carlos Silva', 'carlos@email.com', 'senha123', 'cliente'),
('Gerente TechFood', 'gerente@techfood.com', 'admin321', 'administrador');

-- 3. SCRIPT DE SIMULAÇÃO DE LOG E REQUISITOS (Consultas Funcionais)

-- Consulta para o painel do cliente acompanhar o status do pedido
SELECT id, status, valor_total, data_pedido 
FROM pedidos 
WHERE usuario_id = 1;

-- Simulação de gatilho lógico: Verificação de itens abaixo do estoque mínimo (RF-03)
SELECT nome_insumo, quantidade_disponivel, quantidade_minima 
FROM estoque 
WHERE quantidade_disponivel <= quantidade_minima;
