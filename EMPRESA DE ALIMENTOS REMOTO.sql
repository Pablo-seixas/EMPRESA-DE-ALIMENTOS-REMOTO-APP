CREATE DATABASE IF NOT EXISTS empresa_de_alimentos;


-- Criação da tabela de produtos
CREATE TABLE IF NOT EXISTS produtos (
    ID INT PRIMARY KEY,
    Tipo_de_Comida VARCHAR(255),
    Prato VARCHAR(255),
    Preco FLOAT,
    Quantidade_em_Estoque INT,
    ID_Pai INT,
    FOREIGN KEY (ID_Pai) REFERENCES produtos(ID)
);

-- Criação da tabela de vendas e devoluções
CREATE TABLE IF NOT EXISTS vendas_devolucoes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Prato_ID INT,
    Data DATE,
    Lucro FLOAT,
    FOREIGN KEY (Prato_ID) REFERENCES produtos(ID)
);

-- Criação da tabela de projeção de lucro
CREATE TABLE IF NOT EXISTS projecao_lucro (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Prato_ID INT,
    Data DATE,
    Lucro FLOAT,
    FOREIGN KEY (Prato_ID) REFERENCES produtos(ID)
);

-- Criação da tabela de dados de preço
CREATE TABLE IF NOT EXISTS dados_preco (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Prato_ID INT,
    Data DATE,
    Preco FLOAT,
    Quantidade_Estoque INT,
    FOREIGN KEY (Prato_ID) REFERENCES produtos(ID)
);

-- Criação da tabela de cadastro de compras de mercadorias
CREATE TABLE IF NOT EXISTS compras_mercadorias (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Produto_ID INT,
    Data DATE,
    Quantidade INT,
    Valor_Total FLOAT,
    FOREIGN KEY (Produto_ID) REFERENCES produtos(ID)
);

-- Inserir dados de exemplo
INSERT INTO produtos (ID, Tipo_de_Comida, Prato, Preco, Quantidade_em_Estoque, ID_Pai)
VALUES
    (1, 'Categoria', 'Categoria Principal', NULL, NULL, NULL),
    (2, 'Hamburguer', 'Hamburguer Clássico', 60, 100, 1),
    (3, 'Hamburguer', 'Outro Hamburguer', 70, 80, 1),
    (4, 'Categoria', 'Outra Categoria', NULL, NULL, NULL),
    (5, 'Pizza', 'Pizza Margherita', 80, 50, 4),
    (6, 'Pizza', 'Outra Pizza', 90, 60, 4);


